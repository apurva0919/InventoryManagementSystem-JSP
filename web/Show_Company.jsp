<%-- 
    Document   : Show_Employee
    Created on : May 3, 2014, 11:53:52 AM
    Author     : VAIBHAV
--%>
<%@page import="DBpack.ClsCompany"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsCompany obj= new ClsCompany();
    ResultSet rs=obj.select();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOW COMPANY LIST</title>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style> 
    </head>
    <body>
        <form action="Frm_Company.jsp" method="post">
            <h2>List of Companies</h2>
                <table>
                    <tr>
                        <td>
                            <a href="Frm_Company.jsp">Add a New Record</a>                      
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr bgcolor="#000000">
                <td></td>
                <td><span class="style1">Company Name</span></td>
                <td><span class="style1">Mobile No.</span></td>
                <td><span class="style1"> Website </span></td>
                <td><span class="style1">Contact Person</span></td>
                <td><span class="style1">Contact Mobile No.</span></td>
                
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_Company.jsp?pkid=<%=rs.getInt("Company_Id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("Company_Name")%>
                </td>
                 <td>
                    <%=rs.getString("Mobile_No")%>
                 </td>
                 <td>
                    <%=rs.getString("Website")%>
                </td>
                 <td>
                    <%=rs.getString("Contact_Person")%>
                 </td>
                 <td>
                     <%=rs.getString("Contact_Mobile")%>
                 </td>
            </tr>
         <%}%>
        </table>
        </form>
    </body>

</html>

