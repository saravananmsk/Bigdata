package com.udemy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import oracle.jdbc.driver.OracleDriver;

public class Create_ {
	/**
     * @param args
     */
    public static void main(String[] args) {
        // TODO Auto-generated method stub
 
     String Driver = "oracle.jdbc.OracleDriver";
        String url = "jdbc:oracle:thin:@localhost:1521:msk";
        String uName ="sara";
        String pwd = "sara";
        Connection conn=null;
 
        try {
            Class.forName(Driver).newInstance();
            conn = DriverManager.getConnection(url, uName, pwd);
            Statement stmt = conn.createStatement();
            String sql = "create table staff(name varchar(25),department varchar(5),subject_name varchar(25))";
            stmt.executeUpdate(sql);
            System.out.println("CreateTable sucessfully");
 
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        finally{
            try {
                conn.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
 
    
 
}
}