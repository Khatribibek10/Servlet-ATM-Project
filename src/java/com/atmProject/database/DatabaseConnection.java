/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.atmProject.database;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author khatr
 */
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
public class DatabaseConnection {

    public static Connection getConnection() {
        Connection cn = null;
        String url;
        String con;
        try {
            if (cn == null) {
                url = "jdbc:mysql://localhost:3306/atm";
                con = "com.mysql.jdbc.Driver";
                Class.forName(con);
                cn = DriverManager.getConnection(url, "root", "");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return cn;
    }
//    public static void main(String []args){
//      Connection cn=  DatabaseConnection.getConnection();
//      // Now you can use this cn to do your CRUD operation.
//    }

}
