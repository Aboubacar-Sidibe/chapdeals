/*
 * Auteur : sidibe aboubacar 
 * 25/02/2019
 * Chapdeal
 */
package controller.category;

import dao.CategoryDaoLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Category;

/**
 *
 * @author sprinklr
 */
@WebServlet(name = "CategoryController", urlPatterns = {"/CategoryController"})
public class CategoryController extends HttpServlet {

    @Inject
    private CategoryDaoLocal categoryDaoLocal;
    @EJB
    private CategoryDaoLocal daoLocal;

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

        String category = request.getParameter("categorie");
        String subcategory = request.getParameter("souscategories");
        PrintWriter pw = response.getWriter();

        String[] subCatArr = subcategory.split(",");

        //creates category directory
        String path = getServletContext().getRealPath("products").replaceAll("/build", "").concat("/") + category;
        if (Files.notExists(Paths.get(path))) 
        {
            Files.createDirectories(Paths.get(path));//throws exception when file exists

        }
        
        /**--create category object--**/
        Category c = new Category();
        c.setName(category);
        
        /**--create an arrayList to hold all sub-category--**/
        List<String> subCatList = new ArrayList<>();
        for (String subcat : subCatArr)
        {
            subCatList.add(subcat);
            
        /**--create sub-directory for each sub-category--**/
            Files.createDirectories(Paths.get(path).resolve(subcat));

        }
        /**--Set all sub-catecory to list and prepare to write to DB--**/
        c.setSubcategories(subCatList);
        
        /**--write to DB--**/
        categoryDaoLocal.addCategory(c);

        
         pw.write( category + " et ses sous categories " + subcategory + " ont éte crées");

         

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
