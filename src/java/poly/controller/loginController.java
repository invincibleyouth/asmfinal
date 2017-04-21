/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import poly.entity.User;
import poly.login.LoginModel;

/**
 *
 * @author Khoa
 */
@Controller
@RequestMapping("/login")
public class loginController {

    @RequestMapping()
    public String show() {
        return "login";
    }    
   
    @RequestMapping(params = "btnLogin", method = RequestMethod.POST)
    public String check(HttpServletRequest request, ModelMap model, HttpSession session) {
        String user = request.getParameter("txtUser");
        String pass = request.getParameter("txtPass");
        LoginModel lgm = new LoginModel();
        boolean exit = lgm.checkLogin(user, pass);
        if (user.isEmpty() && pass.isEmpty()) {
            model.addAttribute("message", "Please insert information");
            return "login";
        } else if (user.equals("admin") && pass.equals("123")) {
            return "index";

        } else if (exit) {
            return "welcome";

        } else {
            model.addAttribute("message", "Wrong User");
            return "login";
        }
    }
}
