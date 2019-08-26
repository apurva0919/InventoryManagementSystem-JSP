<%-- 
    Document   : Show_Payment_Mode
    Created on : Apr 28, 2014, 12:32:02 AM
    Author     : VAIBHAV
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clspayment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clspayment obj=new clspayment();
    ResultSet rs=obj.select();
   
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Master.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
        </style>
</head>
    <body>
        <table width="100%">
          <tr bgcolor="#000000">
            <td><h1 class="style1">PAYMENT MODE LIST PAGE</h1></td>
          </tr>
        </table>
        <form action="Frm_Payment_Mode.jsp" method="post">
               <table>
                    <tr>
                        <td>
                           <a href="Frm_Payment_Mode.jsp"> Add a New Record </a>
                        </td>
                    </tr>
          </table>
        <table border="1">
            <tr>
                <td></td>
                <td>Payment Mode</td>
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_Payment_Mode.jsp?pkid=<%=rs.getInt("Payment_Id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("Payment_Mode")%>
                </td>
            </tr>
         <%}%>
        </table>
       </form>    </body>
</html>