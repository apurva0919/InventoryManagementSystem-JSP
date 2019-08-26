<%-- 
    Document   : Bll_Bank
    Created on : Jul 10, 2014, 2:09:02 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.clsBank"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clsBank obj=new clsBank();
    
    obj.Bank_Id=Integer.parseInt(request.getParameter("txtBankID"));
    obj.Bank_Code=request.getParameter("txtBankCode");
    obj.Bank=request.getParameter("txtBank");
    obj.Details=request.getParameter("txtDetails");
    String opr = request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_Bank.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select();
    response.sendRedirect("Show_Bank.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_Bank.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_Bank.jsp");
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
