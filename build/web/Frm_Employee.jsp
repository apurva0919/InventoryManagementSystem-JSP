<%-- 
    Document   : Frm_Employee
    Created on : Apr 30, 2014, 11:42:08 PM
    Author     : VAIBHAV
--%>
<%@page import="DBpack.clsEmployee"%>
<%@page import="DBpack.clsdepartment"%>
<%@page import="DBpack.clsdesignation"%>
<%@page import="DBpack.clsuser"%>
<%@page import="DBpack.clscity"%>
<%@page import="DBpack.clsstate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clscountry"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    clscountry objc=new clscountry();
    ResultSet rsc=objc.select();
    clsstate objs=new clsstate();
    ResultSet rss=objs.select();
    clscity objcc=new clscity();
    ResultSet rscc=objcc.select();
    clsdesignation objdes=new clsdesignation();
    ResultSet rsdes=objdes.select();
    clsdepartment objdept=new clsdepartment();
    ResultSet rsdept=objdept.select();
    clsEmployee obj=new clsEmployee();
    ResultSet rs=obj.select();
    
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.Employee_Id=pkid;
        obj.Retrive();
    }
%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%@include file="Master.jsp"%>
    <script src="Script/datetimepicker_css.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #000000}
.style3 {color: #FF0000}
-->
</style>

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
function allnumeric(ctrlName)
{
    var numbers = /^[0-9]+$/;
    if(ctrlName.value.match(numbers))
    {
    return true;
    }
    else
    {
          document.getElementById("demo").innerHTML = "*  must have numeric characters only ";  
            //alert(' must have numeric characters only');
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
function ValidateEmail(ctrlName)
{
var x=ctrlName.value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  document.getElementById("demo").innerHTML = "*  Not a Valid E-Mail Address ";    
  //alert("Not a valid e-mail address");
  ctrlName.focus();
  return false;
  }
}

 function validateForm(){
    if(document.frm.txtFirst.value == "")
    {
        //alert('CODE SHOULD NOT BE LEFT BLANK');
        document.getElementById("demo").innerHTML = "* FIRST NAME SHOULD NOT BE LEFT BLANK ";
        document.frm.txtFirst.focus();
        return false;
    }
    if(document.frm.txtLast.value == "")
    {
        document.getElementById("demo").innerHTML = "* LAST NAME SHOULD NOT BE LEFT BLANK ";
       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');
        document.frm.txtLast.focus();
        return false;
    }
       if(allLetter(document.frm.txtFirst)==false)
       {
          return false; 
       }
       
       if(allLetter(document.frm.txtLast)==false)
       {
          return false; 
       }
       if(allnumeric(document.frm.txtMobile)==false)
       {
          return false; 
       }    
       if(alphanumeric(document.frm.txtStreet1)==false)
       {
          return false; 
       } 
       if(allnumeric(document.frm.txtPinCode)==false)
       {
          return false; 
       }
       if(allnumeric(document.frm.txtSalary)==false)
       {
          return false; 
       }
       if(ValidateEmail(document.frm.txtEmailAddress)==false)
       {
          return false; 
       }
       if(alphanumeric(document.frm.txtEducation)==false)
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
    <form name="frm" action="Bll_Employee.jsp" method="post" onsubmit="return validateForm()">
<table width="100%">
  <tr bgcolor="#000000">
    <td colspan="2"><h2><span class="style1">EMPLOYEE REGISTRATION</span></h2></td>
  </tr>
  <tr>
    <td colspan="2"><table width="80%" align="center">
      <tr>
        <td width="10%">Name</td>
        <td width="31%"><input name="txtFirst" type="text" size="45%" placeholder="Enter First Name" value="<%=obj.First_Name%>"/></td>
        <td width="18%"><input name="txtMiddle" type="text" size="22%" placeholder="Enter Middle Name" value="<%=obj.Middle_Name%>" /></td>
        <td width="41%"><input name="txtLast" type="text" size="45%" placeholder="Enter Last Name" value="<%=obj.Last_Name%>" /></td>
        <input name="txtEmployeeId" type="hidden" size="40%" value="<%=obj.Employee_Id%>"/>
      </tr>
     <%-- <tr>
        <td height="28">&nbsp;</td>
        <td>First Name </td>
        <td>Middle Name </td>
        <td>Last Name </td>
      </tr>--%>
      <tr>
        <td>Gender</td>
        <td>
            <label>
            <input name="radiobutton" type="radio"  value="<%=obj.Gender%>" />
            </label>
            Male
            <label>
            <input name="radiobutton" type="radio"  value="<%=obj.Gender%>" />
            </label>
            Female
        </td>
        <td>Birthday</td>
      <td>
      <input type="text"  id="txtDateofBirth" name="txtBirthDate" size="45%" placeholder="Select Date yyyy-mm-dd" value="<%=obj.DOB%>">
      <img src="Images/Images.PNG"width="20px" height="20px" onclick="NewCssCal('txtDateofBirth','YYYYMMDD')" style="cursor:pointer"/>
      </td>
      </tr>
      <tr>
        <td>Department</td>
          <td><select name="selectDepartmentId" style="width: 93%" >
                         <option value="0" selected="true">-----Select-----</option>

                        <%while(rsdept.next())
                        { 
                            if(rsdept.getInt("Department_Id")==(objdept.Department_Id))
                                {
                        %>
                        <option value="<%=rsdept.getInt("Department_Id")%>" selected="true"><%=rsdept.getInt("Department_Id")%></option>
                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rsdept.getInt("Department_Id")%>"><%=rsdept.getString("Department")%></option>
                      <%
                            } 
  }%>
         </select></td>
        <td>Designation</td>
        <td><select name="selectDesignationId" style="width: 70%" >
                <option value="0" selected="true">-----Select-----</option>
                        <%while(rsdes.next())
                        { 
                            if(rsdes.getInt("Designation_Id")==(objdes.Designation_Id))
                                {
                        %>
                        <option value="<%=rsdes.getInt("Designation_Id")%>" selected="true"><%=rsdes.getString("Designation")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rsdes.getInt("Designation_Id")%>"><%=rsdes.getString("Designation")%></option>
                      <%
                            } 
  }%>
                    </select></td>
       <tr>
           <td>Mobile No.</td>
           <td><input type="text" name="txtMobile" size="45%" placeholder="Enter your Mobile No." value="<%=obj.Mobile%>"</td>
           <td>Phone No.</td>
           <td><input type="text" name="txtPhone" size="45%" placeholder="Enter your Phone NO" value="<%=obj.Phone%>"</td>
       </tr>
      </tr>
      <tr>
        <td>Address</td>
        <td colspan="3"><input name="txtStreet1" type="text" size="133%" placeholder="Enter Street 1" value="<%=obj.Street_1%>" /></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td colspan="3"><input name="txtStreet2" type="text" size="133%" placeholder="Enter Street 2" value="<%=obj.Street_2%>" /></td>
      </tr>
      <tr>
	  <td>&nbsp;</td>
        <td colspan="3"><input name="txtStreet3" type="text" size="133%" placeholder="Enter Street 3" value="<%=obj.Street_3%>" /></td>
      </tr>
      <tr>
        <td>City</td>
<td> <select name="selectCity" style="width: 93%" >
        <option value="0" selected="true">----Select-----</option>
                        <%while(rscc.next())
                        { 
                            if(rscc.getInt("City_Id")==(obj.City_Id))
                                {
                        %>
                        <option value="<%=rscc.getInt("City_Id")%>" selected="true"><%=rscc.getString("City")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rscc.getInt("City_Id")%>"><%=rscc.getString("City")%></option>
                      <%
                            } 
  }%>
        </select></td>        <td>Pin Code </td>
        <td><input name="txtPinCode" type="text" size="45%" placeholder="Enter Pincode" value="<%=obj.Pincode%>" /></td>
      </tr>
      <tr>
        <td>State</td>
<td> <select name="selectState" style="width: 93%" >
        <option value="0" selected="true">-----Select-----</option>
                       <%while(rss.next())
                        { 
                            if(rss.getInt("state_id")==(obj.state_id))
                                {
                        %>
                        <option value="<%=rss.getInt("state_id")%>" selected="true"><%=rss.getString("state")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rss.getInt("state_id")%>"><%=rss.getString("state")%></option>
                      <%
                            } 
  }%>
        </select></td>        <td>Country</td>
<td><select name="selectCountry" style="width: 70%" >
        <option value="0" selected="true">-----Select-----</option>
                        <%while(rsc.next())
                        { 
                            if(rsc.getInt("country_id")==(obj.country_id))
                                {
                        %>
                        <option value="<%=rsc.getInt("country_id")%>" selected="true"><%=rsc.getString("country")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rsc.getInt("country_id")%>"><%=rsc.getString("country")%></option>
                      <%
                            } 
  }%>
                    </select></td>      
      </tr>
      <tr>
        <td>Date of Joining </td>
        <td>
        <input type="text"  id="txtDateofJoining" name="txtJoiningDate" size="40%" placeholder="Enter Joining Date" value="<%=obj.DOJ%>">
        <img src="Images/Images.PNG"width="20px" height="20px" onclick="NewCssCal('txtDateofJoining','YYYYMMDD')" style="cursor:pointer"/>
        </td>
        <td>Salary</td>
        <td><input name="txtSalary" type="text" size="45%"value="<%=obj.Salary%>" placeholder="Enter your Salary" /></td>
      </tr>
      <tr>
        <td>Email Address</td>
        <td><input type="text" name="txtEmailAddress" size="45%" placeholder="abc@mail.com" value="<%=obj.Email%>"</td>  
        <td>Educational Level</td>
        <td><textarea name="txtEducation" placeholder="Enter Education Level" cols="35%"><%=obj.Education%></textarea></td>
      </tr>
    </table>    </td>
  </tr>

  <tr>
  <td width="18%">&nbsp;</td>
    <td width="93%"><table width="25%">
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
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
</table>
                <h3> <span class="style3" id="demo"></span></h3>
</form>
</body>
</html>

