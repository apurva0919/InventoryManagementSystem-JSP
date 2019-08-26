<%-- 
    Document   : show
    Created on : Mar 12, 2014, 11:58:06 PM
    Author     : VAIBHAV
--%>
<%@page import="IM.ClsCountry"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsCountry obj=new ClsCountry();
    ResultSet rs1=obj.list();
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Country List</h2><hr/>
        <form action="frmCountry.jsp" method="post">
                <table>
                    <tr>
                        <td>
                            <a href="frmCountry.jsp" style="color: chocolate"> Add a new Record </a>
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr>
                <td> </td>
                <td>CODE</td>
                <td>COUNTRY</td>
            </tr>
            <%while(rs1.next())
            {
            %>
            <tr>
                <td><a href="frmCountry.jsp?pkid=<%=rs1.getInt("country_id")%>" > SELECT </a></td>
                <td>
                    <%=rs1.getString("country_code")%>
                </td>
                 <td>
                    <%=rs1.getString("country")%>
                </td>
            </tr>
         <%}%>
        </table>
        </form>
    </body>
</html>
