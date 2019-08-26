<%-- 
    Document   : show
    Created on : Mar 12, 2014, 11:58:06 PM
    Author     : VAIBHAV
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clscountry"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clscountry obj=new clscountry();
    ResultSet rs=obj.select();
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Country List</h2><hr/>
        <form action="Frm_Country.jsp" method="post">
                <table>
                    <tr>
                        <td>
                            <a href="Frm_Country.jsp" style="color: chocolate"> Add a new Record </a>
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr>
                <td> </td>
                <td>CODE</td>
                <td>COUNTRY</td>
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="Frm_Country.jsp?pkid=<%=rs.getInt("country_id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("country_code")%>
                </td>
                 <td>
                    <%=rs.getString("country")%>
                </td>
            </tr>
         <%}%>
        </table>
        </form>
    </body>
</html>
