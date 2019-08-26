<%-- 
    Document   : test1
    Created on : Mar 10, 2014, 11:53:38 PM
    Author     : VAIBHAV
--%>
    
<%@page import="IM.ClsCountry"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsCountry obj=new ClsCountry();
    
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.country_id=pkid;
        obj.getdatasingle();
    }
%>
<!DOCTYPE html>
<script type="text/javascript">
function allLetter(ctrlName)
{
    var letters = /^[A-Za-z]+$/;
    if(ctrlName.value.match(letters))
    {
        return true;
    }
    else
    {
        alert('Must have alphabet characters only');
        ctrlName.focus();
        return false;
    }
}
function validateForm()
{
    if(document.frm.txtcode.value=="")
    {
      alert(" Code should not be left blank");
      document.frm.txtName.focus();
      return false;
    }
    if(document.frm.txtcountry.value=="")
    {
      alert("Country Name should not be left blank");
      document.frm.txtName.focus();
      return false;
    }
    if(allLetter(document.frm.txtcode)==false)
       {
          return false; 
       }
    if(allLetter(document.frm.txtcountry)==false)
       {
          return false;
       }
}

</script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="frm" action="bllCountry.jsp" method="post" onSubmit="return validateForm();">        
        <h1>COUNTRY REGISTRATION</h1>
        <HR/>
        <table>
            <tr>
                <td>
                    COUNTRY CODE   :
                </td>
            <td>
                <input type="text" name="txtcode" value="<%=obj.code%>"/>
                </td>
            </tr>
            <tr>
                <td>
                   COUNTRY NAME    :
                </td>
            <td>
                <input type="text" name="txtcountry" value="<%=obj.country%>"/>  
                <input type="hidden" name="txtCountryID" value="<%=obj.country_id%>"/>
            </td>
            </tr>
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