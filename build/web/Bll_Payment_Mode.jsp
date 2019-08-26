<%-- 
    Document   : Bll_Payment_Mode
    Created on : Apr 28, 2014, 12:20:07 AM
    Author     : VAIBHAV
--%>
<%@page import="DBpack.clspayment"%>
<%@page import="DBpack.clsstate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clspayment obj =new clspayment();
    obj.Payment_Mode_Id=Integer.parseInt(request.getParameter("txtPaymentId"));
    obj.Payment_Mode=request.getParameter("txtPaymentMode");
    String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_Payment_Mode.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select ();
    response.sendRedirect("Show_Payment_Mode.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_Payment_Mode.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_Payment_Mode.jsp");
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
