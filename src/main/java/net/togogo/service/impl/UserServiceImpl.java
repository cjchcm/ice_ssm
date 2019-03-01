package net.togogo.service.impl;


import net.togogo.bean.User;
import net.togogo.mapper.UserMapper;
import net.togogo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Objects;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private  UserMapper userMapper;

    @Override
    public boolean createUser(User user) {
        int count = userMapper.createUser(user);
        return count > 0;
    }

    @Override
    public boolean checkExist(String email) {
        User user = userMapper.checkExist(email);
        return Objects.nonNull(user);    }
    @Override
    public User login(User user) {
        User loginUser = userMapper.checkLogin(user);
        return loginUser;
    }
    @Override
    public boolean updateUserInfo(User user) {
        int count = userMapper.updateUserInfo(user);
        return count > 0;
    }
}
