/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CategoryDaoLocal;
import dao.customer.CustomerDaoLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Customer;
import models.RealTimeCustomer;
//import models.Customer;

/**
 *
 * @author sprinklr
 */
@WebServlet(name = "CustomerController", urlPatterns = {"/CustomerController"})
public class CustomerController extends HttpServlet {

    /*
    @Inject
    private CustomerDaoLocal customerDaoLocal;
    @EJB
    private CustomerDaoLocal daoLocal;*/

    /**
     * /**
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
        /*
        Customer c = new Customer();
        c.setCity("Bangalore");
        c.setCountry("India");
        c.setCredit(0);
        c.setDob(new Date(1991,05,04));
        c.setEmail("sidibe011@gmail.com");
        c.setImg("sidibe.jpg");
        c.setPassword("11111000111Abc");
        c.setPhone(new BigInteger("9738357077"));
        c.setPin("560043");
        c.setState("Bangalore");
        c.setStreet("Kalkere");
        c.setUsername("sidibe");
        customerDaoLocal.addCustomer(c);
        request.setAttribute("result","cat and subcat created");
        request.getRequestDispatcher("Home.jsp").forward(request, response);*/

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String password = request.getParameter("password");    
        String key = request.getParameter("key");

        //DateTimeFormatter format = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        RealTimeCustomer customer = new RealTimeCustomer();
        customer.setUsername(username);
        customer.setEmail(email);
        customer.setDob(dob);
        customer.setAddress(address);
        customer.setPassword(password);
        customer.setPhone(phone);
        customer.setKey(key);
        
                
        
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
