<%-- 
    Document   : feedbacklist
    Created on : Apr 26, 2014, 7:34:37 PM
    Author     : LOKENDRA SINGH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="IM.ClsFeedback"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
ClsFeedback objF=new ClsFeedback();
ResultSet rs1=objF.list();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>list page</title>
    </head>
    <body>
        <h1>List of Feedback!</h1>
        <table border=1>
            <tr>
                <td><b>Select option</b></td>
                <td><b>Customer Name</b></td>
                <td><b>Feedback</b></td>
            </tr> 
            <tr>
            <%while(rs1.next())
              {
            %>
            
                <td><a href="frmFeedback.jsp?pkid=<%=rs1.getInt("Feedback_Id")%>">Select</a></td>
                <td><%=rs1.getString("Customer_Name")%></td>
                <td><%=rs1.getString("Feedback")%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
