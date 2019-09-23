/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mail;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Long.max;
import static java.lang.Long.min;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.concurrent.ThreadLocalRandom;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sidibe
 */
@WebServlet(name = "ForgotPassword", urlPatterns = {"/ForgotPassword"})
public class ForgotPassword extends HttpServlet {

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

        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String key = request.getParameter("key");
        HttpSession session = request.getSession();
        int otp = ThreadLocalRandom.current().nextInt(100_00, 5000_00);

        String mess = "<html>\n"
                + "    <head>\n"
                + "    </head>\n"
                + "    <body>\n"
                + "        <h1 style='padding-bottom:25px'><img src='https://justcreative.com/wp-content/uploads/2019/05/fox-capital-logo.png' alt='chapdeals' style='float: left;height: 30px;width: 50px'/> <span style='float:right'><strong>Password assistance</strong></span></h1>\n<hr style='border-bottom: 1px solid #e91e63;'>"
                + "        <p>To authenticate, please use the following One Time Password (OTP):</p>\n"
                + "        <p><strong>"+otp+"</strong></p>\n"
                + "        <footer style='background: #e91e63;color:white;text-align:center'>\n"
                + "            Do not share this OTP with anyone.<br> Chapdeals takes your account security very seriously. Chapdeals Customer Service will never ask you to disclose or verify your Chapdeals password, OTP, credit card, or banking account number.<br> If you receive a suspicious email with a link to update your account information, do not click on the link—instead, report the email to Chapdeals for investigation.\n"
                + "        </footer>\n"
                + "    </body>\n"
                + "</html>\n"
                + "";

        String[] to = {email};
        //String[] me = {"sidibe011@gmail.com"};

        EmailSender.sendMail("sidibe011@gmail.com", "2x2-5=Abou", mess, to, "Chapdeals password assistance");
        request.setAttribute("otp", otp);
        session.setAttribute("email", email);
        session.setAttribute("username", username);
        session.setAttribute("dob", dob);
        session.setAttribute("phone", phone);
        session.setAttribute("address", address);
        session.setAttribute("key", key);
        request.getRequestDispatcher("AuthenticateOtp.jsp").forward(request, response);

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
