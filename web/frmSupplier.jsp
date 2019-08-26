<%-- 
    Document   : Supplier
    Created on : Apr 28, 2014, 5:26:40 PM
    Author     : LOKENDRA SINGH
--%>

<%@page import="DBpack.ClsSupplier"%>
<%@page import="DBpack.clscity"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
       clscity objC=new clscity();
       ClsSupplier objS=new ClsSupplier();
       ResultSet rs1=objC.select();
       if(request.getParameter("pkid")!=null)
       {
       Integer pkid=Integer.parseInt(request.getParameter("pkid"));
       objS.supplierid=pkid;
       objS.getdatasingle();

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
    if(document.frm.supplier.value == "")
    {
        //alert('CODE SHOULD NOT BE LEFT BLANK');
        document.getElementById("demo").innerHTML = "* SUPPLIER NAME SHOULD NOT BE LEFT BLANK ";
        document.frm.supplier.focus();
        return false;
    }
     if(document.frm.contact.value == "")
    {
        document.getElementById("demo").innerHTML = "* CONTACT SHOULD NOT BE LEFT BLANK ";
       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');
        document.frm.contact.focus();
        return false;
    }
    if(document.frm.email.value == "")
    {
        document.getElementById("demo").innerHTML = "* EMAIL SHOULD NOT BE LEFT BLANK ";
       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');
        document.frm.email.focus();
        return false;
    }
       if(allLetter(document.frm.supplier)==false)
       {
          return false; 
       }   
       if(allnumeric(document.frm.contact)==false)
       {
          return false; 
       }    
         if(ValidateEmail(document.frm.email)==false)
       {
          return false; 
       }
       if(alphanumeric(document.frm.street1)==false)
       {
          return false; 
       } 
       if(alphanumeric(document.frm.street2)==false)
       {
          return false; 
       } 
       if(alphanumeric(document.frm.street3)==false)
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
<html><head>
<%@include file="Master.jsp"%>
<title>Supplier Page</title>
<style type="text/css">
<!--
body,td,th {
	color: #000000;
}
body {
	background-image: url();
	background-color: #CCCCCC;
}
.style5 {
	color: #FFFFFF;
	font-size: x-large;
}
.style6 {color: #FF0000}
-->
</style></head>

<body>
    <form name="frm"action="bllSupplier.jsp" method="post" onsubmit="return validateForm()">
<table width="100%" height="372" border="0" align="center" >
  <tr>
      <td colspan="4" bgcolor="#000000"><span class="style5"><h2>Supplier</h2></span></td>
  </tr>
  <tr>
    <td width="150" height="27"><div align="left">Supplier</div></td>
    <td width="260"><label>
      <div align="left">
          <input type="text" size="35" name="supplier" placeholder="Enter the Supplier Name" value="<%=objS.supplier%>"/>      
      </div>
    </label></td>
    <td width="260" height="24"><div align="left">Contact No. </div></td>
    <td width="257"><div align="left">
            <input type="text" size="35" name="contact" placeholder="Enter the Contact No."value="<%=objS.contact%>" />
    </div></td>
  </tr>
  <tr>
    <td height="21">Email Id </td>
    <td height="21" colspan="3"><div align="left">
      <div align="left">
          <input type="text" size="161" placeholder="Email in Format abc@mail.com" name="email" value="<%=objS.email%>" />
      </div>
    </div></td>
  </tr>
  <tr>
    <td height="21"><div align="left">Address:</div></td>
    <td>&nbsp;</td>
    <td height="21">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24"><div align="left">Street 1 </div></td>
    <td height="24" colspan="3"><div align="left">
        <label></label>
        <div align="left">
          <input type="text" size="161" placeholder="Enter the Street " name="street1" value="<%=objS.street1%>" />
        </div>
    </div>      <div align="left"></div></td>
  </tr>
  
  <tr>
    <td height="43"><div align="left">Street 2<span class="style6"> * </span></div></td>
    <td height="43" colspan="3"><label>
      <div align="left">
        <div align="left">
          <input type="text" size="161" placeholder="Enter the Street " name="street2" value="<%=objS.street2%>" />
        </div>
      </div>
    <div align="left"></div>      <div align="left"></div></td>
  </tr>
  <tr>
    <td height="24"><div align="left">Street 3<span class="style6"> *</span> </div></td>
    <td height="24" colspan="3"><div align="left">
      <div align="left">
        <input type="text" size="161" placeholder="Enter the Street " name="street3" value="<%=objS.street3%>" />
      </div>
    </div>      <div align="left">
        <label></label>
    </div></td>
  </tr>
  <tr>
    <td height="24"><div align="left">City</div></td>
    <td><div align="left">
      <select name="drpcity" style="width: 87%" >
                        <%while(rs1.next())
                        { 
                            if(rs1.getString("city_id").equals(objC.city_id))
                                {
                        %>
                        <option value="<%=rs1.getString("city_id")%>" selected="true"><%=rs1.getString("city")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rs1.getString("city_id")%>"><%=rs1.getString("city")%></option>
                      <%
                            } 
  }%>
                    </select>
    </div></td>
    <td height="24">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="21">&nbsp;</td>
    
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
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
   <tr>
      <td><input type="hidden" name="hdnSupplierID" value="<%=objS.supplierid%>" /></td>
  </tr>
</table>
    </form>
                  <h3> <span class="style3" id="demo"></span></h3>
</body>
</html>

