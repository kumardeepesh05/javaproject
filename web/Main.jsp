<%-- 
    Document   : Main
    Created on : Jul 2, 2014, 2:01:48 PM
    Author     : DEEPESH
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My project-Main</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/jpg" href="img/link.jpg"/>
        <link type="text/css" rel="stylesheet" href="css/style.css"></link>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" language="javascript">

        </script>
    </head>
    <body>
        <%! String username;
            HttpSession hs;
        %>
        <%
            hs = request.getSession();
            username = (String) hs.getAttribute("username");
        %>

        <form action="">            
            <center>
                <marquee>
                    <p id="flash">Product Comparison of Cars, Laptops and Mobiles. You can sell your Cars, Mobiles, and Laptops.</p>
                </marquee>
                <div id="headerDivMain">
                    <h1 id="heading">Produ<span style="color:white">ct Comp</span><span style="color: limegreen">arison</span></h1>
                    <hr style="margin-top: -15px;"/>
                    <% if (username != null) {%>                    
                    <label id="label1">Welcome &nbsp;<%=username%></label>
                    <a href="Login.jsp" id="a3">Logout</a>
                    <% } else {%>         
                    <a href="Register.jsp" id="a3" >Signup</a>
                    <a href="Login.jsp" id="a3" s>Login</a>
                    <% }%>
                </div>                
                <div id="something">
                    <div id="divMain">
                        <a href="Car.jsp"><img style="padding: 20px" src="img/img4.jpg"/></a><br/><br/>
                        <a href="Welcome.jsp">More About Cars</a>
                    </div> 
                    <div id="divMain">
                        <a href="Mobile.jsp"><img style="padding: 20px" src="img/mobile.jpg"/></a><br/><br/>
                        <a href="WelcomeMobile.jsp">More About Mobiles</a>
                    </div>
                    <div id="divMain">
                        <a href="Laptop.jsp"><img style="padding: 20px" src="img/laptops.png"/></a><br/><br/>
                        <a href="WelcomeLaptop.jsp">More About Laptops</a>
                    </div>
                </div>
                <div id="footerDivMain">
                    <br/><br/><br/>                    
                    Copyright © 2014 . Deepesh Kumar  - All Rights Reserved 
                </div>
            </center>
        </form>
        <%
            hs.setAttribute("username", username);
        %>
    </body>
</html>
