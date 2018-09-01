package service.impl;

import dao.UserDao;
import dao.UserRankDao;
import dao.UserRelationDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.UserRank;
import pojo.Users;
import service.UserService;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-17
 * Time: 下午11:55
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private UserRankDao userRankDao;

    @Autowired
    private UserRelationDao userRelationDao;

    @Override
    public Users getUserByID(long id) {
        return userDao.getUserByID(id);
    }

    @Override
    public boolean checkLogin(String login) {
        return userDao.getUserLogin(login);
    }

    @Override
    public Users login(String login, String pass) {
        return userDao.getUserByLoginAndPass(login, pass);
    }

    @Override
    @Transactional
    public boolean saveUser(Users user) {
        try {
            userDao.saveUser(user);
            UserRank userRank = new UserRank(user.getID());
            userRankDao.saveUserRank(userRank);
        } catch (Exception e) {
            throw new RuntimeException("添加用户失败");
        }
        return true;
    }

    @Override
    public boolean updateUserInfo(Users user) {
        return userDao.updateUser(user);
    }

    @Override
    public boolean updatePhoto(String photo, long id) {
        return userDao.updatePhoto(photo, id);
    }

    @Override
    public boolean updatePass(String Login, String oldPass, String newPass) {
        return userDao.updatePass(Login, oldPass, newPass);
    }

    @Override
    public boolean attention(long uid, long fid, boolean flag) {
        boolean re = false;
        System.out.println(uid+","+fid+","+flag);
        if(flag){
            re = userRelationDao.addRelation(uid, fid);
        }else {
            re = userRelationDao.removeRelation(uid, fid);
        }
        return re;
    }

}
