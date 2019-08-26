<%-- 
    Document   : Frm_Company
    Created on : Aug 9, 2014, 5:00:34 PM
    Author     : VAIBHAV
--%>
<%@page import="DBpack.ClsCompany"%>
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
    ClsCompany obj=new ClsCompany();
    ResultSet rs=obj.select();
    
    if(request.getParameter("pkid")!= null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.Company_Id=pkid;
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
    if(document.frm.txtCompany.value == "")
    {
        //alert('CODE SHOULD NOT BE LEFT BLANK');
        document.getElementById("demo").innerHTML = "* COMPANY NAME SHOULD NOT BE LEFT BLANK ";
        document.frm.txtCompany.focus();
        return false;
    }
     if(document.frm.txtWebsite.value == "")
    {
        document.getElementById("demo").innerHTML = "* WEBSITE NAME SHOULD NOT BE LEFT BLANK ";
       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');
        document.frm.txtWebsite.focus();
        return false;
    }
    if(document.frm.txtMobile.value == "")
    {
        document.getElementById("demo").innerHTML = "* MOBILE NO. SHOULD NOT BE LEFT BLANK ";
       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');
        document.frm.txtMobile.focus();
        return false;
    }
       if(allLetter(document.frm.txtCompany)==false)
       {
          return false; 
       }
       if(ValidateEmail(document.frm.txtEmail)==false)
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
       if(allnumeric(document.frm.txtPincode)==false)
       {
          return false; 
       }
       if(allLetter(document.frm.txtContactPerson)==false)
       {
          return false; 
       }
       if(ValidateEmail(document.frm.txtContactEmail)==false)
       {
          return false; 
       }    
       if(allnumeric(document.frm.txtContactMobile)==false)
       {
          return false; 
       }
       else
    {    
        return true;
    }
}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
</head>

<body>
    <form name="frm" action="Bll_Company.jsp" method="post" onsubmit="return validateForm();">
<table width="100%">
  <tr bgcolor="#000000">
    <td><h2 class="style1">Company</h2></td>
  </tr>
  <tr>
    <td><table width="60%" align="center">
    <tr>
      <td colspan="4"><h3>Company Details </h3></td>
      </tr>
    <tr>
        <td width="18%">Company</td>
        <td width="32%"><input type="text" style="width:98%" name="txtCompany" value="<%=obj.Company_Name%>" />
                <input name="txtComapanyId" type="hidden" value="<%=obj.Company_Id%>"/>
</td>
        <td width="18%">Website</td>
        <td width="32%"><input type="text" style="width:98%" name="txtWebsite" value="<%=obj.Website%>" /></td>
	  </tr>
      <tr>
        <td width="18%">Mobile No. </td>
        <td width="32%"><input type="text" style="width:98%" name="txtMobile" value="<%=obj.Mobile%>" /></td>
        <td width="18%">Email Address </td>
        <td width="32%"><input type="text" style="width:98%" name="txtEmail"value="<%=obj.Email%>" /></td>
	  </tr>
      <tr>
        <td width="18%">Street 1 </td>
        <td width="32%" colspan="3"><input type="text" style="width:99%" name="txtStreet1" value="<%=obj.Street_1%>" /></td>    
	  </tr>
      <tr>
        <td width="18%">Street 2 </td>
        <td width="32%" colspan="3"><input type="text" style="width:99%" name="txtStreet2" value="<%=obj.Street_2%>" /></td>
	  </tr>
      <tr>
        <td width="18%">Street 3 </td>
		<td width="32%" colspan="3"><input type="text" style="width:99%" name="txtStreet3" value="<%=obj.Street_3%>" /></td>
	  </tr>
      <tr>
        <td width="18%">City</td>
        <td width="32%"><select name="selectCity" style="width: 99%" >
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
        </select></td>
        <td width="18%">State</td>
        <td width="32%"><select name="selectState" style="width: 99%" >
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
        <td width="18%">Country</td>
        <td width="32%"><select name="selectCountry" style="width: 99%" >
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
        <td width="18%"> Pincode </td>
        <td width="32%"><input type="text" style="width:98%" name="txtPincode" value="<%=obj.Pincode%>" /></td>
	  </tr>
      <tr>
        <td colspan="4"><hr /></td>
        </tr>
      <tr>
          <td colspan="4"><h3>Contact Person  </h3></td>
       <%-- <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>--%>
      </tr>
      <tr>
        <td>Name</td>
      	<td colspan="3"><input type="text" style="width:99%" name="txtContactPerson" value="<%=obj.Contact_Person%>" /></td>
      </tr>
      <tr>
        <td>Mobile No. </td>
        <td><input type="text" style="width:98%" name="txtContactMobile" value="<%=obj.Contact_Mobile%>" /></td>
        <td>Email Address </td>
        <td><input type="text" style="width:98%" name="txtContactEmail" value="<%=obj.Contact_Email%>" /></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td colspan="3"><table width="40%">
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
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
    <h3> <span class="style2" id="demo"></span></h3>
</form>
</body>
</html>
