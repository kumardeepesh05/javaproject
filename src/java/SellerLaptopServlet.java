/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mySqlConnection.javaconnect;

/**
 *
 * @author DEEPESH
 */
public class SellerLaptopServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        Connection conn = javaconnect.connecrDb();
        HttpSession hs = request.getSession();
        String username = (String) hs.getAttribute("username");
        if (username != null) {
            try {

                String brand = request.getParameter("brand");
                String model = request.getParameter("model");
                String price = request.getParameter("price");
                String processor = request.getParameter("processor");
                String prospeed = request.getParameter("prospeed");
                String hdd = request.getParameter("hdd");
                String ram = request.getParameter("ram");
                String scrsize = request.getParameter("scrsize");
                String display = request.getParameter("display");
                String os = request.getParameter("os");
                String weight = request.getParameter("weight");
                String warranty = request.getParameter("warranty");
                String hddmbgb = request.getParameter("intmemmbgb");
                String rammbgb = request.getParameter("rammbgb");
                String feature = request.getParameter("feature");
                //Part photopart = request.getPart("photo");
                //InputStream is = photopart.getInputStream(); 
                //out.print(photopart);
                String queryInsert = "insert into selllaptop(brand, model, price, image, processor, prospeed, hdd, ram, screensize, displayreso, os, weight, warranty, addfeature, username) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pst = conn.prepareStatement(queryInsert);
                pst.setString(1, brand);
                pst.setString(2, model);
                pst.setString(3, price);
                pst.setString(4, "img/no.jpg");
                pst.setString(5, processor);
                pst.setString(6, prospeed);
                pst.setString(7, hdd + " " + hddmbgb);
                pst.setString(8, ram + " " + rammbgb);
                pst.setString(9, scrsize);
                pst.setString(10, display);
                pst.setString(11, os);
                pst.setString(12, weight);
                pst.setString(13, warranty);
                pst.setString(14, feature);
                pst.setString(15, username);
                int s = pst.executeUpdate();
                hs.setAttribute("username", username);
                if (s > 0) {
                    response.sendRedirect("WelcomeLaptop.jsp");
                } else {
                    response.sendRedirect("SellerLaptop.jsp");
                }
            } catch (Exception e) {
                out.print("please fil your information correctly" + e);
            } finally {
                out.close();
            }
        } else {
            response.sendRedirect("SellerLaptop.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
