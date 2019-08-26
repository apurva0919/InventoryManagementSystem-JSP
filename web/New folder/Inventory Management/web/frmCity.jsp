<%-- 
    Document   : Frm_city
    Created on : Apr 23, 2014, 6:19:33 PM
    Author     : VAIBHAV
--%>

<%@page import="IM.ClsCity"%>
<%@page import="IM.ClsState"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsState objs=new ClsState();
    ClsCity obj=new ClsCity();
    ResultSet rs=obj.select();
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.city_id=pkid;
        obj.Retrive();
        
    }
%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>City Registration </title>
        
    </head>
    <body>
 <form action="bllCity.jsp " method="post">        
        <h1>CITY REGISTRATION</h1><hr/>
        <table style="width: 50%">
            <tr>
                <%-- <td style="width: 25%">
                      CODE
                </td>
            <td style="width: 25%">
                <input type="text" name="txtcode" value="<%=obj.code%>" size="50%"/>--%>
                <input type="hidden" name="txtcityID" value="<%=obj.city_id%>"/>

                </td>
            </tr>
            <tr>
                <td style="width: 25%">
                   CITY  
                </td>
            <td style="width: 25%">
                <input type="text" name="txtcity" value="<%=obj.city%>"size="50%"/>  
            </td>
            </tr>
            <tr>
                <td style="width: 25%">
                    STATE 
                </td>
                                <td style="width: 25%">
                    <select name="drpstate" style="width: 87%" >
                        <%while(rs.next())
                        { 
                            if(rs.getString("state_id").equals(obj.state_id))
                                {
                        %>
                        <option value="<%=rs.getString("state_id")%>" selected="true"><%=rs.getString("state")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rs.getString("state_id")%>"><%=rs.getString("state")%></option>
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
