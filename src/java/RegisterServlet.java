/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.javamail;
import com.password;
import mySqlConnection.javaconnect;

/**
 *
 * @author DEEPESH
 */
@WebServlet(urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

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
        try {
            String name = request.getParameter("name");
            String fname = request.getParameter("fathersname");
            String uname = request.getParameter("username");
            String email = request.getParameter("email");
            String add = request.getParameter("address");
            String pcode = request.getParameter("pincode");
            String city = request.getParameter("city");
            String state = request.getParameter("state");
            String country = request.getParameter("country");
            String contact = request.getParameter("contact");

            Statement st = conn.createStatement();
            String querySelect = "select * from user where username='" + uname + "'";
            ResultSet rs = st.executeQuery(querySelect);
            if (!rs.next()) {
                Statement st1 = conn.createStatement();
                String pass = password.pass();
                String str = javamail.mail(email, pass, uname, name);
                System.out.println(str);
                String queryInsert = "insert into user values('" + name + "', '" + fname + "', '" + uname + "', '" + pass + "', '" + email + "', '" + add + "', '" + pcode + "', '" + city + "', '" + state + "', '" + country + "', '" + contact + "')";
                st1.executeUpdate(queryInsert);
                response.sendRedirect("Login.jsp");
            } else {
                //out.print("<script>alert('username is already exist');</script>");
                response.sendRedirect("Register.html");
            }
        } catch (Exception e) {
            out.print(e.toString());
            //out.print("please fil your information correctly");
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