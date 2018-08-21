package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-21
 * Time: 下午9:55
 */

@Controller
public class ItemController {

    @RequestMapping("/items")
    public ModelAndView items(){
        ModelAndView mv = new ModelAndView();

        return mv;
    }

}
