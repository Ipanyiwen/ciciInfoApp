package service.impl;

import dao.CommentDao;
import dao.PostDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.Comments;
import service.CommentService;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-30
 * Time: 下午3:15
 */
@Service
public class CommentServiceImpl implements CommentService{

    @Autowired
    private CommentDao commentDao;
    @Autowired
    private PostDao postDao;

    @Override
    @Transactional
    public boolean saveComment(Comments comments) {
        try{
        commentDao.saveComments(comments);
        postDao.updatePostCommentNum(1, comments.getCommentPostId());
        }catch (Exception e){
            throw new RuntimeException("发布评论失败");
        }
        return true;
    }
}
