package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pojo.Users;
import service.UserService;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-16
 * Time: 下午9:16
 */
@Controller
public class IndexController {

    @Autowired
    private UserService userService;

    @RequestMapping("/getUser")
    public ModelAndView getBook(@RequestParam("id") long id){
        ModelAndView mv = new ModelAndView();
        Users user = userService.getUserByID(id);
        mv.addObject("user", user);
        mv.setViewName("users");
        System.out.println("asdddddddddddddddddddddd");
        return mv;
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }
}
