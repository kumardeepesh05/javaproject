<%-- 
    Document   : Register
    Created on : Jul 7, 2014, 7:29:58 PM
    Author     : DEEPESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>My project-Register</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/jpg" href="img/link.jpg"/>
        <link type="text/css" rel="stylesheet" href="css/style.css"></link>
        <script type="text/javascript" src="js/script.js"></script>
    </head>
    <body style="background-color: #87CEFA">
        <form  name="formReg" action="RegisterServlet" onsubmit="return checkRegister();">
            <center>
                <div id="header">
                    <img src="img/main.jpg" id="img4"/>
                </div>
                <div id="root" class="div2">                    
                    <br/><table>
                        <tr>
                            <td><label id="label">Name<strong>*</strong></label></td>
                            <td><input type="text" name="name"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Father's Name<strong>*</strong></label></td>
                            <td><input type="text" name="fathersname"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Username<strong>*</strong></label></td>
                            <td><input type="text" name="username"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Email<strong>*</strong></label></td>
                            <td><input type="text" name="email"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Address<strong>*</strong></label></td>
                            <td><input type="text" name="address"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Pincode<strong>*</strong></label></td>
                            <td><input type="text" name="pincode"></td>
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
                            <td><label id="label">Country<strong>*</strong></label></td>
                            <td><input type="text" name="country"></td>
                        </tr>
                        <tr>
                            <td><label id="label">Contact No<strong>*</strong></label></td>
                            <td><input type="text" name="contact"></td>
                        </tr>
                    </table><br/>                    
                    <input id="button" type="submit" name="register" value="Register"/>   
                    <p style="color: #FFFF00"><span style="color: #00FF00">##</span>Password will be sent to your email address</p>
                </div>   
            </center>
        </form>
    </body>
</html>
