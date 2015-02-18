<%-- 
    Document   : Login
    Created on : Jul 1, 2014, 9:11:39 PM
    Author     : DEEPESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My project-Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/jpg" href="img/link.jpg"/>
        <link type="text/css" rel="stylesheet" href="css/style.css"></link>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" language="javascript">
            
        </script>
    </head>
    <body background="img/img1.jpg">
        <%
            String username=(String)session.getAttribute("username");
            if(username==null){
        %>
        <form name="loginForm" action="LoginServlet" onsubmit="return check();" method="post">
            <center>
                <div id="header">
                    <img src="img/main.jpg" id="img4"/>
                </div>
                <div id="root" class="div1">
                    <img src="img/login.jpg" id="img1"/>
                    <table border="0">
                        <tr>
                            <td><label id="label">Username</label></td>
                            <td><input type="text" name="name"/></td>
                        </tr>
                        <tr>
                            <td><label id="label">Password</label></td>
                            <td><input type="password" name="pass"/></td>
                        </tr>
                    </table>
                    <br/>
                    <input id="button" type="submit" name="login" value="Login"/>
                    <br/><br/>
                    <!-- <input id="button" class="b2" type="submit" name="signup" value="SignUp"/>-->
                    <label class="label1"><b>Click here for</b> <a href="Register.jsp">Sign Up</a></label>
                </div>
            </center>        
        </form>
        <%
                
            }else{
                session.invalidate();
                response.sendRedirect("Main.jsp");
            }  
        %>
    </body>
</html>
