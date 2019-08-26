<%-- 
    Document   : Show_City
    Created on : Apr 23, 2014, 6:50:39 PM
    Author     : VAIBHAV
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clscity"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clscity obj=new clscity();
    ResultSet rs=obj.select();
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>CITY LIST PAGE</h2>
        <form action="Frm_City.jsp" method="post">

               <table>
                    <tr>
                        <td>
                           <a href="Frm_City.jsp"> Add a New Record </a>
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr>
                <td></td>
                <td>CODE</td>
                <td>CITY</td>
                <td>STATE</td>
                
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_City.jsp?pkid=<%=rs.getInt("City_Id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("City_Code")%>
                </td>
                 <td>
                    <%=rs.getString("City")%>
                </td>
                <td>
                    <%=rs.getString("state")%>
                </td>
            </tr>
         <%}%>
        </table>
       </form>
    </body>
</html>
