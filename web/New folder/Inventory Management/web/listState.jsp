<%-- 
    Document   : showstate
    Created on : Mar 17, 2014, 9:24:10 PM
    Author     : VAIBHAV
--%>
<%@page import="IM.ClsState"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsState obj=new ClsState();
    ResultSet rs=obj.list();
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="frmState.jsp" method="post">

               <table>
                    <tr>
                        <td>
                            <input type="submit" value="MAIN PAGE"/>
                        </td>
                    </tr>
                </table>
        <table border="1">
            <tr>
                <td></td>
                <td>CODE</td>
                <td>STATE</td>
                <td>COUNTRY</td>
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td><a href="frmState.jsp?pkid=<%=rs.getInt("state_id")%>" > SELECT </a></td>
                <td>
                    <%=rs.getString("state_code")%>
                </td>
                 <td>
                    <%=rs.getString("state")%>
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
