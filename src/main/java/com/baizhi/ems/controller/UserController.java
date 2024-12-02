package com.baizhi.ems.controller;


import com.baizhi.ems.entity.User;
import com.baizhi.ems.service.UserService;
import com.baizhi.ems.utils.VerificationCodeUtil;
import jakarta.servlet.ServletOutputStream;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/register")
    public String register(User user, String captcha, HttpSession session){
        //1.判断验证码不正确
        if (!session.getAttribute("code").toString().equalsIgnoreCase(captcha)){
            //2.返回错误
            return "redirect:/ems/register.jsp";
        }else {
            //3.验证码正确
                //4.开始注册
            //5.保存User数据到数据库
            userService.saveUser(user);
            return "redirect:/ems/login.jsp";
        }
    }

    @PostMapping("/login")
    public String login(User user, String captcha, HttpSession session){
        //1.判断验证码不正确
        if (!session.getAttribute("code").equals(captcha)){
            //2.返回到login页面
            return "redirect:/ems/login.jsp";
        }else {
            //3.验证码正确
                //4.验证登录信息是否正确
            User selectUser = userService.login(user.getUsername(),user.getPassword());

            if (selectUser==null){
                //5.返回login页面
                return "redirect:/ems/login.jsp";
            } else {
                //return "redirect:/ems/emslist.jsp";
                session.setAttribute("user",user);
                return "redirect:/emp/findAll";
            }
        }
    }


    //生成验证码
    @GetMapping("/getImage")
    public void getImage(HttpSession session, HttpServletResponse response) throws IOException {
        // 生成code
        String captchaText = VerificationCodeUtil.createCaptchaImage(response);

        // 保存在session中
        session.setAttribute("code",captchaText);

    }
}
