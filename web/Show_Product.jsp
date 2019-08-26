<%-- 
    Document   : Show_Product
    Created on : Jul 28, 2014, 4:29:39 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.ClsProduct"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsProduct obj=new ClsProduct();
    ResultSet rs=obj.select();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOW PRODUCT LIST</title>
        <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style> 
    </head>
    <body>
        <form action="Frm_Product.jsp" method="post">
            <h2>List of User Details</h2>
                <table>
                    <tr>
                        <td>
                        <a href="Frm_Product.jsp" >Add a New Record</a>                      
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr bgcolor="#000000">
                <td></td>
                <td><span class="style1">Product</span></td>
                <td><span class="style1">Category</span></td>
                <td><span class="style1">Company</span></td>
                <td><span class="style1">Model</span></td>
                <td><span class="style1">Supplier</span></td>
                <td><span class="style1">Mobile No.</span></td>
                
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_Product.jsp?pkid=<%=rs.getInt("Product_Id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("Product")%>
                </td>
                 <td>
                    <%=rs.getString("Category")%>
                 </td>
                 <td>
                    <%=rs.getString("Company_Name")%>
                </td>
                 <td>
                    <%=rs.getString("Model_Detail")%>
                 </td>
                 <td>
                     <%=rs.getString("Supplier")%>
                 </td>
                 <td>
                    <%=rs.getString("Helpline_No")%>
                </td>
            </tr>
         <%}%>
        </table>
        </form>
    </body>

</html>
