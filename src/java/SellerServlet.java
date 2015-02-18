/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileInputStream;
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
public class SellerServlet extends HttpServlet {

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
        //out.print(request.getParameter("photo"));
        //FileInputStream is = new FileInputStream(new File(request.getParameter("photo")));

        if (username != null) {
            try {
                String brand = request.getParameter("brand");
                String model = request.getParameter("model");
                String price = request.getParameter("price");
                String fuel = request.getParameter("fuel");
                String mileage = request.getParameter("mileage");
                String fuelCap = request.getParameter("fuelcap");
                String seatCap = request.getParameter("seatcap");
                String engine = request.getParameter("engine");
                String power = request.getParameter("power");
                String torque = request.getParameter("torque");
                String feature = request.getParameter("feature");
                //Part photopart = request.getPart("photo");
                //InputStream is = photopart.getInputStream(); 
                //out.print(photopart);
                String queryInsert = "insert into sell(brand, model, price, fuel, image, mileage, fueltank, seatcapacity, enginedes, maximumpower, maximumtorque, additionalfeature, username) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement pst = conn.prepareStatement(queryInsert);
                pst.setString(1, brand);
                pst.setString(2, model);
                pst.setString(3, price);
                pst.setString(4, fuel);
                pst.setString(5, "img/no.jpg");
                //pst.setBinaryStream(5, is);
                pst.setString(6, mileage);
                pst.setString(7, fuelCap);
                pst.setString(8, seatCap);
                pst.setString(9, engine);
                pst.setString(10, power);
                pst.setString(11, torque);
                pst.setString(12, feature);
                pst.setString(13, username);
                int s = pst.executeUpdate();
                hs.setAttribute("username", username);
                if (s > 0) {
                    response.sendRedirect("Welcome.jsp");
                } else {
                    response.sendRedirect("Seller.jsp");
                }
            } catch (Exception e) {
                out.print("please fil your information correctly" + e);
            } finally {
                out.close();
            }
        } else {
            response.sendRedirect("Seller.jsp");
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
