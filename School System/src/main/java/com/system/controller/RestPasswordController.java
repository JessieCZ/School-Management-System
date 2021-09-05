package com.system.controller;

import com.system.exception.CustomException;
import com.system.po.Userlogin;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * Created by Jessie on 2021/7/6.
 */
@Controller
public class RestPasswordController {

    @Resource(name = "UserloginServiceImpl")
    private UserloginService UserloginService;

    // 本账户密码重置
    @RequestMapping(value = "/passwordRest", method = {RequestMethod.POST})
    public String passwordRest(String oldPassword, String password1) throws Exception {
        Subject subject = SecurityUtils.getSubject();
        String username = (String) subject.getPrincipal();

        Userlogin userlogin = UserloginService.findByName(username);

        if (!oldPassword.equals(userlogin.getPassword())) {
            throw new CustomException("Wrong old password.");
        } else {
            userlogin.setPassword(password1);
            UserloginService.updateByName(username, userlogin);
        }

        return "redirect:/logout";
    }

}
