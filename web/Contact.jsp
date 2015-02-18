<%-- 
    Document   : Contact.jsp
    Created on : Jul 1, 2014, 9:54:22 PM
    Author     : DEEPESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My Project-Contact</title>
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
        <form>
            <center>
                <div id="header">
                    <a href="Main.jsp"><img src="img/car-header.png" id="img4"/></a>
                </div>
                <br/><marquee>
                    <p id="flash">Product Comparison of Cars, Laptops and Mobiles. You can sell your Cars, Mobiles, and Laptops.</p>
                </marquee>
                <% if (username != null) {%>
                <div class="inner-header" id="inner">
                    <ul id="ul1">
                        <li id="li1" style="margin-left: -60px;"><a id="a1" href="Welcome.jsp">Home</a></li>
                        <li id="li1"><a id="a1" href="Compare.jsp">Compare</a></li>
                        <li id="li1"><a id="a1" href="Seller.jsp">Sell</a></li>
                        <li id="li1"><a id="a1" href="Purchase.jsp">Purchase</a></li>
                        <li id="li1"><a id="a1" href="Contact.jsp">Contact</a></li>
                        <li id="li1"><a id="a1" href="Feedback.jsp">Feedback</a></li>
                        <li id="li1"><a id="a1" href="Login.jsp">LogOut</a></li>
                    </ul>
                </div>
                <% } else {%>
                <div class="inner-header" id="inner">
                    <ul id="ul1">
                        <li id="li1"><a id="a1" href="Welcome.jsp">Home</a></li>
                        <li id="li1"><a id="a1" href="Compare.jsp">Compare</a></li>
                        <li id="li1"><a id="a1" href="Seller.jsp">Sell</a></li>
                        <li id="li1"><a id="a1" href="Purchase.jsp">Purchase</a></li>
                        <li id="li1"><a id="a1" href="Contact.jsp">Contact</a></li>
                        <li id="li1"><a id="a1" href="Feedback.jsp">Feedback</a></li>                        
                    </ul>
                </div>         
                <% }%>
                <div class="inner-middle" id="inner"><br/><br/><br/><br/><br/>
                    <div id="div8"><br/>
                        <table>
                            <tr>
                                <td id="td3">Name:</td>
                                <td id="td3">Deepesh Kumar</td>
                            </tr>
                            <tr>
                                <td id="td3">Email:</td>
                                <td id="td3">Kumardeepesh05@gmail.com</td>
                            </tr>
                            <tr>
                                <td id="td3">Contact No.:</td>
                                <td id="td3">9461024553</td>
                            </tr>
                            <tr>
                                <td id="td3">Address:</td>
                                <td id="td3">Apex Institute of Management and Science, V.T. Road, Jaipur</td>
                            </tr>
                        </table>
                    </div>                                  
                </div>
            </center>
        </form>
        <%
            hs.setAttribute("username", username);
        %>
    </body>
</html>
