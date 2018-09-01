import com.github.pagehelper.PageInfo;
import dao.PostDao;
import dao.TermsDao;
import dao.UserDao;
import dao.UserRankDao;
import javafx.scene.media.SubtitleTrack;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.dao.DataAccessException;
import org.springframework.data.redis.core.BoundValueOperations;
import org.springframework.data.redis.core.RedisOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.SessionCallback;
import org.springframework.data.redis.serializer.RedisSerializer;
import pojo.*;
import redis.clients.jedis.Jedis;
import service.PostService;
import service.TermService;
import service.UserService;
import sun.java2d.pipe.SpanIterator;

import java.sql.Timestamp;
import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-18
 * Time: 上午12:02
 */
public class DemoTest {
    @Test
    public void UserDaoTest(){
        ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
        PostService bean = ctx.getBean(PostService.class);
        PageInfo<Posts> info = bean.listHotPosts(1, 10);
        System.out.println(info.getList());



    }
}
