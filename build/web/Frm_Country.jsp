<%-- 
    Document   : test1
    Created on : Mar 10, 2014, 11:53:38 PM
    Author     : VAIBHAV
--%>
    
<%@page import="DBpack.clscountry"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clscountry obj=new clscountry();
    
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.country_id=pkid;
        obj.Retrive();
    }
%>
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
        document.getElementById("demo").innerHTML = "* Must have Alphabet Characters Only ";
        //alert('Must have alphabet characters only');
        ctrlName.focus();
        return false;
    }
}
function validateForm()
{
    if(document.frm.txtcode.value=="")
    {
      //alert(" Code should not be left blank");
      document.getElementById("demo").innerHTML = "* Code should not be left blank ";
      document.frm.txtcode.focus();
      return false;
    }
    if(document.frm.txtcountry.value=="")
    {
        document.getElementById("demo").innerHTML = "* Country Name should not be left blank ";
      //alert("Country Name should not be left blank");
      document.frm.txtcountry.focus();
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
       return true;
}

</script>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Master.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COUNTRY PAGE</title>
        <style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #FF0000}
-->
</style>
    </head>
    <body>
     
        <form name="frm" action="Bll_Country.jsp" method="post" onSubmit="return validateForm();">        
        <h1>COUNTRY REGISTRATION</h1>
        <HR/>
        <table>
            <tr>
                <td>
                    COUNTRY CODE   :
                </td>
            <td>
                <input type="text" name="txtcode" placeholder="Enter the Code" value="<%=obj.code%>"/>
                </td>
            </tr>
            <tr>
                <td>
                   COUNTRY NAME    :
                </td>
            <td>
                <input type="text" name="txtcountry" placeholder="Enter the Country " value="<%=obj.country%>"/>  
                <input type="hidden" name="txtCountryID" value="<%=obj.country_id%>"/>
            </td>
            </tr>
              <tr>
                    <td>&nbsp;</td>
                    <td>
                            <table width="74%">
          <tr>
<% if(request.getParameter("pkid")!=null)
    {
%>        
                <td>
                    <input type="submit" value="UPDATE" name="btn"/>
                    <input type="submit" value="DELETE" name="btn"/>            
  <%
    }
    else
    {
  %>
                    <input type="submit" value="SAVE" name="btn"/>    
    <%}%>       
                    <input type="submit" value="SHOW" onclick="this.form.submit(); return false;" name="btn"/>                    
                </td>
            </tr>
        </table>
                    </td>
                </tr>

        </table>
                <h3> <span class="style2" id="demo"></span></h3>
</form>    
    </body>
</html>