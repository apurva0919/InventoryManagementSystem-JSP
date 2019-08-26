<%-- 
    Document   : Bll_Designation
    Created on : May 2, 2014, 5:18:38 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.clsdesignation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clsdesignation obj =new clsdesignation();
    obj.Designation_Id=Integer.parseInt(request.getParameter("txtDesignationId"));
    obj.Designation=request.getParameter("txtDesignation");
    String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_Designation.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select ();
    response.sendRedirect("Show_Designation.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_Designation.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_Designation.jsp");
    }
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
