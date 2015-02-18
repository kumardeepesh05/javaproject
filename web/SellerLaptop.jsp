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
        <script type="text/javascript" src="js/script1.js"></script>
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
        <form name="formSellerLaptop" onsubmit="return checkSellerLaptop();" action="SellerLaptopServlet" method="post">
            <center>
                <div id="header">
                    <a href="Main.jsp"><img src="img/laptop-header.jpg" id="img4"/></a>
                </div>
                <br/><marquee>
                    <p id="flash">Product Comparison of Cars, Laptops and Mobiles. You can sell your Cars, Mobiles, and Laptops.</p>
                </marquee>
                <% if (username != null) {%>
                <div class="inner-header" id="inner">
                    <ul id="ul1">
                        <li id="li1" style="margin-left: -60px;"><a id="a1" href="WelcomeLaptop.jsp">Home</a></li>
                        <li id="li1"><a id="a1" href="CompareLaptop.jsp">Compare</a></li>
                        <li id="li1"><a id="a1" href="SellerLaptop.jsp">Sell</a></li>
                        <li id="li1"><a id="a1" href="PurchaseLaptop.jsp">Purchase</a></li>
                        <li id="li1"><a id="a1" href="ContactLaptop.jsp">Contact</a></li>
                        <li id="li1"><a id="a1" href="FeedbackLaptop.jsp">Feedback</a></li>
                        <li id="li1"><a id="a1" href="Login.jsp">LogOut</a></li>
                    </ul>
                </div>
                <% } else {%>
                <div class="inner-header" id="inner">
                    <ul id="ul1">
                        <li id="li1"><a id="a1" href="WelcomeLaptop.jsp">Home</a></li>
                        <li id="li1"><a id="a1" href="CompareLaptop.jsp">Compare</a></li>
                        <li id="li1"><a id="a1" href="SellerLaptop.jsp">Sell</a></li>
                        <li id="li1"><a id="a1" href="PurchaseLaptop.jsp">Purchase</a></li>
                        <li id="li1"><a id="a1" href="ContactLaptop.jsp">Contact</a></li>
                        <li id="li1"><a id="a1" href="FeedbackLaptop.jsp">Feedback</a></li>                        
                    </ul>
                </div>
                <% }%>
                <div class="inner-middle" id="inner" style="height:550px">
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
                            <td><label id="label">Image<span style="font-size: 10px; color: goldenrod"><br/>(100*100)</span></label></td>
                            <td><input type="file" name="photo"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Processor<strong>*</strong></label></td>
                            <td><input type="text" name="processor"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Processor Speed<strong>*</strong><span style="font-size: 10px; color: goldenrod"><br/>(GB)</span></label></td>
                            <td><input type="text" name="prospeed"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Hard Disk<strong>*</strong></label></td>
                            <td>
                                <input type="text" name="hdd">
                                <select id="select3" name="hddmbgb">
                                    <option>GB</option>
                                    <option>TB</option>
                                </select>
                            </td>                            
                        </tr>
                        <tr>
                            <td><label id="label">Ram<strong>*</strong></label></td>
                            <td>
                                <input type="text" name="ram">
                                <select id="select3" name="rammbgb">
                                    <option>MB</option>
                                    <option>GB</option>
                                </select>
                            </td>                            
                        </tr>
                        <tr>
                            <td><label id="label">Screen Size<strong>*</strong><span style="font-size: 10px; color: goldenrod">(inch)</span></label></td>
                            <td><input type="text" name="scrsize"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Display Resoulation<strong>*</strong></label></td>
                            <td><input type="text" name="display"></td>
                        </tr>
                        <tr>
                            <td><label id="label">OS<strong>*</strong></label></td>
                            <td><input type="text" name="os"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Weight<strong>*</strong></label></td>
                            <td><input type="text" name="weight"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Warranty<strong>*</strong></label></td>
                            <td><input type="text" name="warranty"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Additional Feature</label></td>
                            <td><input type="text" name="feature"></td>
                        </tr>
                    </table><br/>
                    <input id="button" type="submit" name="register" value="Add Laptop"/>                    
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
