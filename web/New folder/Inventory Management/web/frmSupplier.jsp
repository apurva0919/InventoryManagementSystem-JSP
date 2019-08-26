<%-- 
    Document   : Supplier
    Created on : Apr 28, 2014, 5:26:40 PM
    Author     : LOKENDRA SINGH
--%>

<%@page import="IM.ClsCity"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="IM.ClsSupplier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
       ClsCity objC=new ClsCity();
       ClsSupplier objS=new ClsSupplier();
       ResultSet rs1=objC.select();
       if(request.getParameter("pkid")!=null)
       {
       Integer pkid=Integer.parseInt(request.getParameter("pkid"));
       objS.supplierid=pkid;
       objS.getdatasingle();

       }
%>
<!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
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
    <form action="bllSupplier.jsp" method="post"/>
<table width="100%" height="372" border="0" align="center">
  <tr>
    <td height="100" colspan="4" bgcolor="#990000"><span class="style5"><img src="image/SUPPLIER-sm.png" width="72" height="93" /><strong>Supplier</strong></span></td>
  </tr>
  <tr>
    <td width="150" height="27"><div align="left">Supplier</div></td>
    <td width="260"><label>
      <div align="left">
        <input type="text" size="35" name="supplier" />      
      </div>
    </label></td>
    <td width="260" height="24"><div align="left">Contact No. </div></td>
    <td width="257"><div align="left">
      <input type="text" size="35" name="contact" />
    </div></td>
  </tr>
  <tr>
    <td height="21">Email Id </td>
    <td height="21" colspan="3"><div align="left">
      <div align="left">
        <input type="text" size="161" name="email" />
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
          <input type="text" size="161" name="street1" />
        </div>
    </div>      <div align="left"></div></td>
  </tr>
  
  <tr>
    <td height="43"><div align="left">Street 2<span class="style6"> * </span></div></td>
    <td height="43" colspan="3"><label>
      <div align="left">
        <div align="left">
          <input type="text" size="161" name="street2" />
        </div>
      </div>
    <div align="left"></div>      <div align="left"></div></td>
  </tr>
  <tr>
    <td height="24"><div align="left">Street 3<span class="style6"> *</span> </div></td>
    <td height="24" colspan="3"><div align="left">
      <div align="left">
        <input type="text" size="161" name="street3"/>
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
    <td height="26">&nbsp;</td>
    <td colspan="2"><input type="submit" name="sbtn" value="Save" />
      <input type="submit" name="sbtn" value="Update" />
      <input type="submit" name="sbtn" value="Delete" />
      <input type="submit" name="sbtn" value="Reset" />
      <input type="submit" name="sbtn" value="Show" /></td>
    <td>&nbsp;</td>
  </tr>
   <tr>
      <td><input type="hidden" name="hdnSupplierID" value="<%=objS.supplierid%>" /></td>
  </tr>
</table>
</body>
</html>

