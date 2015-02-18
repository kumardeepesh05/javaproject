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
public class SellerMobileServlet extends HttpServlet {

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
                String intmem = request.getParameter("intmem");
                String ram = request.getParameter("ram");
                String scrsize = request.getParameter("scrsize");
                String os = request.getParameter("os");
                String sim = request.getParameter("sim");
                String intmemmbgb = request.getParameter("intmemmbgb");
                String rammbgb = request.getParameter("rammbgb");
                String feature = request.getParameter("feature");
                //Part photopart = request.getPart("photo");
                //InputStream is = photopart.getInputStream(); 
                //out.print(photopart);
                String queryInsert = "insert into sellmobile(brand, model, price, image, processor, internalmemory, ram, screensize, os, sim, addfeature, username) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pst = conn.prepareStatement(queryInsert);
                pst.setString(1, brand);
                pst.setString(2, model);
                pst.setString(3, price);
                pst.setString(4, "img/no.jpg");
                pst.setString(5, processor);
                pst.setString(6, intmem + " " + intmemmbgb);
                pst.setString(7, ram + " " + rammbgb);
                pst.setString(8, scrsize);
                pst.setString(9, os);
                pst.setString(10, sim);
                pst.setString(11, feature);
                pst.setString(12, username);
                int s = pst.executeUpdate();
                hs.setAttribute("username", username);
                if (s > 0) {
                    response.sendRedirect("WelcomeMobile.jsp");
                } else {
                    response.sendRedirect("SellerMobile.jsp");
                }
            } catch (Exception e) {
                out.print("please fil your information correctly" + e);
            } finally {
                out.close();
            }
        } else {
            response.sendRedirect("SellerMobile.jsp");
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
