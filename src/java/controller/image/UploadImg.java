/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.image;

import dao.product.ProductDaoLocal;
import models.Product;
import dao.admin.AdminDaoLocal;
import models.Admin;
import dao.CategoryDaoLocal;
import models.Category;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author sidibe
 */
@WebServlet(name = "UploadImg", urlPatterns = {"/UploadImg"})
public class UploadImg extends HttpServlet {

    @Inject
    private ProductDaoLocal productDaoLocal;
    @Inject
    private CategoryDaoLocal categoryDaoLocal;
    @Inject
    private AdminDaoLocal adminDaoLocal;

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();

        String name = "";
        String price = "";
        String discount = "";
        String quantity = "";
        String description = "";
        String keywords = "";
        String category = "";
        String subcategory = "";
        String imgPath = "";

        File file;
        String fileName = "null";
        String filePath;

        int maxFileSize = 5000 * 1024;
        int maxMemSize = 5000 * 1024;
        //image will be uploaded here

        ///Users/sprinklr/NetBeansProjects/chapdeal/web/products/null/null001img1.jpg
        // Verify the content type
        String contentType = request.getContentType();

        if ((contentType.contains("multipart/form-data"))) {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            // maximum size that will be stored in memory
            factory.setSizeThreshold(maxMemSize);

            // Location to save data that is larger than maxMemSize.
            factory.setRepository(new File("/User"));

            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);

            // maximum file size to be uploaded.
            upload.setSizeMax(maxFileSize);

            try {
                // Parse the request to get file items.
                List<FileItem> fileItems = upload.parseRequest(request);

                request.getParameterNames();

                //Get form fields
                /**
                 * *************************************************************
                 * COMMENTS TO REMEMBE LATER sometimes checking is necessary to
                 * determine if the field is a formField or fileField But if you
                 * know which field @ which position then fine
                 * *************************************************************
                 */
                name = fileItems.get(0).getString();
                price = fileItems.get(1).getString();
                discount = fileItems.get(2).getString();
                quantity = fileItems.get(3).getString();
                description = fileItems.get(4).getString();
                keywords = fileItems.get(5).getString();

                String[] keywordsArr = keywords.split(";");
                List<String> keywordsList = new ArrayList<>();
                for (String keyword : keywordsArr) {
                    keywordsList.add(keyword);
                }

                category = fileItems.get(6).getString();
                subcategory = fileItems.get(7).getString();
                imgPath = "products" + File.separator + category + File.separator + subcategory;

                //Getting owner -> Admin
                Admin admin = adminDaoLocal.getAdmin(new BigInteger("8971327077"));
                Category c = categoryDaoLocal.getCategory(category);

                Product product = new Product();
                product.setName(name);
                product.setPrice(new BigInteger(price));
                product.setDiscount(Short.parseShort(discount));
                product.setQuantity(Integer.parseInt(quantity));
                product.setDescription(description);
                product.setKeywords(keywordsList);
                product.setImg(imgPath);
                product.setCategory(c);
                product.setSubCategory(subcategory);
                product.setOwner(admin);

                productDaoLocal.addProduct(product);
                //print on console for just checking purpose can be removed
                out.println("name: " + name);
                out.println("price: " + price);
                out.println("discount: " + discount);
                out.println("quantity: " + quantity);
                out.println("description: " + description);
                out.println("keyword: " + keywordsList);
                out.println("imgPath: " + imgPath);
                out.println("category: " + category);
                out.println("subcat: " + subcategory);
                //out.println("phone" + phone);

                //making the upload file
                filePath = getServletContext().getRealPath("products").replaceAll("/build", "").concat("/") + category + File.separator + subcategory + File.separator;

                // Process the uploaded file items
                Iterator i = fileItems.iterator();

                while (i.hasNext()) {

                    FileItem fi = (FileItem) i.next();
                    if (!fi.isFormField()) {
                        // Get the uploaded file parameters
                        String fieldName = fi.getFieldName();
                        fileName = fi.getName();
                        //the file name the emp_id + actual filename
                        //fileName = request.getParameter("action") + fileName;
                        boolean isInMemory = fi.isInMemory();
                        long sizeInBytes = fi.getSize();

                        // Write the file
                        if (fileName.lastIndexOf("\\") >= 0) {
                            file = new File(filePath
                                    + fileName.substring(fileName.lastIndexOf("\\")));
                        } else {
                            file = new File(filePath
                                    + fileName.substring(fileName.lastIndexOf("\\") + 1));
                        }
                        fi.write(file);
                        out.println("Uploaded Filename: " + filePath
                                + fileName + "<br>");

                    }

                }

                
                List<Category> categories = categoryDaoLocal.getAllCategories();
                Map<String, List<String>> m = new HashMap<>();
                categories.forEach((cat) -> { //using lambda to implements Consuser<T> functional interface
                    m.put(cat.getName(), cat.getSubcategories());
                });
                 HttpSession session = request.getSession();
                 session.setAttribute("map", m);
                 request.setAttribute("map", m);
                 request.getRequestDispatcher("AdminPanel.jsp").forward(request, response);
               // pw.write("successfully uploaded 🤗🤗🤗");

            } catch (Exception ex) {
                pw.write("invalid");
                throw new Exception(ex);

            }
        } else {
            pw.write("invalid");
            out.println("not multipart");
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(UploadImg.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(UploadImg.class.getName()).log(Level.SEVERE, null, ex);
        }
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
