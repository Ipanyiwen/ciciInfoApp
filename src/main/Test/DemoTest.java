import dao.UserDao;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import pojo.Users;

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
        ClassPathXmlApplicationContext cxt = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserDao userDao = cxt.getBean(UserDao.class);
        Users user = userDao.getUserByID(1);
        System.out.println(user);

    }
}
