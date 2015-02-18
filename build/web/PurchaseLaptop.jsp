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
        <script type="text/javascript" src="js/script2.js"></script>
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
        <form action="PurchaseLaptopServlet" name="formPurLaptop" onsubmit="return checkPurchaseLaptop();">
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
                <div class="inner-middle" id="inner"><br/><br/><br/>
                    <div id="div6">
                        <h3 style="color: #FF0000">Click Button Given Below To Be Shown All Laptops:</h3><hr/><br/>
                        <table>
                            <tr>
                                <td id="td1"><label id="label">Price Range<strong>*</strong></label></td>
                                <td>
                                    <select class="select1" name="pricelaptop">
                                    <option>---select---</option>
                                    <option>below 10000</option>
                                    <option>10000-20000</option>
                                    <option>20000-30000</option>
                                    <option>30000-40000</option>
                                    <option>40000-50000</option>
                                    <option>50000-60000</option>
                                    <option>70000-80000</option>
                                    <option>80000-90000</option>
                                    <option>90000-100000</option>
                                    <option>above 100000</option>
                                </select>
                                </td>
                            </tr>                                  
                        </table><br/><br/><br/>
                        <input class="btn" id="button" type="submit" name="newlaptop" value="New Laptop"/>&nbsp;&nbsp;
                        <input class="btn" id="button" type="submit" name="oldlaptop" value="Old Laptop"/>
                    </div>                                                                   
                </div>
            </center>
        </form>
        <%
            hs.setAttribute("username", username);
        %>
    </body>
</html>