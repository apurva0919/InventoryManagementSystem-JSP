<%-- 
    Document   : Bll_Inward
    Created on : May 13, 2014, 7:12:38 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.ClsInward"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsInward obj =new ClsInward();
    obj.Inward_Id=Integer.parseInt(request.getParameter("HiddenInwardId"));
    obj.Voucher_No=request.getParameter("txtVoucherNo");
    obj.Date_Purchase=request.getParameter("txtPurchaseDate");
    obj.Company_Id=Integer.parseInt(request.getParameter("SelectCompanyId"));
    obj.Payment_Date=request.getParameter("txtPaymentDate");
    obj.Product_Id=Integer.parseInt(request.getParameter("SelectProductId"));
    obj.Recived_By=Integer.parseInt(request.getParameter("SelectEmployeeId"));
    obj.Supplied_By=Integer.parseInt(request.getParameter("SelectSupplier"));
    obj.Amount=request.getParameter("txtAmount");
    obj.Tax=request.getParameter("txtTax");
    obj.Discount=request.getParameter("txtDiscount");
    obj.Grand_Total=request.getParameter("txtGrandTotal");
    obj.Transportation=request.getParameter("txtTransportation");
    obj.Shipping_method=request.getParameter("txtShippingMethod");
    obj.Shipping_Date=request.getParameter("txtShippingDate");
    obj.Shipping_Charges=request.getParameter("txtShippingCharges");
    obj.Discription=request.getParameter("txtDescription");
    String opr="SHOW";
    if(request.getParameter("btn")!=null)
    {
     opr =request.getParameter("btn");
    }
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_Inward.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select();
    response.sendRedirect("Show_Inward.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_Inward.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_Inward.jsp");
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
