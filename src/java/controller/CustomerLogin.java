/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Admin;
import models.Category;
import models.RealTimeCustomer;

/**
 *
 * @author sidibe
 */
@WebServlet(name = "CustomerLogin", urlPatterns = {"/CustomerLogin"})
public class CustomerLogin extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String username = request.getParameter("username");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        boolean mailchecked = Boolean.valueOf(request.getParameter("mailchecked"));
        boolean contactchecked = Boolean.valueOf(request.getParameter("contactchecked"));
        String key = request.getParameter("key");

        RealTimeCustomer customer = new RealTimeCustomer();
        customer.setPhone(phone);
        customer.setUsername(username);
        customer.setDob(dob);
        customer.setEmail(email);
        customer.setAddress(address);
        customer.setKey(key);
        customer.setPassword(password);
        customer.setEmailchecked(mailchecked);
        customer.setContactchecked(contactchecked);

        HttpSession session = request.getSession();
        session.setAttribute("customer", customer);
        request.getRequestDispatcher("saveForLater.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
