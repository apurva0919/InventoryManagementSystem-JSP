<%-- 
    Document   : Feedbackbll
    Created on : Apr 26, 2014, 6:16:17 PM
    Author     : LOKENDRA SINGH
--%>

<%@page import="IM.ClsFeedback"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
         String str=request.getParameter("Fbtn");
         ClsFeedback objF=new ClsFeedback();
         objF.feedbackid=Integer.parseInt(request.getParameter("hdnFeedbackID"));
         objF.customername=request.getParameter("textfield62");
         objF.feedback=request.getParameter("textarea");

 if(str.equals("Save"))
     {
         objF.insert();
         response.sendRedirect("listFeedback.jsp");
     }
 else if(str.equals("Update"))
         {
            objF.update();
            response.sendRedirect("listFeedback.jsp");
         }
 else if(str.equals("Show"))
         {
            response.sendRedirect("listFeedback.jsp");
         }
 else if(str.equals("Delete"))
         {
            objF.delete();
            response.sendRedirect("listFeedback.jsp");
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
