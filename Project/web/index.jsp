
<%@page import="java.awt.SystemColor.*"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="index.jsp">
        <table>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="userName" size="20" /></td>


            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" size="20" /></td>
            </tr>
            <tr>
                <td><input type="submit" /></td>
            </tr>
        </table>
        </form>
        <%
            //Admin details
            String aUser = "admin";
            String aPass = "password1";
            
            String uUser = "user";
            String uPass = "password2";
            
            
            
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            
            if(userName!=null){
                if(userName.equals(aUser) && password.equals(aPass)){
                    response.sendRedirect("adminPage.jsp");
                }
                if(userName.equals(uUser) && password.equals(uPass)){
                    response.sendRedirect("userPage.jsp");
                }else{
                    out.print("<br>User not recognized");
                    out.print("<br>your username: " + userName);
                    out.print("<br>your password: " + password);
                }
            }
            
            
        %>
    </body>
</html>
