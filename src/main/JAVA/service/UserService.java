package service;

import pojo.Users;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-17
 * Time: 下午11:55
 */
public interface UserService {
    public Users getUserByID(long id);

    public boolean checkLogin(String login);

    public Users login(String login, String pass);

    public boolean saveUser(Users user);

    public boolean updateUserInfo(Users user);

    public boolean updatePhoto(String photo, long id);

    public boolean updatePass(String Login, String oldPass, String newPass);

    public boolean attention(long uid, long fid, boolean flag);
}
