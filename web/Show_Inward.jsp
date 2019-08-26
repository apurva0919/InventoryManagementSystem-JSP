<%-- 
    Document   : Show_Employee
    Created on : May 3, 2014, 11:53:52 AM
    Author     : VAIBHAV
--%>


<%@page import="DBpack.ClsInward"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsInward obj=new ClsInward();
    ResultSet rs=obj.select();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOW INWARD LIST</title>
        <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style> 
    </head>
    <body>
        <form action="Frm_Inward.jsp" method="post">
            <h2>List of Inward User Details</h2>
                <table>
                    <tr>
                        <td>
                        <a href="Frm_Inward.jsp" >Add a New Record</a>                      
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr bgcolor="#000000">
                <td></td>
                <td><span class="style1">Voucher No </span></td>
                <td><span class="style1">Purchase Date</span></td>
                <td><span class="style1">Product</span></td>
                <td><span class="style1">Company</span></td>
               
               
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_Inward.jsp?pkid=<%=rs.getInt("Inward_Id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("Voucher_No")%>
                </td>
                 <td>
                    <%=rs.getString("Date_Purchase")%>
                 </td>
                 <td>
                    <%=rs.getString("Product")%>
                </td>
                 <td>
                    <%=rs.getString("Company_Name")%>
                 </td>
            </tr>
         <%}%>
        </table>
        </form>
    </body>

</html>

