<%-- 
    Document   : Welcome
    Created on : Jul 1, 2014, 9:30:02 PM
    Author     : DEEPESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My Project-Welcome</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/jpg" href="img/link.jpg"/>
        <link type="text/css" rel="stylesheet" href="css/style.css"></link>
        <script type="text/javascript" language="javascript">
            function DisableBackButton() {
                window.history.forward();

            }
            DisableBackButton();
            window.onload = DisableBackButton;
            window.onpageshow = function(evt) {
                if (evt.persisted)
                    DisableBackButton();
            };
            window.onunload = function() {
                void (0);
            }
        </script>
    </head>
    <body>
        <%! String username;
            HttpSession hs;
        %>
        <%  hs = request.getSession();
            username = (String) hs.getAttribute("username");
            
        %>
        <form action="">
            <center>
                <div id="header">
                    <a href="Main.jsp"><img src="img/mobile-header.jpg" id="img4"/></a>   
                </div>         
                <br/><marquee>
                    <p id="flash">Product Comparison of Cars, Laptops and Mobiles. You can sell your Cars, Mobiles, and Laptops.</p>
                </marquee>
                <% if (username != null) {%>
                <div class="inner-header" id="inner">
                    <ul id="ul1">
                        <li id="li1" style="margin-left: -60px;"><a id="a1" href="WelcomeMobile.jsp">Home</a></li>
                        <li id="li1"><a id="a1" href="CompareMobile.jsp">Compare</a></li>
                        <li id="li1"><a id="a1" href="SellerMobile.jsp">Sell</a></li>
                        <li id="li1"><a id="a1" href="PurchaseMobile.jsp">Purchase</a></li>
                        <li id="li1"><a id="a1" href="ContactMobile.jsp">Contact</a></li>
                        <li id="li1"><a id="a1" href="FeedbackMobile.jsp">Feedback</a></li>
                        <li id="li1"><a id="a1" href="Login.jsp">LogOut</a></li>
                    </ul>
                </div>
                <% } else {%>
                <div class="inner-header" id="inner">
                    <ul id="ul1">
                        <li id="li1"><a id="a1" href="WelcomeMobile.jsp">Home</a></li>
                        <li id="li1"><a id="a1" href="CompareMobile.jsp">Compare</a></li>
                        <li id="li1"><a id="a1" href="SellerMobile.jsp">Sell</a></li>
                        <li id="li1"><a id="a1" href="PurchaseMobile.jsp">Purchase</a></li>
                        <li id="li1"><a id="a1" href="ContactMobile.jsp">Contact</a></li>
                        <li id="li1"><a id="a1" href="FeedbackMobile.jsp">Feedback</a></li>                        
                    </ul>
                </div>
                <% }%>
                <div class="inner-middle" id="inner">
                    <img id="img2" src="img/mobile1.jpg"/>
                </div>
            </center>
        </form>
        <%
            hs.setAttribute("username", username);
        %>
    </body>
</html>
