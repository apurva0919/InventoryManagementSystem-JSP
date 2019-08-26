<%-- 
    Document   : Show_User
    Created on : Apr 20, 2014, 7:43:11 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.clscountry"%>
<%@page import="DBpack.clsstate"%>
<%@page import="DBpack.clsuser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%
    clsuser obj=new clsuser();
    ResultSet rs=obj.select();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOW USER LIST</title>
        <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style> 
    </head>
    <body>
        <form action="Frm_User.jsp" method="post">
            <h2>List of User Details</h2>
                <table>
                    <tr>
                        <td>
                        <a href="Frm_User.jsp" >Add a New Record</a>                      
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr bgcolor="#000000">
                <td></td>
                <td><span class="style1">First Name</span></td>
                <td><span class="style1">Middle Name</span></td>
                <td><span class="style1">Last Name</span></td>
                <td><span class="style1">User Name</span></td>
<%-- <td>Password</td>--%>
                <td><span class="style1">Gender</span></td>
                <td><span class="style1">User Type</span></td>
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
                <td><a href="Frm_User.jsp?pkid=<%=rs.getInt("User_Id")%>" > SELECT </a></td>
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
                    <%=rs.getString("User_Name")%>
                 </td>
                <%-- <td>
                    <%=rs.getString("Password")%>
                </td>--%>
                 <td>
                    <%=rs.getString("Gender")%>
                 </td>
                 <td>
                    <%=rs.getString("User_Type")%>
                </td>
                 <td>
                     <%=rs.getString("Mobile_No")%>
                 </td>
                 <td>
                    <%=rs.getString("Email_Id")%>
                </td>
                 <%--<td>
                    <%=rs.getString("Street_1")%>
                 </td>
                 <td>
                    <%=rs.getString("Street_2")%>
                </td>
                <td>
                    <%=rs.getString("Street_3")%>
                 </td>
                <td>
                    <%=rs.getString("City")%>
                </td>
           <td>
                    <%=rs.getString("state")%>
                 </td>
                 <td>
                    <%=rs.getString("country")%>
                </td>
                 <td>
                    <%=rs.getString("Pincode")%>
                 </td>
                 <td>
                    <%=rs.getString("Question_1")%>
                 </td>
                 <td>
                    <%=rs.getString("Answer_1")%>
                </td>
                <td>
                    <%=rs.getString("Question_2")%>
                 </td>
                 <td>
                    <%=rs.getString("Answer_2")%>
                </td>--%>
            </tr>
         <%}%>
        </table>
        </form>
    </body>

</html>
