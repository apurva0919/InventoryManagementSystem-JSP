<%-- 
    Document   : supplierlist
    Created on : Apr 29, 2014, 7:29:50 PM
    Author     : LOKENDRA SINGH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.ClsSupplier"%>
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
                <table><tr>
                        <td><a href="frmSupplier.jsp">Add a new record</a></td>
            </tr></table>
        <table border=1>
            <tr>
                <td><b>Select option</b></td>
                <td><b>Supplier</b></td>
                <td><b>Contact No.</b></td>
                <td><b>Email Id</b></td>
              <%-- <td><b>Street 1</b></td>
                <td><b>Street 2</b></td>
                <td><b>Street 3</b></td>
                <td><b>City</b></td>--%>
            </tr> 
            <tr>
            <%while(rs1.next())
              {
            %>
                <td><a href="frmSupplier.jsp?pkid=<%=rs1.getInt("Supplier_Id")%>">Select</a></td>
                <td><%=rs1.getString("supplier")%></td>
                <td><%=rs1.getString("contact_No")%></td>
                <td><%=rs1.getString("Email_Id")%></td>
                <%--<td><%=rs1.getString("street_1")%></td>
                <td><%=rs1.getString("street_2")%></td>
                <td><%=rs1.getString("street_3")%></td>
                <td><%=rs1.getString("city_Id")%></td>--%>
            </tr>
            <%}%>
        </table>
    </body>
</html>