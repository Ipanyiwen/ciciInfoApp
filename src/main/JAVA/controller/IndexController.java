package controller;

import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.xmlbeans.soap.SOAPArrayType;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import pojo.Users;
import service.UserService;

import javax.servlet.http.HttpSession;
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

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/infopost")
    public String infopost(Model model, int type){
        model.addAttribute("type", type);

        return "infopost";
    }

    @RequestMapping("/write")
    public String write(HttpSession session){
        Object user = session.getAttribute("user");
        if(user == null){
            return "index";
        }
        return "write";
    }

    @RequestMapping("/usermsg")
    public String usermsg(HttpSession session) {
        Object user = session.getAttribute("user");
        if (user == null) {
            return "index";
        }
        return "users";
    }

    @RequestMapping("/tosearch")
    public String tosearch(){
        return "search";
    }

}
