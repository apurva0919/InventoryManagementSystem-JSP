<%-- 
    Document   : Bll_Employee
    Created on : May 3, 2014, 11:52:51 AM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.clsEmployee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clsEmployee obj =new clsEmployee();
    obj.Employee_Id=Integer.parseInt(request.getParameter("txtEmployeeId"));
    obj.First_Name=request.getParameter("txtFirst");
    obj.Middle_Name=request.getParameter("txtMiddle");
    obj.Last_Name=request.getParameter("txtLast");
    obj.Department_Id=Integer.parseInt(request.getParameter("selectDepartmentId"));
    obj.Designation_Id=Integer.parseInt(request.getParameter("selectDesignationId"));
    obj.Gender=request.getParameter("radiobutton");
    obj.DOB=request.getParameter("txtBirthDate");
    obj.DOJ=request.getParameter("txtJoiningDate");
    obj.Mobile=request.getParameter("txtMobile");
    obj.Phone=request.getParameter("txtPhone");
    obj.Email=request.getParameter("txtEmailAddress");
    obj.Street_1=request.getParameter("txtStreet1");
    obj.Street_2=request.getParameter("txtStreet2");
    obj.Street_3=request.getParameter("txtStreet3");
    obj.Salary=request.getParameter("txtSalary");
    obj.Education=request.getParameter("txtEducation");
    obj.City_Id=Integer.parseInt(request.getParameter("selectCity"));
    //obj.state_id=Integer.parseInt(request.getParameter("selectState"));
    //obj.country_id=Integer.parseInt(request.getParameter("selectCountry"));
    obj.Pincode=request.getParameter("txtPinCode");
    String opr="SHOW";
    if(request.getParameter("btn")!=null)
    {
     opr =request.getParameter("btn");
    }   
//String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_Employee.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select();
    response.sendRedirect("Show_Employee.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_Employee.jsp");
    
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_Employee.jsp");
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
