<%-- 
    Document   : Categorylist
    Created on : Apr 30, 2014, 3:07:39 PM
    Author     : LOKENDRA SINGH
--%>

<%@page import="DBpack.ClsCategory"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
ClsCategory objC=new ClsCategory();
ResultSet rs1=objC.list();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>list page</title>
    </head>
    <body>
        <h1>List of Category!</h1>
        <table border=1>
            <tr>
                <td><b>Select option</b></td>
                <td><b>Category</b></td>
                <td><b>Description</b></td>
            </tr> 
            <tr>
            <%while(rs1.next())
              {
            %>
            
                <td><a href="frmCategory.jsp?pkid=<%=rs1.getInt("Category_Id")%>">Select</a></td>
                <td><%=rs1.getString("Category")%></td>
                <td><%=rs1.getString("Description")%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
