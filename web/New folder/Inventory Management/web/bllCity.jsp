<%-- 
    Document   : Bll_City
    Created on : Apr 23, 2014, 6:46:56 PM
    Author     : VAIBHAV
--%>

<%@page import="IM.ClsCity"%>
<%@page import="IM.ClsState"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsState objs=new ClsState();
    ClsCity obj =new ClsCity();
    obj.drpstate=request.getParameter("drpstate");
    obj.city_id=Integer.parseInt(request.getParameter("txtcityID"));
    //obj.code=request.getParameter("txtcode");
    obj.city= request.getParameter("txtcity");
    // obj.= request.getParameter("txtc_id");
    String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("listCity.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select();
    response.sendRedirect("listCity.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("listCity.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("listCity.jsp");
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
