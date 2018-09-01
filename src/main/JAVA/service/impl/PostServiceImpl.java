package service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import dao.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.Posts;
import pojo.Terms;
import service.PostService;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-26
 * Time: 下午3:13
 */
@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private PostDao postDao;

    @Autowired
    private TermsDao termsDao;

    @Autowired
    private UserRankDao userRankDao;

    @Autowired
    private CommentDao commentDao;

    @Override
    @Transactional
    public boolean addPost(Posts post, long termID, String tags) {
        try {
            postDao.savePost(post);
            postDao.savePostRealation(post.getID(), termID);
            termsDao.updatePostNums(1, termID);
            tags = tags.trim();
            if (tags != null && !"".equals(tags)) {
                String[] lists = tags.split(",");
                for (String name : lists) {
                    Terms term = termsDao.getTagByName(name, post.getAuthor().getID());
                    if (term != null) {
                        termsDao.updatePostNums(1, term.getTermId());
                    } else {
                        term = new Terms();
                        term.setName(name);
                        term.setCount(1);
                        term.setSlug(name);
                        term.setTermType(post.getPostType());
                        term.setType(1);
                        termsDao.saveTerms(term);
                        System.out.println(term);
                        postDao.saveTagsRelation(term.getTermId(), post.getAuthor().getID());
                    }
                    postDao.savePostRealation(post.getID(), term.getTermId());
                }
            }

            ClassPathXmlApplicationContext app = new ClassPathXmlApplicationContext("applicationContext.xml");
            app.getBean(PostService.class).addUserSource(5, post.getAuthor().getID(), post.getAuthor().getUserRank().getSource());
        } catch (Exception e) {
            throw new RuntimeException("文章添加失败!");
        }
        return true;
    }

    @Override
    @Transactional
    public boolean addUserSource(int addsource, long uid, long nowSource) {
        try {
            String levelName = "";
            String Names[] = {"初出茅庐", "小有所成", "声名鹊起", "名声远扬", "业界传说"};
            long afterSource = nowSource + addsource;
            boolean flag = false;
            int nowlevel = (nowSource + "").length();
            int afterlevel = (afterSource + "").length();
            System.out.println(nowSource+", "+afterSource);
            if (nowlevel < afterlevel) {
                if (afterlevel > 5)
                    afterlevel = 5;
                levelName = Names[afterlevel - 1];
                flag = true;
            }
            userRankDao.addUserSource(addsource, uid);
            if (flag) {
                userRankDao.updateRankName(levelName, uid);
            }
        } catch (Exception e) {
            throw new RuntimeException("积分添加失败");
        }

        return true;
    }

    @Override
    public PageInfo<Posts> listPostsByUid(long uid, int start, int size) {
        PageHelper.startPage(start, size);
        PageHelper.orderBy("postModified desc");
        List<Posts> posts = postDao.listPostsByUid(uid);
        PageInfo<Posts> pageInfo = new PageInfo<Posts>(posts);
        return pageInfo;
    }

    @Override
    @Cacheable("listLastPosts")
    public PageInfo<Posts> listLastPosts(int start, int size) {
        PageHelper.startPage(start, size);
        PageHelper.orderBy("postDate desc");
        List<Posts> posts = postDao.listPostsByUid(-1);
        PageInfo<Posts> pageInfo = new PageInfo<Posts>(posts);
        return pageInfo;
    }

    @Override
    public PageInfo<Posts> searchPosts(String word, int start, int size) {
        PageHelper.startPage(start, size);
        PageHelper.orderBy("postDate desc");
        List<Posts> posts = postDao.listPostsBywords(word);
        PageInfo<Posts> pageInfo = new PageInfo<Posts>(posts);
        return pageInfo;
    }

    @Override
    public PageInfo<Posts> listPosts(int start, int size) {
        PageHelper.startPage(start, size);
        PageHelper.orderBy("postDate desc");
        List<Posts> posts = postDao.listPosts();
        PageInfo<Posts> pageInfo = new PageInfo<Posts>(posts);
        return pageInfo;
    }

    @Override
    public PageInfo<Posts> listtagsPosts(long tid, int start, int size) {
        PageHelper.startPage(start, size);
        PageHelper.orderBy("postDate desc");
        List<Posts> posts = postDao.listPostsBytid(tid);
        PageInfo<Posts> pageInfo = new PageInfo<>(posts);
        return pageInfo;
    }

    @Override
    @Cacheable("listHotPosts")
    public PageInfo<Posts> listHotPosts(int start, int size) {
        PageHelper.startPage(start, size);
        PageHelper.orderBy("commentCount desc");
        List<Posts> posts = postDao.listPostsByUid(-1);
        PageInfo<Posts> pageInfo = new PageInfo<Posts>(posts);
        return pageInfo;
    }

    @Override
    public PageInfo<Posts> listPostsByPostType(int type, int start, int size) {
        PageHelper.startPage(start, size);
        PageHelper.orderBy("postDate desc");
        List<Posts> posts = postDao.listPostsByPosttype(type);
        PageInfo<Posts> pageInfo = new PageInfo<Posts>(posts);
        return pageInfo;
    }

    @Override
    public PageInfo<Posts> listpostsByuidAndType(long uid, int type, int start, int size) {
        PageHelper.startPage(start, size);
        PageHelper.orderBy("postDate desc");
        List<Posts> posts = postDao.listpostsByuidAndType(uid, type);
        PageInfo<Posts> pageInfo = new PageInfo<Posts>(posts);
        return pageInfo;
    }

    @Override
    public Posts getPostById(long id) {
        return postDao.getPostById(id);
    }

    @Override
    @Transactional
    public boolean deletePost(long pid) {
        try {
            termsDao.updateTermsCount(pid);
            termsDao.deleteTermRealationByPid(pid);
            postDao.delPostsByPid(pid);
        } catch (Exception e) {
            throw new RuntimeException("删除文章失败!");
        }
        return true;
    }

    @Override
    @Transactional
    public boolean updatePost(Posts posts, long termID, long oldtype, List<String> addtags, List<String> removetags) {
        try {
            postDao.updatePost(posts);
        } catch (Exception e) {
            throw new RuntimeException("修改文章失败");
        }
        try {
            if (termID != oldtype) {
                postDao.delPostRelation(posts.getID(), oldtype);
                postDao.savePostRealation(posts.getID(), termID);
            }
        } catch (Exception e) {
            throw new RuntimeException("修改类别文章关系失败");
        }

        try {
            if (addtags != null && !addtags.isEmpty()) {
                for (String name : addtags) {
                    Terms term = termsDao.getTagByName(name, posts.getAuthor().getID());
                    if (term != null) {
                        termsDao.updatePostNums(1, term.getTermId());
                    } else {
                        term = new Terms();
                        term.setName(name);
                        term.setCount(1);
                        term.setSlug(name);
                        term.setTermType(posts.getPostType());
                        term.setType(1);
                        termsDao.saveTerms(term);
                        postDao.saveTagsRelation(term.getTermId(), posts.getAuthor().getID());
                    }
                    postDao.savePostRealation(posts.getID(), term.getTermId());
                }
            }
        } catch (Exception e) {
            throw new RuntimeException("添加标签失败");
        }

        try {
            if (removetags != null && !removetags.isEmpty()) {
                for (String name : removetags) {
                    Terms term = termsDao.getTagByName(name, posts.getAuthor().getID());
                    if (term != null) {
                        termsDao.updatePostNums(-1, term.getTermId());
                        postDao.removePostRealtion(posts.getID(), term.getTermId());
                    }
                }
            }
        } catch (Exception e) {
            throw new RuntimeException("删除标签失败");
        }

        return true;
    }

    @Override
    @Transactional
    public long[] getpostAndComments(long uid) {
        long[] nums = new long[2];
        long n1 = postDao.getPostNumsByUid(uid);
        nums[0] = n1;
        long cid = commentDao.getUserCommentsNum(uid);
        nums[1] = cid;
        return nums;
    }


}
