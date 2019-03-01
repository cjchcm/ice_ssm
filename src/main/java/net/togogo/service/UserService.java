package net.togogo.service;

import net.togogo.bean.User;

public interface UserService {
    //判断用户是否注册成功
    boolean createUser (User user);

    //判断邮箱是否存在
    boolean checkExist (String email);
    //用户登录
    User login(User user);
    //修改用户信息
    boolean updateUserInfo(User user);
}
