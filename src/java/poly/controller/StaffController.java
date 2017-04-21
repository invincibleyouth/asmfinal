/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.jpa.internal.util.PersistenceUtilHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import poly.entity.Staff;

/**
 *
 * @author Khoa
 */
@Transactional
@Controller
@RequestMapping("/staff/")
public class StaffController {

    @Autowired
    SessionFactory factory;

    @RequestMapping("index")
    public String index(ModelMap model) {
        int soDau = 0;
        int soCuoi = 5;
        model.addAttribute("soDau", soDau);
        model.addAttribute("soCuoi", soCuoi);
        Session session = factory.getCurrentSession();
        String hql = "FROM Staff";
        Query query = session.createQuery(hql);
        query.setFirstResult(soDau);
        query.setMaxResults(soCuoi);
        List<Staff> list = query.list();
        model.addAttribute("staffs", list);
        return "staff/index";
    }

    @RequestMapping("btnLui")
    public String tang(ModelMap model, HttpServletRequest request) {
        String soDau = request.getParameter("txtso1");
        String soCuoi = request.getParameter("txtso2");
        int sDau = Integer.parseInt(soDau);
        int sCuoi = Integer.parseInt(soCuoi);
        sDau = sDau + 5;
        Session session = factory.getCurrentSession();
        String hql = "FROM Staff";
        Query query = session.createQuery(hql);
        query.setFirstResult(sDau);
        query.setMaxResults(sCuoi);
        List<Staff> list = query.list();
        model.addAttribute("staffs", list);
        model.addAttribute("soDau", sDau);
        model.addAttribute("soCuoi", sCuoi);
        return "staff/index";
    }

    @RequestMapping("btnTien")
    public String giam(ModelMap model, HttpServletRequest request) {
        String soDau = request.getParameter("txtSo1");
        String soCuoi = request.getParameter("txtSo2");
        int sDau = Integer.parseInt(soDau);
        int sCuoi = Integer.parseInt(soCuoi);
        sDau = sDau - 5;
        Session session = factory.getCurrentSession();
        String hql = "FROM Staff";
        Query query = session.createQuery(hql);
        query.setFirstResult(sDau);
        query.setMaxResults(sCuoi);
        List<Staff> list = query.list();
        model.addAttribute("staffs", list);
        model.addAttribute("soDau", sDau);
        model.addAttribute("soCuoi", sCuoi);
        return "staff/index";
    }

    @RequestMapping("report")
    public String report(ModelMap model) {
        Session session = factory.getCurrentSession();
//        String hql = "SELECT r.staff.id, "
//                + "SUM(case when r.type=1 then 1 else 0 end), "
//                + "SUM(case when r.type=0 then 1 else 0 end) "
//                + "FROM Record r "
//                + "GROUP BY r.staff.id";
        String hql = "SELECT r.staff.id, SUM(case when r.Type=1 then 1 else 0 end),SUM(case when r.Type=0 then 1 else 0 end) FROM Record r GROUP BY r.staff.id";
        Query query = session.createQuery(hql);
        List<Object[]> list = query.list();
        model.addAttribute("arrays", list);
        return "staff/report";
    }
}
