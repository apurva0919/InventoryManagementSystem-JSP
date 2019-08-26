<%-- 
    Document   : Payment_Mode
    Created on : Apr 28, 2014, 12:14:42 AM
    Author     : VAIBHAV
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.ClsUserType"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    ClsUserType obj=new ClsUserType();
    //ResultSet rs=obj.select();
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.User_Type_Id=pkid;
        obj.Retrive();
        
    }
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="Master.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Payment Mode</title>
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
      document.getElementById("demo").innerHTML = "* User Type Must have Alphabet Characters Only ";
       // alert('Must have alphabet characters only');
        ctrlName.focus();
        return false;
    }
}
 function validateForm(){
    if(document.frm.txtPaymentMode.value == "")
    {
       // document.frm.txtPaymentMode.value="PAYMENT MODE SHOULD NOT BE LEFT BLANK";
       //alert('PAYMENT MODE SHOULD NOT BE LEFT BLANK');
      // alert("ok");
       //alert( document.getElementByID("lblmsg"));
         //  document.getElementByName("lblmsg").value ="PAYMENT MODE SHOULD NOT BE LEFT BLANK";
         document.getElementById("demo").innerHTML = "* USER TYPE SHOULD NOT BE LEFT BLANK ";
            document.frm.txtPaymentMode.focus();
        return false;
    }
    if(allLetter(document.frm.txtPaymentMode)==false)
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
    <form name="frm" action="Bll_User_Type.jsp" method="post" onsubmit="return validateForm();">
<table width="100%">
  <tr bgcolor="#000000">
    <td><h1 class="style1">USER TYPE </h1></td>
  </tr>
  <tr>
    <td><table width="50%">
      <tr>
        <td>User Type </td>
        <td><input name="txtPaymentMode" type="text" size="80%" placeholder="Please Enter the User Type" value="<%=obj.User_Type%>" /></td>
        <td><input name="txtPaymentId" type="hidden" size="60" value="<%=obj.User_Type_Id%>" /></td>

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
                    <input type="submit" value="UPDATE" name="btn"/>
                
                    <input type="submit" value="DELETE" name="btn"/>      
  <%
    }
    else
    {
  %>
                    <input type="submit" value="SAVE" name="btn"/>    
    <%}%>       
    <input type="submit" value="SHOW"  name="btn"  />                    
                </td>
    </tr>
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
