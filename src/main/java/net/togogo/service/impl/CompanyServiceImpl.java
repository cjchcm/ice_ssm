package net.togogo.service.impl;

import net.togogo.bean.Company;
import net.togogo.mapper.CompanyMapper;
import net.togogo.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Objects;

@Service
public class CompanyServiceImpl implements CompanyService{
    @Autowired
    private CompanyMapper companyMapper;
    @Override
    public boolean createCompany(Company company) {
        int count = companyMapper.createCompany(company);
        return count > 0;
    }

    @Override
    public boolean checkExist(String email) {
        Company company = companyMapper.checkExist(email);
        return Objects.nonNull(company);    }
    @Override
    public Company login(Company company) {
        Company loginUser = companyMapper.checkLogin(company);
        return loginUser;
    }
}
