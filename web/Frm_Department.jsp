<%-- 
    Document   : Department
    Created on : Apr 18, 2014, 4:28:53 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.clsdepartment"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
    clsdepartment obj=new clsdepartment();
    
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.Department_Id=pkid;
        obj.Retrive();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <%--<%@include file="Master.jsp"%>--%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
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
        alert('Department Must have alphabet characters only');
               //document.getElementById("demo1").innerHTML = "*";
        //document.getElementById("demo").innerHTML = "*  Must have alphabet characters only ";
        ctrlName.focus();
        return false;
    }
}
 function validateForm(){
    if(document.frm.txtDepartmentCode.value == "")
    {
        //alert('CODE SHOULD NOT BE LEFT BLANK');
        // document.getElementById("demo1").innerHTML = "*";
        document.getElementById("demo").innerHTML = "* CODE SHOULD NOT BE LEFT BLANK ";
        document.frm.txtDepartmentCode.focus();
        return false;
    }
     if(document.frm.txtDepartment.value == "")
    {
          //      document.getElementById("demo1").innerHTML = "*";
        document.getElementById("demo").innerHTML = "* DEPARTMENT SHOULD NOT BE LEFT BLANK ";
       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');
        document.frm.txtDepartment.focus();
        return false;
    }
    if(allLetter(document.frm.txtDepartment)==false)
       {
          return false; 
       }
    else
    {    
        return true;
    }
}
function fun1()
{
    //var str=document.getElementsByName("txtDepartment");
    document.getElementsByName("txtDepartment").value==document.getElementsByName("txtDepartment").toUpperCase();
}
</script>
</head>

<body>
    <form name="frm" action="Bll_Deparment.jsp" onsubmit="return validateForm();" method="post" >
<table width="100%">
  <tr>
    <td><table width="100%">
      <tr bgcolor="#000000">
        <td colspan="2"><h2><span class="style1">Department</span></h2></td>
        </tr>
      <tr>
        <td width="12%">Department Code </td>
        <td width="88%">
            <input name="txtDepartmentId" type="hidden" value="<%=obj.Department_Id%>" size="60%" />
            <input name="txtDepartmentCode" type="text" placeholder="Please Enter Code"  value="<%=obj.Department_Code%>" size="60%" />
       
        </td>
      </tr>
      <tr>
        <td>Department</td>
        <td><input name="txtDepartment" type="text" placeholder="Please Enter Department" onchange="fun1();" value="<%=obj.Department%>" size="60%" />
       
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><table width="32%">
          <tr>
            <% if(request.getParameter("pkid")!=null)
    {
%>        
                <td>
                    <input type="submit" value="UPDATE" name="btn" />
                    
                    <input type="submit" value="DELETE" name="btn"/>
  <%
    }
    else
    {
  %>
  <input type="submit" value="SAVE" name="btn" />    
    <%}%>        
    <input  type="submit" value="SHOW" onclick="this.form.submit(); return false;" name="btn"  />                    
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
