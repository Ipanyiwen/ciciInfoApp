package controller;

import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.Comments;
import pojo.Users;
import service.CommentService;

import java.lang.reflect.Method;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-30
 * Time: 上午11:24
 */

@Controller
public class CommentController{

    @Autowired
    private CommentService commentService;

    @RequestMapping("/submitComment")
    public ModelAndView comment(Comments comment, long uid){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        Users user = new Users();
        user.setID(uid);
        comment.setUser(user);
        comment.setCommentDate(new Timestamp(new Date().getTime()));
        comment.setCommentApproved(false);
        System.out.println(comment);
        boolean b = commentService.saveComment(comment);
        if(b){
            mv.addObject("msg", "评论成功， 提交审核中");
        }else {
            mv.addObject("msg", "评论失败。");
        }
        return mv;
    }
}
