<%-- 
    Document   : Show_Department
    Created on : Apr 20, 2014, 12:20:13 AM
    Author     : VAIBHAV
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clsdepartment"%>
<%
    clsdepartment obj=new clsdepartment();
    ResultSet rs=obj.select();
%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOW DEPARTMENT</title>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>    
</head>
    <body>
        <form action="Frm_Department.jsp" method="post">
            <h2>Department List Table
            </h2>
                <table>
                    <tr>
                        <td>
                    <a href="Frm_Department.jsp" > ADD A NEW RECORD </a>
                        </td>
                    </tr>
                </table>
        <table border="1">
  <tr bgcolor="#000000">
                <td><span class="style1"> Select Option</td>
                <td><span class="style1">Department Code</span></td>
                <td><span class="style1">Department</span></td>
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_Department.jsp?pkid=<%=rs.getInt("Department_Id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("Department_Code")%>
                </td>
                 <td>
                    <%=rs.getString("Department")%>
                 </td>
            </tr>
       <%}%>
        </table>
                 
            
        </form>
    </body>
</html>
