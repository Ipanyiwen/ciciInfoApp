package dao;

import org.apache.ibatis.annotations.Param;
import pojo.Comments;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-30
 * Time: 下午2:45
 */
public interface CommentDao {
    public boolean saveComments(Comments comments);

    public List<Comments> listCommentsByPid(@Param("pid") long pid);

    public long getUserCommentsNum(@Param("uid") long uid);
}
