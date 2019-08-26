<%-- 
    Document   : Frm_Outward
    Created on : Apr 30, 2014, 10:45:31 PM
    Author     : VAIBHAV
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="Master.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Outward Form</title>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {color: #000000}
-->
</style>
</head>
<body>
<table width="100%">
  <tr>
    <td><table width="100%" bgcolor="#000000">
      <tr>
        <td><h2 class="style1">OUTWARD</h2></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="80%" align="center">
      <tr>
        <td>Order No. </td>
        <td><input name="textfield21942" type="text" size="30%" /></td>
        <td>Voucher No. </td>
        <td><input name="textfield21943" type="text" size="30%" /></td>
        <td>Customer Name </td>
        <td><input name="textfield21944" type="text" size="30%" /></td>
      </tr>
    </table><hr /></td>
  </tr>
  <tr>
    <td><table width="84%" align="center">
      <tr>
        <td colspan="4"><h3>Product Details </h3></td>
        </tr>
      <tr>
        <td>Voucher No.  </td>
        <td><input name="textfield22" type="text" size="50%" /></td>
        <td>Order No. </td>
        <td><input name="textfield222" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td>Product</td>
        <td><input name="textfield223" type="text" size="50%" /></td>
        <td>Company</td>
        <td><input name="textfield227" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td>Model No. </td>
        <td><input name="textfield224" type="text" size="50%" /></td>
        <td>Quantity </td>
        <td><input name="textfield228" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td>Dispatch Date </td>
        <td><input name="textfield225" type="text" size="50%" /></td>
        <td>Billing Date </td>
        <td><input name="textfield229" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td>Bill Prepared By </td>
        <td><input name="textfield226" type="text" size="50%" /></td>
        <td>Customer Name </td>
        <td><input name="textfield2210" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td>Description</td>
        <td colspan="3"><textarea name="textfield21" cols="39%"></textarea></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="29"><table width="50%" align="right">
      <tr>
        <td colspan="2"><h3>Amount Details </h3></td>
      </tr>
      <tr>
        <td width="28%">Amount</td>
        <td width="72%"><input name="textfield2246" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td>Discount</td>
        <td><input name="textfield2247" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td>Tax</td>
        <td><input name="textfield2248" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td>Grand Total </td>
        <td><input name="textfield2249" type="text" size="50%" /></td>
      </tr>
    </table>
      <table width="50%" height="132" align="left">
      <tr>
        <td colspan="2"><h3>Shipping Details</h3></td>
      </tr>
      <tr>
        <td width="34%"><span class="style2">Transportation</span></td>
        <td width="66%"><input name="textfield2242" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td><span class="style2">Shipping Date </span></td>
        <td><input name="textfield2243" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td><span class="style2">Shipping Method</span></td>
        <td><input name="textfield2244" type="text" size="50%" /></td>
      </tr>
      <tr>
        <td height="24"><span class="style2">Shipping Charges </span></td>
        <td><input name="textfield2245" type="text" size="50%" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><hr /></td>
  </tr>
  <tr>
    <td><table width="31%" align="center">
      <tr>
        <td><input type="submit" name="Submit" value="SAVE" /></td>
        <td><input type="submit" name="Submit2" value="SHOW" /></td>
        <td><input type="submit" name="Submit3" value="UPDATE" /></td>
        <td><input type="submit" name="Submit4" value="DELETE" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>

