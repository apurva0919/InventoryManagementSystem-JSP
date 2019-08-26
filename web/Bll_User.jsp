<%-- 
    Document   : Bll_User
    Created on : Apr 20, 2014, 7:23:59 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.clsuser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%
    clsuser obj =new clsuser();
    obj.User_Id=Integer.parseInt(request.getParameter("txtUserId"));
    obj.First_Name=request.getParameter("txtFirst");
    obj.Middle_Name=request.getParameter("txtMiddle");
    obj.Last_Name=request.getParameter("txtLast");
    obj.User_Name=request.getParameter("txtUserName");
    obj.Password=request.getParameter("txtPassword");
    obj.Gender=request.getParameter("radiobutton");
    obj.DOB=request.getParameter("txtDateofBirth");
    obj.Mobile=request.getParameter("txtMobile");
    obj.Email=request.getParameter("txtEmailAddress");
    obj.Street_1=request.getParameter("txtStreet1");
    obj.Street_2=request.getParameter("txtStreet2");
    obj.Street_3=request.getParameter("txtStreet3");
    obj.City_Id=Integer.parseInt(request.getParameter("selectCity"));
    obj.state_id=Integer.parseInt(request.getParameter("selectState"));
    obj.country_id=Integer.parseInt(request.getParameter("selectCountry"));
    obj.Pincode=request.getParameter("txtPinCode");
    obj.Question_1=request.getParameter("selectQuestion1");
    obj.Answer_1=request.getParameter("txtAnswer1");
    obj.Question_2=request.getParameter("selectQuestion2");
    obj.Answer_2=request.getParameter("txtAnswer2");
    obj.User_Type_Id=Integer.parseInt(request.getParameter("txtUserType"));
    String opr="SHOW";
    if(request.getParameter("btn")!=null)
    {
     opr =request.getParameter("btn");
    }
//String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_User.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select();
    response.sendRedirect("Show_User.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_User.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_User.jsp");
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
