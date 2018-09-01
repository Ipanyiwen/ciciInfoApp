package controller;

import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import pojo.Users;
import service.UserService;
import util.Base64Util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;
import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-23
 * Time: 下午8:02
 */
@Controller
@SessionAttributes("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login")
    public ModelAndView Login(@RequestParam("username") String login, @RequestParam("password") String pass){
        ModelAndView mv = new ModelAndView();
        Users user = userService.login(login, pass);
        if(user != null){
            mv.addObject("user", user);
            mv.addObject("msg", "success");
        }else {
            mv.addObject("msg", "error");
        }

        mv.setView(new FastJsonJsonView());
        return mv;
    }

    @RequestMapping("/logout")
    public ModelAndView LogOut(@RequestParam("page") String page, SessionStatus sessionStatus){
        ModelAndView mv = new ModelAndView();
        sessionStatus.setComplete();
        mv.setViewName("redirect:"+page);
        return mv;
    }

    @RequestMapping("/register")
    public ModelAndView register(Users user){
        ModelAndView mv = new ModelAndView();
        user.setUserRegistered(new Timestamp(new Date().getTime()));
        System.out.println(user);
        boolean b = userService.saveUser(user);

        mv.setView(new FastJsonJsonView());
        if(b)
            mv.addObject("msg", "注册成功");
        else
            mv.addObject("msg", "注册失败");
        return mv;
    }


    @RequestMapping("/checkuid")
    @ResponseBody
    public String checkuid(String uid){
        if(userService.checkLogin(uid))
            return "ERROR";
        return "OK";
    }

    @RequestMapping("/checkPass")
    public ModelAndView checkPass(String Login, String oldPass){
        ModelAndView mv = new ModelAndView();
        Users user = userService.login(Login, oldPass);
        mv.setView(new FastJsonJsonView());
        if(user != null){
            mv.addObject("msg", "ok");
        }else {
            mv.addObject("msg", "error");
        }
        return mv;

    }

    @RequestMapping("/yourblog")
    public ModelAndView yourblog(@RequestParam("uid") Long uid, HttpSession session){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("yourblog");
        if(uid == null)
            mv.setViewName("index");
        Users user = userService.getUserByID(uid);
        mv.addObject("bloguser", user);
        return mv;
    }

    @RequestMapping("/updateUserInfo")
    public ModelAndView update(Users user, HttpSession session){
        ModelAndView mv = new ModelAndView();
        boolean b = userService.updateUserInfo(user);
        if(b) {
            Users user1 = (Users) session.getAttribute("user");
            user1.setUserNicename(user.getUserNicename());
            user1.setSignature(user.getSignature());
            user1.setUserEmail(user.getUserEmail());
            session.setAttribute("user", user1);
        }

        mv.setView(new FastJsonJsonView());
        mv.addObject("msg", b);

        return mv;
    }

    @RequestMapping("/changepasswd")
    public ModelAndView changePass(String Login, String oldPass, String newPass, SessionStatus sessionStatus){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        boolean b = userService.updatePass(Login, oldPass, newPass);
        System.out.println(b);
        if(b){
            sessionStatus.setComplete();
            mv.addObject("msg", "修改成功!");
        }else {
            mv.addObject("msg", "修改失败!");
        }
        return mv;
    }

    @RequestMapping("/uploadPhoto")
    public ModelAndView uploadPhoto(String data, HttpServletRequest request, HttpSession session){
        Users user = (Users) session.getAttribute("user");
        if(user == null) throw new RuntimeException("用户不存在");

        String path = request.getServletContext().getRealPath("/photo");

        // 文件名称
        String name = user.getID()+user.getUserLogin()+".png";

        Base64Util.GenerateImage(data, path+ File.separator + name);
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        String picdir = "/photo"+File.separator+name;
        boolean b = userService.updatePhoto(picdir, user.getID());
        if(b){
            mv.addObject("msg", "上传成功");
            user.setPic(picdir);
            mv.addObject("user", user);
        }else {
            mv.addObject("msg", "上传失败");
        }

        return mv;
    }

    @RequestMapping("/attention")
    public ModelAndView attention(@RequestParam("uid") long uid, @RequestParam("fid") long fid, @RequestParam("flag") boolean flag, HttpSession session){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        Users user = (Users) session.getAttribute("user");
        boolean attention = userService.attention(uid, fid, flag);
        if(attention){
            Users fuser = userService.getUserByID(fid);
            if(flag){
                user.getMyAttentions().add(fuser);
            }else {
                Iterator<Users> iterator = user.getMyAttentions().iterator();
                while (iterator.hasNext()) {
                    Users u = iterator.next();
                    if (fid == u.getID()) {
                        iterator.remove();//使用迭代器的删除方法删除
                        break;
                    }
                }
            }
            mv.addObject("user", user);
            mv.addObject("msg", "success");
        }else {
            mv.addObject("msg", "error");
        }
        return mv;
    }

}
