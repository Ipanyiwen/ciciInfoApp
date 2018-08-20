package service.impl;

import dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    @Override
    public Users getUserByID(long id) {
        return userDao.getUserByID(id);
    }
}
