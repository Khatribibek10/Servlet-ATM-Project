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
public class withdrawLogicServlet extends HttpServlet {

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
            String pinField = request.getParameter("pin");
            int pinNum = Integer.parseInt(pinField);
            String amountField = request.getParameter("amount");
            int amount = Integer.parseInt(amountField);
            Connection cn = DatabaseConnection.getConnection();
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from login");
            while (rs.next()) {
                if (pinField.isEmpty() && amountField.isEmpty()) {
                    RequestDispatcher rd = request.getRequestDispatcher("withdraw.jsp");
                    rd.include(request, response);
                    System.out.println("True");
                    out.print("<h1>Please Fill all Fields</h1>");
                } else {
                    String updateQuery = "update login set Balance = Balance -'" + amount + "' where pinno = '" + pinNum + "'";
                    cn.prepareStatement(updateQuery).execute();
                    RequestDispatcher rd = request.getRequestDispatcher("withdraw.jsp");
                    rd.include(request, response);
                    System.out.println("True");
                    out.print("<h1>!!!You withdraw Rs: " + amount + ". Please collect your cash!!! </h1>");
                }
            }
        }
    }

}
