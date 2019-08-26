<%-- 
    Document   : index
    Created on : Apr 18, 2014, 4:25:13 AM
    Author     : LOKENDRA SINGH
--%>
<%@page import="IM.ClsFeedback"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsFeedback objF=new ClsFeedback();
    if(request.getParameter("pkid")!=null)
       {
       Integer pkid=Integer.parseInt(request.getParameter("pkid"));
       objF.feedbackid=pkid;
       objF.getdatasingle();
       }

%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Feedback Page</title>
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
    <form action="bllFeedback.jsp" method="post"/>
<table width="100%" height="268" border="0" align="center">
  <tr>
    <td height="100" colspan="4" bgcolor="#990000"><span class="style4"><span class="style5"><img src="image/feedback-icon.png" width="72" height="93" /><strong>Feedback</strong></span></span></td>
  </tr>
  <tr>
    <td width="150" height="24"><div align="left">Customer Name </div></td>
    <td height="24" colspan="3"><div align="left">
            <input name="textfield62" type="text" size="100%" value="<%=objF.customername%>" />
    </div></td>
  </tr>
  <tr>
    <td height="85"><div align="left">Feedback</div></td>
    <td height="85" colspan="2"><div align="left">
            <textarea name="textarea" cols="74%" rows="5"><%=objF.feedback%></textarea>
    </div></td>
    <td width="260">&nbsp;</td>
  </tr>
  <tr>
    <td height="21">&nbsp;</td>
    <td width="260" height="21">&nbsp;</td>
    <td width="260" height="21">&nbsp;</td>
    <td height="21">&nbsp;</td>
  </tr>
  
  <tr>
    <td height="26">&nbsp;</td>
    <td height="26" colspan="3"><input type="submit" name="Fbtn" value="Save" />
      <input type="submit" name="Fbtn" value="Update" />
      <input type="submit" name="Fbtn" value="Delete" />
      <input type="submit" name="Fbtn" value="Reset" />
    <input type="submit" name="Fbtn" value="Show" /></td>
  </tr>
  <tr>
      <td><input type="hidden" name="hdnFeedbackID" value="<%=objF.feedbackid%>" /></td>
  </tr>
</table>
</body>
</html>
