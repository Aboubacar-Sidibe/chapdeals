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
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

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

        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String password1 = request.getParameter("password1");
        Admin admin=null;
        if (password != null && !password.isEmpty()) {
             admin = adminDaoLocal.getLoginSession(new BigInteger(phone), password);
             System.out.println("admin1 is set" + "pwd is "+password);

        } else {
             admin = adminDaoLocal.getLoginSession(new BigInteger(phone), password1);
             System.out.println("admin2 is set");

        }

        if (admin != null) {
            HttpSession session = request.getSession();

            List<Category> categories = categoryDaoLocal.getAllCategories();
            Map<String, List<String>> m = new HashMap<>();
            categories.forEach((cat) -> {
                m.put(cat.getName(), cat.getSubcategories());
            });
            session.setAttribute("map", m);
            session.setAttribute("admin", admin);

            request.getRequestDispatcher("AdminPanel.jsp").forward(request, response);
        } else {
            request.setAttribute("status", "Mot de passe ou numero incorrecte");
            request.getRequestDispatcher("LoginCheck.jsp").forward(request, response);

        }

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
