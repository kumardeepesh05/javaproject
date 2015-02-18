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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mySqlConnection.javaconnect;

/**
 *
 * @author DEEPESH
 */
public class DisplayServlet extends HttpServlet {

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
        String carbrand1 = request.getParameter("carbrand1");
        String carbrand2 = request.getParameter("carbrand2");
        String carmodel1 = request.getParameter("carmodel1");
        String carmodel2 = request.getParameter("carmodel2");

        try {
            //out.print("welcome");

            Statement st = conn.createStatement();
            String querySelect = "select * from compare where (brand='" + carbrand1 + "' and  model='" + carmodel1 + "') or (brand='" + carbrand2 + "' and model='" + carmodel2 + "')";
            ResultSet rs = st.executeQuery(querySelect);
            out.print("<html><head><link type=\"text/css\" rel=\"stylesheet\" href=\"css/style.css\"></link></head><body id=\"body1\"><center>");
            out.print("<div class=\"inner-header\" id=\"inner\">");
            out.print("<ul id=\"ul1\">");
            if (username != null) {
                out.print("<li id=\"li1\" style=\"margin-left: -60px;\"><a id=\"a1\" href=\"Welcome.jsp\">Home</a></li>");
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Compare.jsp\">Compare</a></li>");
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Seller.jsp\">Sell</a></li>");
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Purchase.jsp\">Purchase</a></li>");
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Contact.jsp\">Contact</a></li>");
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Feedback.jsp\">Feedback</a></li>");
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Login.jsp\">LogOut</a></li>");
            } else {
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Welcome.jsp\">Home</a></li>");
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Compare.jsp\">Compare</a></li>");
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Seller.jsp\">Sell</a></li>");
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Purchase.jsp\">Purchase</a></li>");
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Contact.jsp\">Contact</a></li>");
                out.print("<li id=\"li1\"><a id=\"a1\" href=\"Feedback.jsp\">Feedback</a></li>");
            }
            out.print("</ul></div>");
            out.print("<table border=\"1\" id=\"table1\">");
            out.print("<thead><tr><th id=\"td1\">Image</th id=\"td1\"><th id=\"td1\">Brand</th><th id=\"td1\">Model</th><th id=\"td1\">Price</th><th id=\"td1\">Fuel</th><th id=\"td1\">Mileage(kmpl)</th><th id=\"td1\">Fuel Tank Capacity(litres)</th><th id=\"td1\">Seating Capacity</th><th id=\"td1\">Engine Description</th><th id=\"td1\">Maximum Power</th><th id=\"td1\">Maximum Torque</th><th id=\"td1\">Addtional Features</th></tr><thead>");
            out.print("<tbody>");
            while (rs.next()) {
                out.print("<tr><td id=\"td2\">");
                out.print("<img src=\"" + rs.getString(6) + "\"/>");
                out.print("</td><td id=\"td2\">");
                out.print(rs.getString(2));
                out.print("</td><td id=\"td2\">");
                out.print(rs.getString(3));
                out.print("</td><td id=\"td2\"><span style=\"color:green; font-weight:bold;\">");
                out.print(Double.parseDouble(rs.getString(4)));
                out.print("</span></td><td id=\"td2\">");
                out.print(rs.getString(5));
                out.print("</td><td id=\"td2\">");
                out.print(rs.getString(7));
                out.print("</td><td id=\"td2\">");
                out.print(rs.getString(8));
                out.print("</td><td id=\"td2\">");
                out.print(rs.getString(9));
                out.print("</td><td id=\"td2\">");
                out.print(rs.getString(10));
                out.print("</td><td id=\"td2\">");
                out.print(rs.getString(11));
                out.print("</td><td id=\"td2\">");
                out.print(rs.getString(12));
                out.print("</td><td id=\"td2\">");
                out.print(rs.getString(13));
                out.print("</td></tr>");
            }
            out.print("</tbody>");
            out.print("</table>");
            out.print("</center></body></html>");
            hs.setAttribute("username", username);
        } catch (Exception e) {
        } finally {
            out.close();
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
