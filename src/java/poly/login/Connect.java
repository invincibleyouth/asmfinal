/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Khoa
 */
public class Connect {

    public Connect(){
        
    }
    public void connect() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://mssql42949-ps04370asm.jelastic.skali.net:1433;databaseName=PS04370_AssignmentGD2";
            Connection con = DriverManager.getConnection(url, "sa", "SZYstc90644");
            System.out.println("ok");
        } catch (Exception ex) {
            System.out.println("lỗi");
            ex.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Connect cn = new Connect();
        cn.connect();
    }

   
}
