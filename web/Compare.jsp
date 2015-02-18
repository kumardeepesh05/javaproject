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
        <%
            hs = request.getSession();
            username = (String) hs.getAttribute("username");

        %>
        <form name="formComp" action="DisplayServlet" onsubmit="return checkCompare();">
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
                    <!--<img id="img2" src="img/car.jpg"/>-->
                    <img src="img/com.jpg" id="img3"/><br/><br/>            
                    <table>                        
                        <tr>
                            <td>
                                <div id="div5">
                                    <center>
                                        <br/>
                                        <label>Car-1</label>
                                        <hr/><br/>
                                        <select id="brand" class="select1" name="carbrand1" onchange="setOptions(document.formComp.carbrand1.selectedIndex);">
                                            <option>--Brand--</option>                                                      
                                            <option>Honda</option>
                                            <option>Hyundai</option>
                                            <option>Mahindra</option>
                                            <option>Maruti</option>
                                            <option>Tata</option>
                                            <option>Toyota</option>                                            
                                        </select>
                                        <br/><br/>
                                        <select id="model" class="select1" name="carmodel1">
                                            <option>--Model--</option>                                                    
                                        </select>
                                    </center>
                                </div>
                            </td>
                            <td>
                                <div id="div5">
                                    <center>
                                        <br/>
                                        <label>Car-2</label>
                                        <hr/><br/>
                                        <select id="brand" class="select1" name="carbrand2" onchange="setOptions1(document.formComp.carbrand2.selectedIndex);">
                                            <option>--Brand--</option>                                            
                                            <option>Honda</option>
                                            <option>Hyundai</option>
                                            <option>Mahindra</option>
                                            <option>Maruti</option>
                                            <option>Tata</option>
                                            <option>Toyota</option>                                            
                                        </select>
                                        <br/><br/>
                                        <select class="select1" name="carmodel2">
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
