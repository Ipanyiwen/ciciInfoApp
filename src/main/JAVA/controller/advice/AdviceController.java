package controller.advice;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-16
 * Time: 下午9:27
 */
@ControllerAdvice(basePackages = {"controller"})
public class AdviceController {

    //    参数处理规则
    @InitBinder
    public void initBinder(WebDataBinder binder){
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), false));
    }

//    @ModelAttribute
//    public void popluateModel(Model model){
//        model.addAttribute("myname", "panyiwen");
//    }

    @ExceptionHandler(Exception.class)
    public String exception(){
        return "index";
    }

}
