/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mySqlConnection.javaconnect;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DEEPESH
 */
@WebServlet(urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
            throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        Connection conn = javaconnect.connecrDb();

        try {
            String s = request.getParameter("name");
            String s1 = request.getParameter("pass");
            Statement st = conn.createStatement();
            if (request.getParameter("login") != null) {
                String querySelect = "select password from user where username='" + s + "'";
                ResultSet rs = st.executeQuery(querySelect);
                if (rs.next()) {
                    if (rs.getString(1).equals(s1)) {
                        HttpSession session = request.getSession();
                        session.setAttribute("username", s);
                        response.sendRedirect("Main.jsp");                        
                    } else {
                        //out.print("<script>alert('Please enter correct username and password');</script>");
                        response.sendRedirect("Login.jsp");
                    }
                } else {
                    //out.print("<script>alert('Please enter correct username and password');</script>");
                    response.sendRedirect("Login.jsp");
                }
            } else if (request.getParameter("signup") != null) {
                response.sendRedirect("Register.html");
            }
        } catch (Exception e) {
        } finally {
            try {
                out.close();
                conn.close();
            } catch (Exception e) {
            }
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