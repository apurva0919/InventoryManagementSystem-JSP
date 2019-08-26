<%-- 
    Document   : Show_Payment_Mode
    Created on : Apr 28, 2014, 12:32:02 AM
    Author     : VAIBHAV
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.ClsUserType"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsUserType obj=new ClsUserType();
    ResultSet rs=obj.select();
   
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Master.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List OF User Type</title>
        <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
        </style>
</head>
    <body>
        <table width="100%">
          <tr bgcolor="#000000">
            <td><h1 class="style1">USER TYPE LIST PAGE</h1></td>
          </tr>
        </table>
        <form action="Frm_User_Type.jsp" method="post">
               <table>
                    <tr>
                        <td>
                           <a href="Frm_User_Type.jsp"> Add a New Record </a>
                        </td>
                    </tr>
          </table>
        <table border="1">
            <tr>
                <td></td>
                <td>User Type</td>
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_User_Type.jsp?pkid=<%=rs.getInt("User_Type_Id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("User_Type")%>
                </td>
            </tr>
         <%}%>
        </table>
       </form>    </body>
</html>