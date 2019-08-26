<%-- 
    Document   : bllstate
    Created on : Mar 17, 2014, 9:18:56 PM
    Author     : VAIBHAV
--%>
<%@page import="DBpack.clscountry"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clsstate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clscountry objc=new clscountry();
    clsstate obj =new clsstate();
    obj.drpcountry=request.getParameter("drpcountry");
    obj.state_id=Integer.parseInt(request.getParameter("txtstateID"));
    obj.code=request.getParameter("txtcode");
    obj.state= request.getParameter("txtstate");
    //obj.c_id= request.getParameter("txtc_id");
   // String opr =request.getParameter("btn");
    String opr="SHOW";
    if(request.getParameter("btn")!=null)
    {
     opr =request.getParameter("btn");
    }
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_State.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select();
    response.sendRedirect("Show_State.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_State.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_State.jsp");
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
