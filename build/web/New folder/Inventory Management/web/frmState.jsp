<%-- 
    Document   : frmstate
    Created on : Mar 17, 2014, 12:56:24 PM
    Author     : VAIBHAV
--%>

<%@page import="IM.ClsCountry"%>
<%@page import="IM.ClsState"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsState obj=new ClsState();
    ClsCountry objc=new ClsCountry();
    ResultSet rs=objc.list();
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.state_id=pkid;
        obj.getdatasingle();
        
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <form action="bllState.jsp " method="post">        
        <h1>STATE REGISTRATION</h1><hr/>
        <table style="width: 50%">
            <tr>
                <td style="width: 25%">
                     CODE
                </td>
            <td style="width: 25%">
                <input type="text" name="txtcode" value="<%=obj.code%>" size="50%"/>
                <input type="hidden" name="txtstateID" value="<%=obj.state_id%>"/>

                </td>
            </tr>
            <tr>
                <td style="width: 25%">
                   STATE  
                </td>
            <td style="width: 25%">
                <input type="text" name="txtstate" value="<%=obj.state%>"size="50%"/>  
            </td>
            </tr>
            <tr>
                <td style="width: 25%">
                    COUNTRY 
                </td>
                                <td style="width: 25%">
                    <select name="drpcountry" style="width: 87%" >
                        <%while(rs.next())
                        { 
                            if(rs.getString("country_id").equals(obj.c_id))
                                {
                        %>
                        <option value="<%=rs.getString("country_id")%>" selected="true"><%=rs.getString("country")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rs.getString("country_id")%>"><%=rs.getString("country")%></option>
                      <%
                            } 
  }%>
                    </select>
                </td>
            </tr>        
        </table>
         <table style="width:50%">
            <tr>
<% if(request.getParameter("pkid")!=null)
    {
%>        
                <td>
                    <input type="submit" value="UPDATE" name="btn"/>
                </td>
                <td>
                    <input type="submit" value="DELETE" name="btn"/>
                </td>
  <%
    }
    else
    {
  %>
                <td>
                    <input type="submit" value="SAVE" name="btn"/>    
                </td>
                
    <%}%>       
                <td>
                    <input type="submit" value="SHOW" name="btn"/>                    
                </td>
            </tr>
       </table>            
</form>    
    </body>
</html>
