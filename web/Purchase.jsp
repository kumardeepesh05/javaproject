<%-- 
    Document   : Purchase
    Created on : Jul 1, 2014, 9:56:48 PM
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
            };
        </script>
    </head>
    <body>
        <%! String username;
            HttpSession hs;
        %>
        <%  hs = request.getSession();
            username = (String) hs.getAttribute("username");

        %>
        <form action="PurchaseServlet" name="formPur" onsubmit="return checkPurchase();">
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
                    <div id="div6">
                        <h3 style="color: #FF0000">Click Button Given Below To Be Shown All Cars:</h3><hr/><br/>
                    <table>
                        <tr>
                            <td id="td1"><label id="label">Price Range<strong>*</strong></label></td>
                            <td>
                                <select class="select1" name="pricelist">
                                    <option>---select---</option>
                                    <option>below 1 lakh</option>
                                    <option>1-2 lakh</option>
                                    <option>2-3 lakh</option>
                                    <option>3-4 lakh</option>
                                    <option>4-8 lakh</option>
                                    <option>8-12 lakh</option>
                                    <option>12-20 lakh</option>
                                    <option>20-30 lakh</option>
                                    <option>above 30 lakh</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td id="td1"><label id="label">Fuel Type<strong>*</strong></label></td>
                            <td>
                                <select class="select1" name="fuellist">
                                    <option>---select---</option>
                                    <option>Diesel</option>
                                    <option>Petrol</option>
                                    <option>LPG</option>
                                    <option>CNG</option>
                                </select>
                            </td>
                        </tr>         
                    </table><br/><br/>
                    <input class="btn" id="button" type="submit" name="newcar" value="New Car"/>&nbsp;&nbsp;
                    <input class="btn" id="button" type="submit" name="oldcar" value="Old Car"/>
                    </div>                                                            
                </div>
            </center>
        </form>
        <%
            hs.setAttribute("username", username);
        %>
    </body>
</html>