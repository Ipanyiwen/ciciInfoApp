package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-21
 * Time: 下午5:23
 */

@Controller
public class PostController {

    @RequestMapping("/search")
    public ModelAndView search(@RequestParam("word") String word){
        ModelAndView mv = new ModelAndView();
        System.out.println(word);
        mv.setViewName("page");

        mv.addObject("msg", "msg");
        return mv;
    }

    @RequestMapping("/posts")
    public ModelAndView posts(){
        ModelAndView mv = new ModelAndView();

        return mv;
    }

    @RequestMapping("/hotposts")
    public ModelAndView hotposts(){
        ModelAndView mv = new ModelAndView();

        return mv;
    }

    @RequestMapping("/lastposts")
    public ModelAndView lastposts(){
        ModelAndView mv = new ModelAndView();

        return mv;
    }

}
