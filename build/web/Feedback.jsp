<%-- 
    Document   : Feedback
    Created on : Jul 1, 2014, 9:54:56 PM
    Author     : DEEPESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/jpg" href="img/link.jpg"/>
        <link type="text/css" rel="stylesheet" href="css/style.css"></link>
        <script type="text/javascript" src="js/script.js"></script>
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
        <form name="formFeed" action="FeedbackServlet" onsubmit="return checkFeedback();" method="post">
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
                <div class="inner-middle" id="inner"><br/><br/><br/>
                    <table>
                        <tr>
                            <td><label id="label">Name<strong>*</strong></label></td>
                            <td><input type="text" name="name"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Email<strong>*</strong></label></td>
                            <td><input type="text" name="email"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Mobile<strong>*</strong></label></td>
                            <td><input type="text" name="mobile"></td>
                        </tr>
                        <tr>
                            <td><label id="label">City<strong>*</strong></label></td>
                            <td><input type="text" name="city"></td>
                        </tr>
                        <tr>
                            <td><label id="label">State<strong>*</strong></label></td>
                            <td><input type="text" name="state"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Comment<strong>*</strong></label></td>
                            <td>
                                <textarea name="comment" rows="4" cols="1" style="width: 150px;">
                                </textarea>
                            </td>
                        </tr>
                    </table><br/>
                    <input id="button" type="submit" name="register" value="Submit"/>                              
                </div>   
            </center>            
        </form>
        <%
            hs.setAttribute("username", username);
            hs.setAttribute("queryType", "car");
        %>
    </body>
</html>
