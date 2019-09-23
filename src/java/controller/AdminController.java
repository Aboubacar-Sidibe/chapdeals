/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CategoryDaoLocal;
import dao.admin.AdminDaoLocal;
import java.io.IOException;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Admin;
import models.Category;

/**
 *
 * @author sidibe @sprinklr
 */
@WebServlet(name = "AdminController", urlPatterns = {"/AdminController"})
public class AdminController extends HttpServlet {

    @Inject
    private AdminDaoLocal adminDaoLocal;

    @Inject
    private CategoryDaoLocal categoryDaoLocal;
    
        


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

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String type = request.getParameter("type");
        String password = request.getParameter("password");
        String password1 = request.getParameter("password1");
        String realPass;

        if (!password.equalsIgnoreCase("")) {
            realPass = password;
        } else {
            realPass = password1;
        }

        Admin a = new Admin();
        a.setEmail(email);
        a.setImg(username + ".jpg");
        a.setPassword(realPass);
        a.setPhone(new BigInteger(phone));
        a.setType(type);
        a.setUsername(username);
        adminDaoLocal.addAdmin(a);
        /*
        HttpSession session = request.getSession();
        List<Category> categories = categoryDaoLocal.getAllCategories();
        Map<String,List<String>> m = new HashMap<>();
        categories.forEach((c) -> {
            m.put(c.getName(), c.getSubcategories());
        });
        session.setAttribute("admin", a);
        request.setAttribute("map", m);
        request.setAttribute("status", "Admin created successfully, Please uses same details to login");
        request.getRequestDispatcher("AdminPanel.jsp").forward(request, response);*/
        
        request.setAttribute("status", "Admin created successfully, Please use same details to login");
        request.getRequestDispatcher("LoginCheck.jsp").forward(request, response);
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
