<%-- 
    Document   : Bll_Product
    Created on : Jul 28, 2014, 1:14:40 AM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.ClsProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    ClsProduct obj=new ClsProduct();
    obj.Product_Id=Integer.parseInt(request.getParameter("txtProductId"));
    obj.Product=request.getParameter("txtProduct");
    obj.Category_Id=Integer.parseInt(request.getParameter("SelectCategoryId"));
    obj.Company_Id=Integer.parseInt(request.getParameter("SelectCompanyId"));
    obj.Model=request.getParameter("txtModel");
    obj.Purchase_Price=request.getParameter("txtPurchasePrice");
    obj.Selling_Price=request.getParameter("txtSellingPrice");
    obj.Supplier=request.getParameter("SelectSupplier");
    obj.Mobile=request.getParameter("txtMobile");
    obj.Scheme=request.getParameter("txtScheme");
    obj.Product_Weight=request.getParameter("txtProductWeight");
    obj.Quantity=request.getParameter("txtQuantity");
    obj.Manufacturing=request.getParameter("txtManufacturing");
   String opr="SHOW";
    if(request.getParameter("btn")!=null)
    {
     opr =request.getParameter("btn");
    }
    //String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_Product.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select();
    response.sendRedirect("Show_Product.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_Product.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_Product.jsp");
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
