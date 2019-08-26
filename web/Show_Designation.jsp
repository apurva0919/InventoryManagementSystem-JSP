<%-- 
    Document   : Show_Designation
    Created on : May 2, 2014, 5:18:22 PM
    Author     : VAIBHAV
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clsdesignation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clsdesignation obj=new clsdesignation();
    ResultSet rs=obj.select();
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>PAYMENT MODE LIST PAGE</h2>
        <form action="Frm_Designation.jsp" method="post">
               <table>
                    <tr>
                        <td>
                           <a href="Frm_Designation.jsp"> Add a New Record </a>
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr>
                <td></td>
                <td>Designation</td>
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_Designation.jsp?pkid=<%=rs.getInt("Designation_Id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("Designation")%>
                </td>
            </tr>
         <%}%>
        </table>
       </form>    </body>
</html>
