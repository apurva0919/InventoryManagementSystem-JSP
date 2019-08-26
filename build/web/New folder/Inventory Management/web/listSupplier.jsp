<%-- 
    Document   : supplierlist
    Created on : Apr 29, 2014, 7:29:50 PM
    Author     : LOKENDRA SINGH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="IM.ClsSupplier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
ClsSupplier objS=new ClsSupplier();
ResultSet rs1=objS.list();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Page!</title>
    </head>
    <body>
        <h1>List of Supplier!</h1>
        <table border=1>
            <tr>
                <td><b>Select option</b></td>
                <td><b>Supplier</b></td>
                <td><b>Contact No.</b></td>
                <td><b>Email Id</b></td>
                <td><b>Street 1</b></td>
                <td><b>Street 2</b></td>
                <td><b>Street 3</b></td>
                <td><b>City</b></td>
            </tr> 
            <tr>
            <%while(rs1.next())
              {
            %>
                <td><a href="frmSupplier.jsp?pkid=<%=rs1.getInt("Supplier_Id")%>">Select</a></td>
                <td><%=rs1.getString("supplier")%></td>
                <td><%=rs1.getInt("contact")%></td>
                <td><%=rs1.getString("email")%></td>
                <td><%=rs1.getString("street1")%></td>
                <td><%=rs1.getString("street2")%></td>
                <td><%=rs1.getString("street3")%></td>
                <td><%=rs1.getString("city")%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>

