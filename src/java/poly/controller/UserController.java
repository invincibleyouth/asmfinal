/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import poly.entity.User;

/**
 *
 * @author Khoa
 */
@Transactional
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    SessionFactory factory;

    @RequestMapping("/list")
    public String test(HttpSession session) {
        return "users/list";
    }

    @RequestMapping(params = "update", method = RequestMethod.POST)
    public String update(ModelMap model, @ModelAttribute("user") User user) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.update(user);
            t.commit();
            model.addAttribute("message", "Updated");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Failed update");
            return "redirect:user/edit.htm";
        } finally {
            session.close();
        }
        
        return "redirect:user/edit.htm";
    }

    @RequestMapping("/edit")
    public String edit(HttpServletRequest request, ModelMap model, @ModelAttribute("user") User user) {
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        user.setFullname(request.getParameter("fullname"));
        model.addAttribute(user);

        Session session = factory.getCurrentSession();
        String hql = "FROM User";
        Query query = session.createQuery(hql);
        List<User> list = query.list();
        model.addAttribute("users", list);
        return "users/insert";
    }


    @RequestMapping("/delete/{id}")
    public String delete(ModelMap model, @PathVariable("id") String id) {
        Session session = factory.getCurrentSession();
        User user = (User) session.get(User.class, id);
        session.delete(user);
        return "redirect:/user/edit.htm";
    }

    @RequestMapping(params = "insert", method = RequestMethod.POST)
    public String insert(ModelMap model, HttpSession ses, @ModelAttribute("user") User user) {
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        try {
            session.save(user);
            t.commit();
            model.addAttribute("message", "Thêm mới thành công !");
        } catch (Exception e) {
            t.rollback();
            model.addAttribute("message", "Thêm mới thất bại !");
            return "redirect:user/edit.htm";
        } finally {
            session.close();

        }
        return "redirect:user/edit.htm";
    }

}
