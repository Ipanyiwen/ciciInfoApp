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

    public boolean getUserLogin(String login);

    public Users getUserByLoginAndPass(@Param("Login") String login, @Param("Pass") String pass);

    public boolean saveUser(Users user);

    public boolean updateUser(Users user);

    public boolean updatePhoto(@Param("photo") String photo, @Param("ID") long id);

    public boolean updatePass(@Param("userLogin") String Login, @Param("oldPass") String oldPass, @Param("newPass") String newPass);
}
