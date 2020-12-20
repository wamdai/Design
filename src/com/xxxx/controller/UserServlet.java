package com.xxxx.controller;

import com.xxxx.model.Menu;
import com.xxxx.model.vo.MessageModel;
import com.xxxx.service.UserService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;


@WebServlet("/login")
public class UserServlet extends HttpServlet {

    // 实例化UserService对象
    private UserService userService = new UserService();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1. 接收客户端的请求（接收参数：姓名、密码,验证码）
        List<String>list_1=userService.getprovinces();
        request.getSession().setAttribute("provinces",list_1);
    }
}
