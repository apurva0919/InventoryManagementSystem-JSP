<%-- 
    Document   : Show_Billing
    Created on : Apr 20, 2014, 1:42:12 PM
    Author     : VAIBHAV
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clsbilling"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clsbilling obj=new clsbilling();
    ResultSet rs=obj.select();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOW BILLING LIST</title>
        <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style> 
    </head>
    <body>
        <form action="Frm_Billing.jsp" method="post">
            <h2>List of Billing Details</h2>
                <table>
                    <tr>
                        <td>
                            <a href="Frm_Billing.jsp" >Add a New Record</a>                      
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr bgcolor="#000000">
                <td></td>
                <td><span class="style1">Bill No.</span></td>
                <td><span class="style1">Billing Date</span></td>
                <td><span class="style1">Billing By</span></td>
                <td><span class="style1">Payment Mode</span></td>
                <td><span class="style1">Mobile</span></td>
                <td><span class="style1">Email Address</span></td>
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_Billing.jsp?pkid=<%=rs.getInt("Billing_Id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("Bill_No")%>
                </td>
                 <td>
                    <%=rs.getString("Billing_Date")%>
                 </td>
                 <td>
                    <%=rs.getString("First_Name")%>
                </td>
                 <td>
                    <%=rs.getString("Payment_Mode")%>
                 </td>
                 <td>
                     <%=rs.getString("Mobile_No")%>
                 </td>
                 <td>
                    <%=rs.getString("Email_Id")%>
                </td>
             
            </tr>
         <%}%>
        </table>
        </form>
    </body>

</html>
