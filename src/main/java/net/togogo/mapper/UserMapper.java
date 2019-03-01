package net.togogo.mapper;

import net.togogo.bean.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    //注册普通用户
    int createUser (User user);

    //判断邮箱是否存在
    User checkExist(String email);
    //普通用户登录
    User checkLogin(User user);
    //修改用户信息
    int updateUserInfo(User user);
}
