<%-- 
    Document   : Categorybll
    Created on : Apr 30, 2014, 3:16:13 PM
    Author     : LOKENDRA SINGH
--%>

<%@page import="IM.ClsCategory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
         String str=request.getParameter("Cbtn");
         ClsCategory objC=new ClsCategory();
         objC.categoryid=Integer.parseInt(request.getParameter("hdnCategoryID"));
         objC.category=request.getParameter("textfield62");
         objC.description=request.getParameter("textarea");

 if(str.equals("Save"))
     {
         objC.insert();
         response.sendRedirect("listCategory.jsp");
     }
 else if(str.equals("Update"))
         {
            objC.update();
            response.sendRedirect("listCategory.jsp");
         }
 else if(str.equals("Show"))
         {
            response.sendRedirect("listCategory.jsp");
         }
 else if(str.equals("Delete"))
         {
            objC.delete();
            response.sendRedirect("listCategory.jsp");
         }
     
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bll Page</title>
    </head>
    <body>
        <h1>Successfully!!!!!</h1>
    </body>
</html>

