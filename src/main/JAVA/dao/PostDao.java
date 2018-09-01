package dao;

import org.apache.ibatis.annotations.Param;
import pojo.Posts;
import pojo.Users;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-24
 * Time: 上午11:02
 */
public interface PostDao {
    /**
     * 查询文章
     * @param id
     * @return
     */
    public Posts getPostById(long id);

    /**
     * 添加文章
     * @param post
     * @return
     */
    public boolean savePost(Posts post);

    /**
     * 添加文章与类别/标签的关系
     * @param pid
     * @param tid
     * @return
     */
    public boolean savePostRealation(@Param("pid") long pid, @Param("tid") long tid);

    /**
     * 删除文章标签关系
     * @param pid
     * @param tid
     * @return
     */
    public boolean removePostRealtion(@Param("pid") long pid, @Param("tid") long tid);

    /**
     * 添加标签与用户关系
     * @param tid
     * @param uid
     * @return
     */
    public boolean saveTagsRelation(@Param("tid") long tid, @Param("uid") long uid);

    /**
     * 修改文章
     * @param post
     * @return
     */
    public boolean updatePost(Posts post);


    /**
     * 通过用户id查询文章
     * @param uid
     * @return
     */
    public List<Posts> listPostsByUid(@Param("uid") long uid);

    /**
     * 查询所有文章
     * @return
     */
    public List<Posts> listPosts();

    /**
     * 通过tags查询文章
     * @param tid
     * @return
     */
    public List<Posts> listPostsBytid(@Param("tid") long tid);

    /**
     * 通过type查询文章 0博客, 2 资讯
     * @param type
     * @return
     */
    public List<Posts> listPostsByPosttype(@Param("type") int type);

    /**
     * 通过uid 查询用户的博客
     * @param uid
     * @return
     */
    public List<Posts> listpostsByuidAndType(@Param("uid") long uid, @Param("type") int type);

    /**
     * 通过pid 删除文章
     * @param pid
     * @return
     */
    public boolean delPostsByPid(@Param("pid") long pid);

    /**
     * 删除文章类别关系
     * @param pid
     * @return
     */
    public boolean delPostRelation(@Param("pid") long pid, @Param("tid") long tid);

    /**
     * 修改文章评论数目
     * @param num
     * @return
     */
    public boolean updatePostCommentNum(@Param("num") int num, @Param("pid") long pid);

    /**
     * 得到用户文章数
     * @return
     */
    public long getPostNumsByUid(long uid);

    /**
     * 根据word查询
     * @param word
     * @return
     */
    public List<Posts> listPostsBywords(@Param("word") String word);



}
