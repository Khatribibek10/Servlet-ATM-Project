/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.atmProject.servlet;

import com.atmProject.database.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author khatr
 */
public class indexLogicServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             String accno = request.getParameter("accno");
            String pinno = request.getParameter("pin");
            Connection  cn= DatabaseConnection.getConnection();
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from login");
            while (rs.next()) {
                String pinnumber = rs.getString("pinno");
                String cardno = rs.getString("cardno");
                if (pinno.isEmpty() || accno.isEmpty()) {
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.include(request, response);
                    System.out.println("false");
                    out.print("<h1>Please fill all the fields.</h1>");
                } else if (pinnumber.equals(pinno) && cardno.equals(accno)) {
                    RequestDispatcher rd = request.getRequestDispatcher("menu.jsp");
                    rd.include(request, response);
                    System.out.println("True");
                    out.print("<h1>Login Successfull</h1>");
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.include(request, response);
                    System.out.println("false");
                    out.print("<h1>Login Failed</h1>");
                }
            }
        }
    }

}
