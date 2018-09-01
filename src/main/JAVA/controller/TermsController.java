package controller;

import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.Terms;
import service.TermService;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-21
 * Time: 下午9:55
 */

@Controller
public class TermsController {

    @Autowired
    private TermService termService;

    @RequestMapping("/terms")
    public ModelAndView terms(){
        ModelAndView mv = new ModelAndView();
        List<Terms> infoTerms = termService.getTermsByType(0);
        List<Terms> postTerms = termService.getTermsByType(2);
        List<List<Terms>> lists = new ArrayList<>();
        lists.add(infoTerms);
        lists.add(postTerms);

        mv.setView(new FastJsonJsonView());
        mv.addObject("lists", lists);
        return mv;
    }

    @RequestMapping("/userTags")
    public ModelAndView userTags(long uid){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        List<Terms> terms = termService.listTermsByUid(uid);
        mv.addObject("terms", terms);
        return mv;
    }

    @RequestMapping("/hotTags")
    public ModelAndView hotTags(){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        List<Terms> terms = termService.listHotTags();
        mv.addObject("terms", terms);
        return mv;
    }


    @RequestMapping("/tags")
    public ModelAndView tags(long tid){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("tagpost");
        Terms term = termService.getTermsNameByID(tid);
        System.out.println(term);
        mv.addObject("term", term);
        return mv;
    }

}
