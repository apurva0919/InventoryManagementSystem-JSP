<%-- 
    Document   : Frm_Bank
    Created on : Jul 10, 2014, 1:01:39 AM
    Author     : VAIBHAV
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clsBank"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    clsBank obj=new clsBank();
    if(request.getParameter("pkid")!=null)
    {
  
        ResultSet rsc=obj.select();
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.Bank_Id=pkid;
        obj.Retrive();
    }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@include file="Master.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Bank</title>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #FF0000}
-->
</style>
<script type="text/javascript">
function allLetter(ctrlName){
    var letters = /^[A-Za-z]+$/;
    if(ctrlName.value.match(letters))
    {
        return true;
    }
    else
    {
        document.getElementById("demo").innerHTML = "* Must have alphabet characters only ";
        //alert('Must have alphabet characters only');
        ctrlName.focus();
        return false;
    }
}
 function validateForm(){
    if(document.frm.txtBankCode.value == "")
    {
        //alert('STATE SHOULD NOT BE LEFT BLANK');
        document.getElementById("demo").innerHTML = "* BANK CODE SHOULD NOT BE LEFT BLANK ";
        document.frm.txtBankCode.focus();
        return false;
    }
    if(document.frm.txtBank.value == "")
    {
        document.getElementById("demo").innerHTML = "* BANK SHOULD NOT BE LEFT BLANK "; 
        //alert('CODE SHOULD NOT BE LEFT BLANK');
        document.frm.txtBank.focus();
        return false;
    }
    if(document.frm.txtBankDetails.value == "")
    {
        document.getElementById("demo").innerHTML = "* BANK DETAILS SHOULD NOT BE LEFT BLANK ";    
        //alert('CITY SHOULD NOT BE LEFT BLANK');
        document.frm.txtBankDetails.focus();
        return false;
    }
    if(allLetter(document.frm.txtBankCode)==false)
       {
          return false; 
       }
    else if(allLetter(document.frm.txtBank)==false)
       {
          return false; 
       } 
    else if(allLetter(document.frm.txtBankDetails)==false)
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
    <form name="frm" method="post" action="Bll_Bank.jsp" onsubmit="return validateForm();">
<table width="100%">
  <tr bgcolor="#000000">
    <td height="38"><h2 class="style1">Bank</h2></td>
  </tr>    
  <tr>
    <td height="95"><table width="50%" cellpadding="5">
      <tr>
        <td width="20%" height="24">Bank code </td>
        <td width="80%">
            <input name="txtBankID" type="hidden" size="60%" value="<%=obj.Bank_Id%>" />
            <input name="txtBankCode"  type="text" placeholder="Please Enter Code" size="67%" value="<%=obj.Bank_Code%>"/></td>
      </tr>
      <tr>
        <td>Bank</td>
        <td><input name="txtBank" type="text" size="67%" placeholder="Please Enter Bank" value="<%=obj.Bank%>"/></td>
      </tr>
      <tr>
        <td height="52">Details</td>
        <td><textarea name="txtDetails" placeholder="Please Enter Details" style="height: 100%" cols="54%"><%=obj.Details%></textarea></td>
      </tr>
      <tr>
        <td height="46">&nbsp;</td>
        <td><table width="70%" align="left">
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
                    <input type="submit" value="SHOW" onclick="this.form.submit(); return false;" name="btn"/>                    
                </td>          </tr>
        </table></td>
      </tr>

    </table></td>
  </tr>
</table>
                <h3> <span class="style2" id="demo"></span></h3>
</form>
</body>
</html>
                