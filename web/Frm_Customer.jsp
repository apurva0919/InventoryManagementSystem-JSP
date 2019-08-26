<%-- 
    Document   : Frm_User
    Created on : Apr 20, 2014, 7:16:00 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.ClsCustomer"%>
<%@page import="DBpack.ClsUserType"%>
<%@page import="DBpack.clscity"%>
<%@page import="java.sql.ResultSet"%>
<%@page import=" DBpack.clscountry"%>
<%@page import="DBpack.clsstate"%>
<%@page import="DBpack.clsuser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
   ClsCustomer obj= new ClsCustomer();
    clscountry objc=new clscountry();
    ResultSet rsc=objc.select();
    clsstate objs=new clsstate();
    ResultSet rss=objs.select();
    clscity objcc=new clscity();
    ResultSet rscc=objcc.select();
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.Customer_Id=pkid;
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
     if(document.frm.txtMiddle.value == "")
    {
        document.getElementById("demo").innerHTML = "* MIDDLE NAME SHOULD NOT BE LEFT BLANK ";
       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');
        document.frm.txtMiddle.focus();
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
       if(allLetter(document.frm.txtMiddle)==false)
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
       if(ValidateEmail(document.frm.txtEmailAddress)==false)
       {
          return false; 
       }
       if(alphanumeric(document.frm.txtStreet1)==false)
       {
          return false; 
       } 
       if(alphanumeric(document.frm.txtStreet2)==false)
       {
          return false; 
       } 
       if(alphanumeric(document.frm.txtStreet3)==false)
       {
          return false; 
       }
       if(allnumeric(document.frm.txtPinCode)==false)
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
    <script src="Script/datetimepicker_css.js"></script>
    <%@include file="Master.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Customer Registration</title>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #000000}
.style3 {color: #FF0000}
-->
</style>
</head>
<body>  
    <form name="frm" action="Bll_Customer.jsp" method="post"onsubmit="return validateForm()">
<table width="100%">
  <tr>
    <td height="41" bgcolor="#000000"><h2><span class="style1">Customer  Registration </span></h2></td>
  </tr>
  <tr>
    <td><table width="60%" align="center" >
      <tr>
        <td width="7%" class="style2">Name </td>
        <td width="28%" class="style2"><p>
                <input name="txtFirst" type="text" size="40%" placeholder="Enter First Name"value="<%=obj.First_Name%>" />
          <input name="txtUserId" type="hidden" size="40%" value="<%=obj.Customer_Id%>"/>
        </p>          </td>
        <td width="15%" class="style2"><p>
                <input name="txtMiddle" type="text" size="20%" placeholder="Enter Middle Name" value="<%=obj.Middle_Name%>" />
        </p>          </td>
		  <td width="50%" class="style2"><p>
                          <input name="txtLast" type="text" size="40%" placeholder="Enter Last Name" value="<%=obj.Last_Name%>"/>
		  </p>		    </td>
        </tr>
   <%--   <tr>
        <td class="style2">&nbsp;</td>
        <td class="style2">First Name </td>
		<td class="style2">Middle Name </td>
		<td class="style2">Last Name </td>
      </tr>--%>
          <%
          
          %>
      <tr>
        <td class="style2">Gender</td>
        <td class="style2"><input name="radiobutton" type="radio"  value="Male" />
          Male 
            <input name="radiobutton" type="radio" value="Female" /> 
            Female </td>
        <td class="style2">Date of Birth</td>
        <td class="style2">
            <input type="text"  id="txtDateofBirth" name="txtDateofBirth" size="40%" placeholder="Enter Date in YYYYMMDD" value="<%=obj.DOB%>">
            <img src="Images/Images.PNG"width="20px" height="20px" onclick="NewCssCal('txtDateofBirth','YYYYMMDD')" style="cursor:pointer"/>        </td>
        </tr>
      <tr>
        <td class="style2">Mobile</td>
        <td class="style2"><input name="txtMobile" type="text" size="40%" value="<%=obj.Mobile%>" placeholder="Enter Mobile No." /></td>
        <td class="style2">Email Address </td>
        <td class="style2"><input name="txtEmailAddress" type="text" size="40%" placeholder="abc@mail.com" value="<%=obj.Email%>" /></td>
        </tr>
      <tr>
        <td class="style2">Address</td>
        <td colspan="3" class="style2"><input type="text" name="txtStreet1" size="100%" placeholder="Enter Street 1" value="<%=obj.Street_1%>" /></td>
      </tr>
      <tr>
        <td class="style2">&nbsp;</td>
        <td colspan="3" class="style2"><input type="text" name="txtStreet2" size="100%" placeholder="Enter Street 2" value="<%=obj.Street_2%>"  /></td>
      </tr>
      <tr>
	    <td class="style2">&nbsp;</td>
            <td colspan="3" class="style2"><input type="text" name="txtStreet3" size="100" placeholder="Enter Street 3" value="<%=obj.Street_3%>"  /></td>
      </tr>
      <tr>
        <td class="style2">City</td>
        <td> <select name="selectCity" style="width: 100%" >
         <option value="0" selected="true">-----Select-----</option>

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
        </select></td>
        <td>State</td>
        <td> <select name="selectState" style="width: 72%" >
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
        </select></td>
      </tr>
      <tr>
        <td class="style2">Country</td>
        <td><select name="selectCountry" style="width: 100%" >
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
        <td>Pin Code </td>
        <td><span class="style2">
                <input name="txtPinCode" type="text" size="40%" placeholder="Enter PinCode" value="<%=obj.Pincode%>"  />
        </span></td>
      </tr>
      <tr>
	  <td class="style2">&nbsp;</td>
        <td colspan="3" class="style2"><table width="40%" align="left">
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
    </td>
  </tr>
</table>
</form>
                <h3> <span class="style3" id="demo"></span></h3>
</body>
</html>
