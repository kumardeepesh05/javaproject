<%-- 
    Document   : Seller
    Created on : Jul 1, 2014, 9:57:55 PM
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
        <form name="form1" onsubmit="return checkSeller();" action="SellerServlet" method="post">
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
                <div class="inner-middle" id="inner">
                    <br/><br/>
                    <table>
                        <tr>
                            <td><label class="label1" id="label">Brand<strong>*</strong></label></td>
                            <td><input type="text" name="brand"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Model<strong>*</strong></label></td>
                            <td><input type="text" name="model"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Price<strong>*</strong></label></td>
                            <td><input type="text" name="price"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Fuel<strong>*</strong></label></td>
                            <td>
                                <select id="select2" name="fuel">
                                    <option>---select---</option>
                                    <option>Diesel</option>
                                    <option>Petrol</option>
                                    <option>LPG</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td><label id="label">Image<span style="font-size: 10px; color: goldenrod"><br/>(100*100)</span></label></td>
                            <td><input type="file" name="photo"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Mileage<strong>*</strong><span style="font-size: 10px; color: goldenrod"><br/>(KMPL)</span></label></td>
                            <td><input type="text" name="mileage"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Fuel Capacity<strong>*</strong><span style="font-size: 10px; color: goldenrod"><br/>(Ltr)</span> </label></td>
                            <td><input type="text" name="fuelcap"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Seat Capacity<strong>*</strong></label></td>
                            <td><input type="text" name="seatcap"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Engine Description<strong>*</strong></label></td>
                            <td><input type="text" name="engine"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Max Power<strong>*</strong></label></td>
                            <td><input type="text" name="power"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Max Torque<strong>*</strong></label></td>
                            <td><input type="text" name="torque"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Additional Feature</label></td>
                            <td><input type="text" name="feature"></td>
                        </tr>
                    </table><br/>
                    <input id="button" type="submit" name="register" value="Add Car"/>                    
                </div> 
            </center>
        </form>
        <% if (username == null) {
            out.print("<script>alert('Please Go to Main Menu and Login First');</script>");            
            }
        %>
        <%
            hs.setAttribute("username", username);
        %>
    </body>
</html>
