<%-- 
    Document   : Supplierbll
    Created on : Apr 30, 2014, 11:20:03 AM
    Author     : LOKENDRA SINGH
--%>

<%@page import="IM.ClsCity"%>
<%@page import="IM.ClsSupplier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
         String str=request.getParameter("sbtn");
         ClsCity objC =new ClsCity();
         ClsSupplier objS=new ClsSupplier();
         objS.supplierid=Integer.parseInt(request.getParameter("hdnSupplierID"));
         objS.supplier=request.getParameter("supplier");
         objS.contact=request.getParameter("contact");
         objS.email=request.getParameter("email");       
         objS.street1=request.getParameter("street1");
         objS.street2=request.getParameter("street2");
         objS.street3=request.getParameter("street3");
         objS.cityid=Integer.parseInt(request.getParameter("drpcity"));

 if(str.equals("Insert"))
     {
         objS.insert();
         response.sendRedirect("listSupplier.jsp");
     }
 else if(str.equals("Update"))
         {
            objS.update();
            response.sendRedirect("listSupplier.jsp");
         }
 else if(str.equals("Show"))
         {
            response.sendRedirect("listSupplier.jsp");
         }
 else if(str.equals("Delete"))
         {
            objS.delete();
            response.sendRedirect("listSupplier.jsp");
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
