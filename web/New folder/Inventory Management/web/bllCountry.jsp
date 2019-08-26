<%-- 
    Document   : second
    Created on : Mar 10, 2014, 11:54:46 PM
    Author     : VAIBHAV
--%>
<%@page import="IM.ClsCountry"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsCountry obj =new ClsCountry();
    obj.country_id=Integer.parseInt(request.getParameter("txtCountryID"));
    obj.code=request.getParameter("txtcode");
    obj.country= request.getParameter("txtcountry");
    String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("listCountry.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.list();
    response.sendRedirect("listCountry.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("listCountry.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("listCountry.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>hello world</h1>
    </body>
</html>
