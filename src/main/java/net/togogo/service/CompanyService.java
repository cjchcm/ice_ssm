package net.togogo.service;

import net.togogo.bean.Company;

public interface CompanyService {
    //判断公司是否注册成功
    boolean createCompany(Company company);

    //判断邮箱是否存在
    boolean checkExist (String email);
    //公司登录
    Company login(Company company);
}
