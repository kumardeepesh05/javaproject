package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Calendar;
import java.util.GregorianCalendar;

public final class Main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>My project-Main</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"icon\" type=\"image/jpg\" href=\"img/link.jpg\"/>\n");
      out.write("        <link type=\"text/css\" rel=\"stylesheet\" href=\"css/style.css\"></link>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/script.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" language=\"javascript\">\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            hs = request.getSession();
            username = (String) hs.getAttribute("username");
        
      out.write("\n");
      out.write("\n");
      out.write("        <form action=\"\">            \n");
      out.write("            <center>\n");
      out.write("                <marquee>\n");
      out.write("                    <p id=\"flash\">Product Comparison of Cars, Laptops and Mobiles. You can sell your Cars, Mobiles, and Laptops.</p>\n");
      out.write("                </marquee>\n");
      out.write("                <div id=\"headerDivMain\">\n");
      out.write("                    <h1 id=\"heading\">Produ<span style=\"color:white\">ct Comp</span><span style=\"color: limegreen\">arison</span></h1>\n");
      out.write("                    <hr style=\"margin-top: -15px;\"/>\n");
      out.write("                    ");
 if (username != null) {
      out.write("                    \n");
      out.write("                    <label id=\"label1\">Welcome &nbsp;");
      out.print(username);
      out.write("</label>\n");
      out.write("                    <a href=\"Login.jsp\" id=\"a3\">Logout</a>\n");
      out.write("                    ");
 } else {
      out.write("         \n");
      out.write("                    <a href=\"Register.jsp\" id=\"a3\" >Signup</a>\n");
      out.write("                    <a href=\"Login.jsp\" id=\"a3\" s>Login</a>\n");
      out.write("                    ");
 }
      out.write("\n");
      out.write("                </div>                \n");
      out.write("                <div id=\"something\">\n");
      out.write("                    <div id=\"divMain\">\n");
      out.write("                        <a href=\"Car.jsp\"><img style=\"padding: 20px\" src=\"img/img4.jpg\"/></a><br/><br/>\n");
      out.write("                        <a href=\"Welcome.jsp\">More About Cars</a>\n");
      out.write("                    </div> \n");
      out.write("                    <div id=\"divMain\">\n");
      out.write("                        <a href=\"Mobile.jsp\"><img style=\"padding: 20px\" src=\"img/mobile.jpg\"/></a><br/><br/>\n");
      out.write("                        <a href=\"WelcomeMobile.jsp\">More About Mobiles</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"divMain\">\n");
      out.write("                        <a href=\"Laptop.jsp\"><img style=\"padding: 20px\" src=\"img/laptops.png\"/></a><br/><br/>\n");
      out.write("                        <a href=\"WelcomeLaptop.jsp\">More About Laptops</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div id=\"footerDivMain\">\n");
      out.write("                    <br/><br/><br/>                    \n");
      out.write("                    Copyright © 2014 . Deepesh Kumar  - All Rights Reserved \n");
      out.write("                </div>\n");
      out.write("            </center>\n");
      out.write("        </form>\n");
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
