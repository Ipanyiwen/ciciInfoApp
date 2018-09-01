package controller;

import com.alibaba.fastjson.support.spring.FastJsonJsonView;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import pojo.Posts;
import pojo.Users;
import service.PostService;
import service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.sql.Timestamp;
import java.util.List;
import java.util.UUID;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-21
 * Time: 下午5:23
 */

@Controller
public class PostController {

    @Autowired
    private PostService postService;

    @Autowired
    private UserService userService;

    @RequestMapping("/indexpost")
    public ModelAndView indexpost(@RequestParam("start") int start, @RequestParam("size") int size){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        PageInfo<Posts> posts = postService.listPosts(start, size);

        mv.addObject("posts", posts);
        return mv;
    }

    @RequestMapping("/tagsposts")
    public ModelAndView posts(@RequestParam("tid") long tid, @RequestParam("start") int start, @RequestParam("size") int size){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        PageInfo<Posts> posts = postService.listtagsPosts(tid, start, size);
        mv.addObject("posts", posts);
        return mv;
    }

    @RequestMapping("/typeposts")
    public ModelAndView typeposts(@RequestParam("type") int type, @RequestParam("start") int start, @RequestParam("size") int size){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        PageInfo<Posts> posts = postService.listPostsByPostType(type, start, size);
        mv.addObject("posts", posts);
        return mv;
    }

    @RequestMapping("/ublogs")
    public ModelAndView yourblogs(@RequestParam("type") int type, @RequestParam("start") int start, @RequestParam("size") int size, @RequestParam("uid") long uid, HttpSession session){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        PageInfo<Posts> posts = postService.listpostsByuidAndType(uid, type, start, size);
        mv.addObject("posts", posts);
        return mv;
    }

    @RequestMapping("/hotposts")
    public ModelAndView hotposts(){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        PageInfo<Posts> posts = postService.listHotPosts(1, 10);
        mv.addObject("hotposts", posts.getList());

        return mv;
    }

    @RequestMapping("/lastposts")
    public ModelAndView lastposts(){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        PageInfo<Posts> posts = postService.listLastPosts(1, 5);
        mv.addObject("posts", posts.getList());
        return mv;
    }

    @RequestMapping("/search")
    public ModelAndView search(@RequestParam("word") String word, @RequestParam("start") int page, @RequestParam("size") int size){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        PageInfo<Posts> posts = postService.searchPosts(word, page, size);
        mv.addObject("posts", posts);
        return mv;
    }

    @RequestMapping("/getpostAndComments")
    public ModelAndView getpostAndComments(long uid){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        long[] longs = postService.getpostAndComments(uid);
        mv.addObject("postnum", longs[0]);
        mv.addObject("commentnum", longs[1]);
        return mv;
    }


    @RequestMapping("/addpost")
    public ModelAndView addPost(Posts posts,
                                @RequestParam("type") Long postType,
                                @RequestParam("mytags") String tags,
                                @RequestParam("picupload") MultipartFile file,
                                HttpServletRequest request, HttpSession session){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        Users user = (Users) session.getAttribute("user");
        if(user == null) throw new RuntimeException("用户不存在");
        String name = "default.png";
        // 文件不为空
        try{
        if(file != null && !file.isEmpty()) {
            // 文件存放路径
            String path = request.getServletContext().getRealPath("/image");
            // 文件名称
            String oname = file.getOriginalFilename();


            name = UUID.randomUUID().toString().replaceAll("-", "")+oname.substring(oname.lastIndexOf("."));
//            String name = String.valueOf(new Date().getTime() + "_" + file.getOriginalFilename());
            File destFile = new File(path, name);

            System.out.println(path);
            // 转存文件
            try {
                file.transferTo(destFile);
            } catch (IOException e) {
                throw new RuntimeException("文件存储失败!");
            }
        }
        }catch (Exception e){
            throw new RuntimeException("文件上传失败。");
        }


        Timestamp timestamp = new Timestamp(new Date().getTime());
        posts.setPostDate(timestamp);
        posts.setPostModified(timestamp);
        posts.setAuthor(user);
        posts.setPostStatus("publish");
        posts.setCommentStatus("open");
        posts.setPostPic("/image"+File.separator+name);
        posts.setCommentCount(0);
        System.out.println(posts);
        System.out.println(postType);
        System.out.println(tags);
        boolean b = postService.addPost(posts, postType, tags);
        System.out.println("asdasdasdasasdasd");
        if(b){
            mv.addObject("msg", "添加成功");
        }else {
            mv.addObject("msg", "添加失败");
        }

        return mv;
    }

    @RequestMapping("/delpost")
    public ModelAndView delpost(long pid){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        boolean b = postService.deletePost(pid);
        if(b){
            mv.addObject("msg", "删除成功");
        }else{
            mv.addObject("msg", "删除失败");
        }
        return mv;
    }

    @RequestMapping("/userposts")
    public ModelAndView userposts(long uid){
        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        PageInfo<Posts> posts = postService.listPostsByUid(uid, 1, 5);
        System.out.println(posts.getList().size());
        mv.addObject("posts", posts.getList());
        return  mv;
    }


    @RequestMapping("/post")
    public ModelAndView post(@RequestParam("pid") long pid){
        ModelAndView mv = new ModelAndView();

        Posts post = postService.getPostById(pid);
        mv.addObject("post", post);
        mv.setViewName("post");

        return mv;
    }

    @RequestMapping("/toUpdate")
    public ModelAndView toUpdate(@RequestParam("pid") long pid){
        ModelAndView mv = new ModelAndView();
        Posts post = postService.getPostById(pid);
        mv.addObject("post", post);
        mv.setViewName("updatePost");
        return mv;
    }

    @RequestMapping("/updatepost")
    public ModelAndView updatePost(Posts posts,
                                   @RequestParam("type") Long postType,
                                   @RequestParam("oldtype") Long oldType,
                                   @RequestParam("addtags") List<String> addtags,
                                   @RequestParam("removetags") List<String> removetags,
                                   @RequestParam("picupload") MultipartFile file,
                                   @RequestParam("pic") String pic,
                                   HttpServletRequest request, HttpSession session){

        ModelAndView mv = new ModelAndView();
        mv.setView(new FastJsonJsonView());
        Users user = (Users) session.getAttribute("user");
        if(user == null) throw new RuntimeException("用户不存在");

//        System.out.println(file.getOriginalFilename());
//        System.out.println(pic);
        // 文件不为空
        String name = pic.substring(pic.lastIndexOf("/")+1);
        if(file != null && !file.isEmpty()) {
            // 文件存放路径
            String path = request.getServletContext().getRealPath("/image");
            // 文件名称
            String oname = file.getOriginalFilename();
//            String name = String.valueOf(new Date().getTime() + "_" + file.getOriginalFilename());
            File destFile = new File(path, name);

            System.out.println(path);
            // 转存文件
            try {
                file.transferTo(destFile);
            } catch (IOException e) {
                throw new RuntimeException("文件存储失败!");
            }
        }

        Timestamp timestamp = new Timestamp(new Date().getTime());
        posts.setPostModified(timestamp);
        posts.setAuthor(user);
        posts.setPostStatus("publish");
        posts.setCommentStatus("open");
        posts.setPostPic("/image"+File.separator+name);
        posts.setCommentCount(0);
        boolean b = postService.updatePost(posts, postType, oldType, addtags, removetags);
        if(b){
            mv.addObject("msg", "更新成功");
        }else {
            mv.addObject("msg", "更新失败");
        }

        return mv;
    }



}
