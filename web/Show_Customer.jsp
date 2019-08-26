<%-- 
    Document   : Show_Customer
    Created on : Apr 20, 2014, 7:43:11 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.ClsCustomer"%>
<%@page import="DBpack.clscountry"%>
<%@page import="DBpack.clsstate"%>
<%@page import="DBpack.clsuser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%
    ClsCustomer obj=new ClsCustomer();
    ResultSet rs=obj.select();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOW Customer LIST</title>
        <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style> 
    </head>
    <body>
        <form action="Frm_Customer.jsp" method="post">
            <h2>List of Customer Details</h2>
                <table>
                    <tr>
                        <td>
                        <a href="Frm_Customer.jsp" >Add a New Record</a>                      
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr bgcolor="#000000">
                <td></td>
                <td><span class="style1">First Name</span></td>
                <td><span class="style1">Middle Name</span></td>
                <td><span class="style1">Last Name</span></td>
                <td><span class="style1">Gender</span></td>
                <td><span class="style1">Mobile</span></td>
                <td><span class="style1">Email Address</span></td>
               <%-- <td>Street 1</td>
                <td>Street 2</td>
                <td>Street 3</td>
                <td>City </td>
                <td>State</td>
                <td>Country</td>
                <td>Pin Code</td>
                <td>Question 1</td>
                <td>Answer 1</td>
                <td>Question 2</td>
                <td>Answer 2</td>--%>
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_Customer.jsp?pkid=<%=rs.getInt("Customer_Id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("First_Name")%>
                </td>
                 <td>
                    <%=rs.getString("Middle_Name")%>
                 </td>
                 <td>
                    <%=rs.getString("Last_Name")%>
                </td>
                 <td>
                    <%=rs.getString("Gender")%>
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
