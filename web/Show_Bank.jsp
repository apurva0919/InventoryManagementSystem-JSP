<%-- 
    Document   : Show_Bank
    Created on : Jul 10, 2014, 2:17:19 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.clsBank"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clsBank obj=new clsBank();
    ResultSet rs=obj.select();
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank List</title>
    </head>
    <body>
        <h2>Bank LIST PAGE</h2>
        <form action="Frm_Bank.jsp" method="post">

               <table>
                    <tr>
                        <td>
                            <a href="Frm_Bank.jsp"> Add a New Record </a>
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr>
                <td></td>
                <td>BANK CODE</td>
                <td>BANK</td>
                <td>OTHER DETAILS</td>
                
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_Bank.jsp?pkid=<%=rs.getInt("Bank_Id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("Bank_Code")%>
                </td>
                 <td>
                    <%=rs.getString("Bank")%>
                </td>
                <td>
                    <%=rs.getString("Details")%>
                </td>
            </tr>
         <%}%>
        </table>
       </form>
    </body>
</html>
