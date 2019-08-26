<%-- 
    Document   : bllstate
    Created on : Mar 17, 2014, 9:18:56 PM
    Author     : VAIBHAV
--%>
<%@page import="IM.ClsState"%>
<%@page import="IM.ClsCountry"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsCountry objc=new ClsCountry();
    ClsState obj =new ClsState();
    obj.drpcountry=request.getParameter("drpcountry");
    obj.state_id=Integer.parseInt(request.getParameter("txtstateID"));
    obj.code=request.getParameter("txtcode");
    obj.state= request.getParameter("txtstate");
    obj.c_id= request.getParameter("txtc_id");
    String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("listState.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.list();
    response.sendRedirect("listState.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("listState.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("listState.jsp");
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
