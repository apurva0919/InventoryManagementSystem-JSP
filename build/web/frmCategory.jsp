<%-- 
    Document   : Category1
    Created on : Apr 30, 2014, 3:38:44 PM
    Author     : LOKENDRA SINGH
--%>

<%@page import="DBpack.ClsCategory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsCategory objC=new ClsCategory();
    if(request.getParameter("pkid")!=null)
       {
       Integer pkid=Integer.parseInt(request.getParameter("pkid"));
       objC.categoryid=pkid;
       objC.getdatasingle();
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
       // alert('Department Must have alphabet characters only');
        document.getElementById("demo").innerHTML = "*  Must have alphabet characters only ";
        ctrlName.focus();
        return false;
    }
}
function alphanumeric(uadd)
{
    var letters = /^[0-9a-zA-Z]+$/;
    if(uadd.value.match(letters))
    {
    return true;
    }
    else
    {
   // alert(' address must have alphanumeric characters only');
    document.getElementById("demo").innerHTML = "*  address must have alphanumeric characters only ";
    uadd.focus();
    return false;
    }
}


 function validateForm(){
    if(document.frm.textfield62.value == "")
    {
        //alert('CODE SHOULD NOT BE LEFT BLANK');
        document.getElementById("demo").innerHTML = "* CATEGORY SHOULD NOT BE LEFT BLANK ";
        document.frm.textfield62.focus();
        return false;
    }
     if(document.frm.textarea.value == "")
    {
        document.getElementById("demo").innerHTML = "* DESCRIPTION SHOULD NOT BE LEFT BLANK ";
       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');
        document.frm.textarea.focus();
        return false;
    }
       if(allLetter(document.frm.textfield62)==false)
       {
          return false; 
       }
       if(allLetter(document.frm.textarea)==false)
       {
          return false; 
       }
    else
    {    
        return true;
    }
}
</script>
<!DOCTYPE html>
<html>
<head>
    <%@include file="Master.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Category Page</title>
<style type="text/css">
<!--
body,td,th {
	color: #000000;
}
body {
	background-image: url();
	background-color: #CCCCCC;
}
.style4 {font-size: x-large}
.style5 {color: #FFFFFF}
-->
</style></head>

<body>
    <form name="frm" action="bllCategory.jsp" method="post" onsubmit="return validateForm()"/>
<table width="100%" height="306" border="0" align="center">
  <tr>
    <td height="100" colspan="4" bgcolor="#990000"><span class="style4"><span class="style5"><img src="image/category.png" width="72" height="93" /><strong>Category</strong></span></span></td>
  </tr>
  <tr>
    <td width="150" height="27"><div align="left">Category</div></td>
    <td height="24" colspan="3"><label>
      <div align="left">
        <input name="textfield62" type="text" size="98%" value="<%=objC.category%>"/>
      </div>
    </label>      <label></label>    </td>
  </tr>
  <tr>
    <td height="21"><div align="left">Description</div></td>
    <td height="21" colspan="3"><label>
        </label>
    <textarea name="textarea" cols="74%" rows="5"><%=objC.description%></textarea></td>
  </tr>
  <tr>
    <td height="21">&nbsp;</td>
    <td width="260">      <label></label>    </td>
    <td width="260" height="21">&nbsp;</td>
    <td width="260">&nbsp;</td>
  </tr>
  
  <tr>
    <td height="26">&nbsp;</td>
    <td colspan="2"><input type="submit" name="Cbtn" value="Save" />
        <input type="submit" name="Cbtn" value="Update" />
        <input type="submit" name="Cbtn" value="Delete" />
        <input type="submit" name="Cbtn" value="Reset" />
        <input type="submit" name="Cbtn" value="Show" /></td>
    <td><label>
        <div align="left"></div>
      <div align="left"></div></td>
  </tr>
  <tr>
      <td><input type="hidden" name="hdnCategoryID" value="<%=objC.categoryid%>" /></td>
  </tr>
</table>
   <h3> <span class="style3" id="demo"></span></h3>
</body>
</html>
