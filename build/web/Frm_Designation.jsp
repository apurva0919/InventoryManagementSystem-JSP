<%-- 
    Document   : Frm_Designation
    Created on : May 2, 2014, 5:02:54 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.clsdesignation"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clsdesignation obj=new clsdesignation();
    //ResultSet rs=obj.select();
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.Designation_Id=pkid;
        obj.Retrive();
        
    }
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@include file="Master.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #FF0000}
-->
</style>
<script type="text/javascript" lang="javascript" >
function allLetter(ctrlName){
    var letters = /^[A-Za-z]+$/;
    if(ctrlName.value.match(letters))
    {
        return true;
    }
    else
    {
       // alert('Designaion Must have alphabet characters only');
       document.getElementById("demo").innerHTML = "* Must have Alphabet Characters Only ";
       ctrlName.focus();
        return false;
    }
}
 function validateForm(){
     if(document.frm.txtDesignation.value == "")
    {
       // alert('DESIGNATION SHOULD NOT BE LEFT BLANK');
        document.getElementById("demo").innerHTML = "* DESIGNATION SHOULD NOT BE LEFT BLANK ";

        document.frm.txtDesignation.focus();
        return false;
    }
    if(allLetter(document.frm.txtDesignation)==false)
       {
          return false; 
       }
    else
    {    
        return true;
    }
}
</script>
</head>

<body>
    <form name="frm" action="Bll_Designation.jsp" method="post" onsubmit="return validateForm();">
<table width="100%">
  <tr bgcolor="#000000">
    <td><h2 class="style1">Designation </h2></td>
  </tr>
  <tr>
    <td><table width="50%">
      <tr>
        <td>Designation </td>
        <td><input name="txtDesignation" type="text" size="60" placeholder="Please Enter Designation" value="<%=obj.Designation%>" /></td>
        <td><input name="txtDesignationId" type="hidden" size="60" value="<%=obj.Designation_Id%>" /></td>

      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><table width="74%">
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
                    <input type="submit" value="SHOW" name="btn" onclick="this.form.submit(); return false"/>                    
                </td>
            </tr>
        </table></td>
      </tr>
        </table></td>
  </tr>
</table>
                    <h3> <span class="style2" id="demo"></span></h3>
</form>
</body>
</html>
