<%-- 
    Document   : Payment_Mode
    Created on : Apr 28, 2014, 12:14:42 AM
    Author     : VAIBHAV
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clspayment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    clspayment obj=new clspayment();
    //ResultSet rs=obj.select();
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.Payment_Mode_Id=pkid;
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
      document.getElementById("demo").innerHTML = "* Payment Mode Must have Alphabet Characters Only ";
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
         document.getElementById("demo").innerHTML = "* PAYMENT MODE SHOULD NOT BE LEFT BLANK ";
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
<APPLET CODE="Hello.class" WIDTH="800" HEIGHT="500">
</APPLET>    
    <form name="frm" action="Bll_Payment_Mode.jsp" method="post" onsubmit="return validateForm();">
<table width="100%">
  <tr bgcolor="#000000">
    <td><h1 class="style1">PAYMENT MODE </h1></td>
  </tr>
  <tr>
    <td><table width="50%">
      <tr>
        <td>Payment Mode </td>
        <td><input name="txtPaymentMode" type="text" size="60" placeholder="Please Enter the Payment Mode" value="<%=obj.Payment_Mode%>" /></td>
        <td><input name="txtPaymentId" type="hidden" size="60" value="<%=obj.Payment_Mode_Id%>" /></td>

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
    <input type="submit" value="SHOW" name="btn" onclick="this.form.submit(); return false;"/>                    
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
