<%-- 
    Document   : Bll_Billing
    Created on : Apr 20, 2014, 1:40:52 PM
    Author     : VAIBHAV
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clsbilling"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clsbilling obj =new clsbilling();
    obj.Billing_Id=Integer.parseInt(request.getParameter("txtBillingID"));
    obj.Bill_No=request.getParameter("txtBillNo");
    obj.Billing_Date=request.getParameter("txtBillingDate");
    obj.Outward_Id=Integer.parseInt(request.getParameter("txtOutwardId"));
    obj.Billed_By=Integer.parseInt(request.getParameter("SelectBilledBy"));
    obj.Payment_Mode_Id=Integer.parseInt(request.getParameter("SelectPaymentMode"));
    obj.cheque_No=Integer.parseInt(request.getParameter("txtChequeNo"));
    obj.Cheque_Date=request.getParameter("txtChequeDate");
    obj.Credit_Card_No=request.getParameter("txtCreditCardNo");
    obj.Bank=request.getParameter("txtBank");
    String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_Billing.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select();
    response.sendRedirect("Show_Billing.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_Billing.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_Billing.jsp");
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
