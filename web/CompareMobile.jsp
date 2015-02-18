<%-- 
    Document   : Compare
    Created on : Jul 1, 2014, 9:53:39 PM
    Author     : DEEPESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My Project-Comparison</title>
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
        <form name="formCompMobile" action="DisplayMobileServlet" onsubmit="return checkCompareMobile();">
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
                    <!--<img id="img2" src="img/car.jpg"/>-->
                    <img src="img/mobile2.jpg" id="img3"/><br/><br/>
                    <table>
                        <tr>
                            <td>
                                <div id="div5">
                                    <center>
                                        <br/>
                                        <label>Mobile-1</label>
                                        <hr/><br/>
                                        <select id="brand" class="select1" name="mobilebrand1" onchange="setOptionsMobile(document.formCompMobile.mobilebrand1.selectedIndex);">
                                            <option>--Brand--</option>
                                            <option>Nokia</option>
                                            <option>Samsung</option>
                                            <option>Sony</option>
                                            <option>Apple</option>
                                            <option>Micromax</option>
                                            <option>Spice</option>
                                        </select>
                                        <br/><br/>
                                        <select id="model" class="select1" name="mobilemodel1">
                                            <option>--Model--</option>                                                    
                                        </select>
                                    </center>
                                </div>
                            </td>                       
                            <td>
                                <div id="div5">
                                    <center>
                                        <br/>
                                        <label>Mobile-2</label>
                                        <hr/><br/>
                                        <select id="brand" class="select1" name="mobilebrand2" onchange="setOptionsMobile1(document.formCompMobile.mobilebrand2.selectedIndex);">
                                            <option>--Brand--</option>
                                            <option>Nokia</option>
                                            <option>Samsung</option>
                                            <option>Sony</option>
                                            <option>Apple</option>
                                            <option>Micromax</option>
                                            <option>Spice</option>
                                        </select>
                                        <br/><br/>
                                        <select id="model" class="select1" name="mobilemodel2">
                                            <option>--Model--</option>                                                    
                                        </select>
                                    </center>
                                </div>
                            </td>
                        </tr>                                              
                    </table>
                    <div id="div7">
                        <br/>
                        <input id="button" type="submit" value="Compare" name="compare"/>
                    </div>                    
                </div>                
            </center>
        </form>
        <%
            hs.setAttribute("username", username);
        %>
    </body>
</html>
