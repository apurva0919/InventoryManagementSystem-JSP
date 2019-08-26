<%-- 
    Document   : Bll_Employee
    Created on : May 3, 2014, 11:52:51 AM
    Author     : VAIBHAV
--%>


<%@page import="DBpack.ClsCompany"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsCompany obj = new ClsCompany();
    
    obj.Company_Id=Integer.parseInt(request.getParameter("txtComapanyId"));
    obj.Company_Name=request.getParameter("txtCompany");
    obj.Street_1=request.getParameter("txtStreet1");
    obj.Street_2=request.getParameter("txtStreet2");
    obj.Street_3=request.getParameter("txtStreet3");
     obj.City_Id=Integer.parseInt(request.getParameter("selectCity"));
    obj.Pincode=request.getParameter("txtPincode");
    obj.Mobile=request.getParameter("txtMobile");
    obj.Email=request.getParameter("txtEmail");
    obj.Website=request.getParameter("txtWebsite");
    obj.Contact_Person=request.getParameter("txtContactPerson");
    obj.Contact_Mobile=request.getParameter("txtContactMobile");
    obj.Contact_Email=request.getParameter("txtContactEmail");
    String opr="SHOW";
    if(request.getParameter("btn")!=null)
    {
     opr =request.getParameter("btn");
    }
    //String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    //response.sendRedirect("Show_Company.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select();
    response.sendRedirect("Show_Company.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_Company.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_Company.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bll Company Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
