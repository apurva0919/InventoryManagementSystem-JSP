<%-- 
    Document   : Bll_Deparment
    Created on : Apr 18, 2014, 4:50:29 PM
    Author     : VAIBHAV
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clsdepartment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clsdepartment obj =new clsdepartment();
    obj.Department_Id=Integer.parseInt(request.getParameter("txtDepartmentId"));
    obj.Department_Code=request.getParameter("txtDepartmentCode");
    obj.Department= request.getParameter("txtDepartment");
    String opr="SHOW";
    if(request.getParameter("btn")!=null)
    {
     opr =request.getParameter("btn");
    }
   
   if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_Department.jsp");
    } 
    else if(opr.equals("SHOW"))
    {
    obj.select();
    response.sendRedirect("Show_Department.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_Department.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_Department.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>