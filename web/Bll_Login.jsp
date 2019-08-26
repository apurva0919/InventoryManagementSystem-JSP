<%-- 
    Document   : Bll_Login
    Created on : Aug 14, 2014, 12:44:08 AM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.ClsLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    ClsLogin obj=new ClsLogin();
    obj.User_Name=request.getParameter("txtUserName");
    obj.password=request.getParameter("txtPassword");
    obj.User_Type_Id=Integer.parseInt(request.getParameter("selectUserType"));
    obj.CheckValidation();
    if(obj.User_Type_Id > 0)
    //if(obj.User_Name.equals(null))
    {
    obj.CheckValidation();
    response.sendRedirect("Frm_Home.jsp");
    }
    else 
    {
    // System.out.println("Wrong User Name Password");
     response.sendRedirect("Login.jsp");
    }
    
    String username=request.getParameter("txtUserName");
     session.setAttribute("username", username);
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
