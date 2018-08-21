package controller;

import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pojo.Users;
import service.UserService;

import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-16
 * Time: 下午9:16
 */
@Controller
@SessionAttributes("user")
public class IndexController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login")
    public ModelAndView Login(@RequestParam("username") String login, @RequestParam("password") String pass){
        ModelAndView mv = new ModelAndView();
        System.out.println(login);
        System.out.println(pass);
        Users user = userService.Login(login, pass);
        if(user != null){
            mv.addObject("user", user);
            mv.addObject("msg", "success");
        }else {
            mv.addObject("msg", "error");
        }


        mv.setView(new FastJsonJsonView());
        return mv;
    }



    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
