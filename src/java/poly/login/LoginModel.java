/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Khoa
 */
public class LoginModel {
    public boolean checkLogin(String username, String password) {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://mssql42949-ps04370asm.jelastic.skali.net:1433;databaseName=PS04370_AssignmentGD2";
            Connection con = DriverManager.getConnection(url, "sa", "SZYstc90644");
            String sql = "select * from Users where Username = ? and Password = ?";
            ResultSet rs = null;
            PreparedStatement pst = null;
            pst = con.prepareStatement(sql);
            pst.setString(1, username);
            pst.setString(2, password);
            rs = pst.executeQuery();
            boolean exist = false;
            exist = rs.next();

            rs.close();
            pst.close();
            con.close();
            if (exist) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("loi "+e);
        }
        return false;
    }
 
}
