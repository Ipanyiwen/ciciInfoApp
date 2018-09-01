package service;

import com.github.pagehelper.PageInfo;
import pojo.Posts;
import pojo.Users;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-26
 * Time: 下午3:11
 */
public interface PostService {

    public boolean addPost(Posts posts, long termID, String tags);

    public PageInfo<Posts> listPostsByUid(long uid, int start, int size);

    public PageInfo<Posts> listLastPosts(int start, int size);

    public PageInfo<Posts> searchPosts(String word, int start, int size);

    public PageInfo<Posts> listPosts(int start, int size);

    public PageInfo<Posts> listtagsPosts(long tid, int start, int size);

    public PageInfo<Posts> listHotPosts(int start, int size);

    public PageInfo<Posts> listPostsByPostType(int type, int start, int size);

    public PageInfo<Posts> listpostsByuidAndType(long uid, int type, int start, int size);

    public boolean addUserSource(int addsource, long uid, long nowSource);

    public Posts getPostById(long id);

    public boolean deletePost(long pid);

    public boolean updatePost(Posts posts, long termID, long oldType, List<String> addtags, List<String> removetags);

    public long[] getpostAndComments(long uid);
}
