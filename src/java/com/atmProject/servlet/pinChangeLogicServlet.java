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
public class pinChangeLogicServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String oldpinField = request.getParameter("oldpin");
            int oldPin = Integer.parseInt(oldpinField);
            String newpinField = request.getParameter("newpin");
            int newPin = Integer.parseInt(newpinField);
            Connection cn = DatabaseConnection.getConnection();
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from login");
            while (rs.next()) {
                String pinNumber = rs.getString("pinno");
                if (oldpinField.isEmpty() || newpinField.isEmpty()) {
                    RequestDispatcher rd = request.getRequestDispatcher("pinChange.jsp");
                    rd.include(request, response);
                   // System.out.prinln("false");
                    out.print("<h1>Please Fill All The Fields.</h1>");
                } else if (pinNumber.equals(oldpinField)) {
                    String pinChangeQuery = "update login set pinno = '" + newPin + "' where pinno = '" + oldPin + "'";
                    cn.prepareStatement(pinChangeQuery).execute();
                    RequestDispatcher rd = request.getRequestDispatcher("pinChange.jsp");
                    rd.include(request, response);
                    out.print("<h1>!!!Your pin is sucessfully changed!!!</h1>");
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("pinChange.jsp");
                    rd.include(request, response);
                    System.out.println("false");
                    out.print("<h1>Incorrect pin</h1>");
                }

            }
        }
    }

}
