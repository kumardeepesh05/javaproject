package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Seller_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String username;
            HttpSession hs;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title></title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"icon\" type=\"image/jpg\" href=\"img/link.jpg\"/>\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/style.css\"></link>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/script.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("            function DisableBackButton() {\n");
      out.write("                window.history.forward();\n");
      out.write("            }\n");
      out.write("            DisableBackButton();\n");
      out.write("            window.onload = DisableBackButton;\n");
      out.write("            window.onpageshow = function(evt) {\n");
      out.write("                if (evt.persisted)\n");
      out.write("                    DisableBackButton();\n");
      out.write("            };\n");
      out.write("            window.onunload = function() {\n");
      out.write("                void (0);\n");
      out.write("            };\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
  hs = request.getSession();
            username = (String) hs.getAttribute("username");

        
      out.write("\n");
      out.write("        <form name=\"form1\" onsubmit=\"return checkSeller();\" action=\"SellerServlet\" method=\"post\">\n");
      out.write("            <center>\n");
      out.write("                <div id=\"header\">\n");
      out.write("                    <a href=\"Main.jsp\"><img src=\"img/car-header.png\" id=\"img4\"/></a>\n");
      out.write("                </div>\n");
      out.write("                <br/><marquee>\n");
      out.write("                    <p id=\"flash\">Product Comparison of Cars, Laptops and Mobiles. You can sell your Cars, Mobiles, and Laptops.</p>\n");
      out.write("                </marquee>\n");
      out.write("                ");
 if (username != null) {
      out.write("\n");
      out.write("                <div class=\"inner-header\" id=\"inner\">\n");
      out.write("                    <ul id=\"ul1\">\n");
      out.write("                        <li id=\"li1\" style=\"margin-left: -60px;\"><a id=\"a1\" href=\"Welcome.jsp\">Home</a></li>\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Compare.jsp\">Compare</a></li>\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Seller.jsp\">Sell</a></li>\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Purchase.jsp\">Purchase</a></li>\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Contact.jsp\">Contact</a></li>\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Feedback.jsp\">Feedback</a></li>\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Login.jsp\">LogOut</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                ");
 } else {
      out.write("\n");
      out.write("                <div class=\"inner-header\" id=\"inner\">\n");
      out.write("                    <ul id=\"ul1\">\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Welcome.jsp\">Home</a></li>\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Compare.jsp\">Compare</a></li>\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Seller.jsp\">Sell</a></li>\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Purchase.jsp\">Purchase</a></li>\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Contact.jsp\">Contact</a></li>\n");
      out.write("                        <li id=\"li1\"><a id=\"a1\" href=\"Feedback.jsp\">Feedback</a></li>                        \n");
      out.write("                    </ul>\n");
      out.write("                </div>         \n");
      out.write("                ");
 }
      out.write("\n");
      out.write("                <div class=\"inner-middle\" id=\"inner\">\n");
      out.write("                    <br/><br/>\n");
      out.write("                    <table>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label class=\"label1\" id=\"label\">Brand<strong>*</strong></label></td>\n");
      out.write("                            <td><input type=\"text\" name=\"brand\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id=\"label\">Model<strong>*</strong></label></td>\n");
      out.write("                            <td><input type=\"text\" name=\"model\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id=\"label\">Price<strong>*</strong></label></td>\n");
      out.write("                            <td><input type=\"text\" name=\"price\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id=\"label\">Fuel<strong>*</strong></label></td>\n");
      out.write("                            <td>\n");
      out.write("                                <select id=\"select2\" name=\"fuel\">\n");
      out.write("                                    <option>---select---</option>\n");
      out.write("                                    <option>Diesel</option>\n");
      out.write("                                    <option>Petrol</option>\n");
      out.write("                                    <option>LPG</option>\n");
      out.write("                                </select>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id=\"label\">Image<span style=\"font-size: 10px; color: goldenrod\"><br/>(100*100)</span></label></td>\n");
      out.write("                            <td><input type=\"file\" name=\"photo\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id=\"label\">Mileage<strong>*</strong><span style=\"font-size: 10px; color: goldenrod\"><br/>(KMPL)</span></label></td>\n");
      out.write("                            <td><input type=\"text\" name=\"mileage\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id=\"label\">Fuel Capacity<strong>*</strong><span style=\"font-size: 10px; color: goldenrod\"><br/>(Ltr)</span> </label></td>\n");
      out.write("                            <td><input type=\"text\" name=\"fuelcap\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id=\"label\">Seat Capacity<strong>*</strong></label></td>\n");
      out.write("                            <td><input type=\"text\" name=\"seatcap\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id=\"label\">Engine Description<strong>*</strong></label></td>\n");
      out.write("                            <td><input type=\"text\" name=\"engine\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id=\"label\">Max Power<strong>*</strong></label></td>\n");
      out.write("                            <td><input type=\"text\" name=\"power\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id=\"label\">Max Torque<strong>*</strong></label></td>\n");
      out.write("                            <td><input type=\"text\" name=\"torque\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id=\"label\">Additional Feature</label></td>\n");
      out.write("                            <td><input type=\"text\" name=\"feature\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table><br/>\n");
      out.write("                    <input id=\"button\" type=\"submit\" name=\"register\" value=\"Add Car\"/>                    \n");
      out.write("                </div> \n");
      out.write("            </center>\n");
      out.write("        </form>\n");
      out.write("        ");
 if (username == null) {
            out.print("<script>alert('Please Go to Main Menu and Login First');</script>");            
            }
        
      out.write("\n");
      out.write("        ");

            hs.setAttribute("username", username);
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
