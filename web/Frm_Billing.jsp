<%-- 
    Document   : Frm_User
    Created on : Apr 20, 2014, 12:27:29 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.clscity"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clsbilling"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    clsbilling objbill=new clsbilling();
    clscity obj1=new clscity();
    ResultSet rscc=obj1.select();
    
%>
<!DOCTYPE html>
<html>
   <head>

       
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Billing Form</title>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #000000}
-->
</style>
</head>
<body>
    <form action="Bll_Billing.jsp" method="post">
<table width="100%">
  <tr bgcolor="#000000">
    <td><h2 class="style1">BILLING FORM</h2></td>
  </tr>
  <tr>
    <td> <table width="84%" align="center">
      <tr>
        <td height="32" colspan="4" ><u>CUSTOMER INFORMATION</u></td>
        <u> </u> <u> </u> </tr>
      <tr>
        <td width="12%">Name</td>
        <td width="32%"><input name="txtFirst" type="text" size="50%" /></td>
        <td width="21%"><input name="txtMiddle" type="text" size="30%" /></td>
        <td width="35%"><input name="txtLast" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><p>First Name </p></td>
        <td><p>Middle Name </p>          </td>
        <td><p>Last Name </p></td>
      </tr>
      <tr>
        <td>Gender</td>
        <td><label>
          <input name="radioMale" type="radio" value="radiobutton" />
          Male</label>
            <label>
            <input name="radioFemale" type="radio" value="radiobutton" />
              Female</label></td>
        <td>Date of Birth </td>
        <td><input name="txtDOB" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td>Mobile No.</td>
        <td><input name="txtMobile" type="text" size="50%" /></td>
        <td>Email Address.</td>
        <td><input name="txtEmail" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td>Bill No. </td>
        <td><label></label>
            <label>
            <input name="txtBillingBy" type="text" size="50%" />
          </label></td>
        <td>Billing Date </td>
        <td><input name="txtBillingDate" type="text" size="50%" /></td>
      </tr>
      <tr>
           <td>Product</td>
           <td> <select name="selectCity" style="width: 93%" >
                        <%while(rscc.next())
                        { 
                            if(rscc.getInt("City_Id")==obj1.city_id)
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
           <td>company</td>
           <td> <select name="selectCity" style="width: 93%" >
                        <%while(rscc.next())
                        { 
                            if(rscc.getInt("City_Id")==obj1.city_id)
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
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><hr/></td>
  </tr>
  <tr>
    <td><table width="100%" height="202" align="center">
      <tr>
        <td colspan="2" ><u><span class="style4">ADDRESS INFORMATION </span></u></td>
        <td colspan="2" ><u><span class="style4">BILLING INFORMATION</span> </u></td>
      </tr>
      <tr>
        <td>Address</td>
        <td><span class="style2">
          <input name="txtStreet1" type="text" size="75%" />
        </span></td>
        <td>Total Amount </td>
        <td><span class="style2">
          <input name="txtTotalAmount" type="text" size="75%" />
        </span></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><span class="style2">
          <input name="txtStreet2" type="text" size="75%" />
        </span></td>
        <td>Payment Mode </td>
        <td><select name="selectPaymentMode" style="width:83%">
            <option selected="selected">---select Option---</option>
            <option>By Cash</option>
            <option>By Cheque</option>
            <option>By Card</option>
        </select></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><span class="style2">
          <input name="txtStreet3" type="text" size="75%" />
        </span></td>
        <td>Bank Name </td>
        <td><select name="selectBank" style="width:83%">
            <option selected="selected">---select Option---</option>
            <option>State Bank Of India</option>
            <option>Union Bank</option>
            <option>Punjab National Bank</option>
        </select></td>
      </tr>
      <tr>
        <td>City</td>
        <td><span class="style2">
          <input name="txtCity" type="text" size="75%" />
        </span></td>
        <td>Cheque No. </td>
        <td><span class="style2">
          <input name="txtChequeNo" type="text" size="75%" />
        </span></td>
      </tr>
      <tr>
        <td height="26">State</td>
        <td><select name="selectState" style="width:83%">
          <option selected="selected">---select Option---</option>
          <option>Madhya Pradesh</option>
          <option>Maharastra</option>
          <option>Andhra Pradesh</option>
        </select></td>
        <td>Credit Card No.</td>
        <td><span class="style2">
          <input name="txtCreditCard" type="text" size="75%" />
        </span></td>
      </tr>
      <tr>
        <td height="26">country</td>
        <td><select name="selectCountry" style="width:83%">
          <option selected="selected">---select Option---</option>
          <option> India </option>
          <option> United States of America </option>
          <option> United Kingdom </option>
        </select></td>
        <td>Billing By</td>
        <td><label></label>
            <label>
            <input name="txtBillingBy" type="text" size="50%" />
          </label></td>
      </tr>
    </table><hr /></td>
  </tr>
  <tr>
    <td><table width="38%" align="center">
      <tr>
        <td><input type="submit" name="Submit" value="SAVE" /></td>
        <td><input type="submit" name="Submit2" value="DISPLAY" /></td>
        <td><input type="submit" name="Submit3" value="UPDATE" /></td>
        <td><input type="submit" name="Submit4" value="DELETE" /></td>
        <td><input type="submit" name="Submit5" value="CANCEL" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
    </body>
</html>
