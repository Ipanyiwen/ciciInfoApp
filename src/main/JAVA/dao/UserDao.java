package dao;

import org.apache.ibatis.annotations.Param;
import pojo.Users;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-17
 * Time: 下午11:39
 */
public interface UserDao {

    public Users getUserByID(long id);

    public Users getUserByLoginAndPass(@Param("Login") String login, @Param("Pass") String pass);
}
