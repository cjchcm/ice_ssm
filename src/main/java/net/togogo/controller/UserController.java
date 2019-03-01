package net.togogo.controller;

import net.togogo.bean.Company;
import net.togogo.bean.User;
import net.togogo.service.CompanyService;
import net.togogo.service.UserService;
import net.togogo.utis.newMD5;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.security.NoSuchAlgorithmException;

@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private CompanyService companyService;
    @SuppressWarnings("deprecation")
    @RequestMapping("/register")
    @ResponseBody
    public String register(@RequestParam("email") String email,
                           @RequestParam("password")String password,
                           @RequestParam("username")String username,
                           @RequestParam("role")String role,
                           HttpSession session) throws NoSuchAlgorithmException {
        if (userService.checkExist(email)|| companyService.checkExist(email)){
            return "emailExist";
        }
        else if (role.equals("person")){
            String upassword = newMD5.generateCode(password);
            User user = new User(email,upassword,username);
            boolean rs = userService.createUser(user);
            if (rs)
                return "success";
            else
                return "fail";
        }
        else if (role.equals("company")){
            String upassword = newMD5.generateCode(password);
            Company company = new Company(email,upassword,username);
            boolean rs = companyService.createCompany(company);
            if (rs)
                return "success";
            else
                return "fail";
        }
        return "fail";
    }

    /*登录*/
    @RequestMapping("login")
    @ResponseBody
    public String login(@RequestParam("email") String email,
                        @RequestParam("password") String password,
                        @RequestParam("role") String role,
                        HttpSession session) throws NoSuchAlgorithmException {


        String upassword = newMD5.generateCode(password);

        if (role.equals("person")){
            User user = new User(email,upassword);
            User rsUser = userService.login(user);
            if (rsUser==null){
                return "no";
            }
            else {
                session.setAttribute("user",rsUser);
                session.setAttribute("role",role);
                //首页未完成，用户登录成功后不显示，所以在控制台打印其登录信息验证
                System.out.println("rsUser = " + rsUser);
                System.out.println("role = " + role);
                return "yes";
            }
        }else if (role.equals("company")){
            Company company = new Company(email,upassword);
            Company rsCompany = companyService.login(company);
            if (rsCompany==null){
                return "no";
            }else {
                session.setAttribute("user",rsCompany);
                session.setAttribute("role",role);
                System.out.println("rsCompany = " + rsCompany);
                System.out.println("role = " + role);
                return "yes";
            }
        }
        else {
            return "no";
        }
    }

    /*用户登录成功后  无法加载首页  所以重新设置临时首页*/
    @RequestMapping("index")
    public String success(){
        return "/success.html";
    }
    /**/
    @RequestMapping("accountInfo")
    public String accountInfo(){
        return "WEB-INF/person/account_info.jsp";
    }


    /*修改用户信息*/
    @RequestMapping("updateUserInfo")
    @ResponseBody
    public String updateUserInfo(@RequestParam("name") String name,
                                 @RequestParam("sex") String sex,
                                 @RequestParam("birthday") String birthday,
                                 @RequestParam("workDate") String workDate,
                                 @RequestParam("bornCity") String bornCity,
                                 @RequestParam("livingCity") String livingCity,
                                 @RequestParam("phone") String phone,
                                 HttpSession session){

        User user = (User) session.getAttribute("user");
        if (user==null){
            return "fail";
        }else {
            user.setUser_name(name);
            user.setUser_sex(sex);
            user.setUser_birthday(birthday);
            user.setUser_work_date(workDate);
            user.setUser_born_city(bornCity);
            user.setUser_living_city(livingCity);
            user.setUser_phone(phone);

            boolean rs = userService.updateUserInfo(user);
            if (rs){
                session.removeAttribute("user");
                session.setAttribute("user",user);
                return "success";
            }else
                return "fail";
        }
    }
}
