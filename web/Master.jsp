
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Inventory Management</title>
        <link rel="stylesheet" href="CSS/Master.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
</head>
<div>
<table width="100%">
  <tr>
      <td width="13%" align="left">You Have Loged In By </td>
      <td width="12%" align="left" class="UserName" ><b><%=session.getAttribute("username")%></b></td>
      <td width="40%">&nbsp;</td>
      <td width="35%" align="right"><a href="Login.jsp" class="Logout">Logout</a></td>
  </tr>
</table>
    </div>

    
    <body style="background-color:#EBEBEB">
<ul id="css3menu1" class="topmenu">
    <li class="topmenu"><a href="Home.jsp" style="height:16px;line-height:16px;">Home</a></li>
        <li class="topmenu"><a href="Login.jsp" style="height:16px;line-height:16px;">Login</a></li>
	<li class="topmenu"><a href="#" style="height:16px;line-height:16px;"><span>Registration</span></a>
	<ul>
            <li class="subfirst"><a href="Frm_User.jsp">User</a></li>
            <li><a href="Frm_Customer.jsp">Customer</a></li>
            <li><a href="Frm_Employee.jsp">Employee</a></li>
            <li class="sublast"><a href="frmSupplier.jsp">Supplier</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="height:16px;line-height:16px;"><span>Transaction</span></a>
	<ul>
            <li class="subfirst"><a href="Frm_Billing.jsp">Billing</a></li>
		<li><a href="#"><span>Categories</span></a>
		<ul>
                    <li class="subfirst"><a href="Frm_Company.jsp">Company</a></li>
                        <li><a href="frmCategory.jsp">Category</a></li>
                        <li class="sublast"><a href="Frm_Product.jsp">Product</a></li>
		</ul></li>
                <li><a href="Frm_Inward.jsp">Inward</a></li>
                <li class="sublast"><a href="Frm_Outward.jsp">Outward</a></li>
	</ul></li>
        <li class="topmenu"><a href="frmFeedback.jsp" style="height:16px;line-height:16px;">Feedback</a></li>
	<li class="topmenu"><a href="#" style="height:16px;line-height:16px;"><span>Master</span></a>
	<ul>
            <li class="subfirst"><a href="Frm_User_Type.jsp">User Type</a></li>
		<li><a href="#"><span>Banking</span></a>
		<ul>
                    <li class="subfirst"><a href="Frm_Payment_Mode.jsp">Payment Mode</a></li>
                    <li class="sublast"><a href="Frm_Bank.jsp">Bank</a></li>
		</ul></li>
		<li><a href="#"><span>Entries</span></a>
		<ul>
                    <li class="subfirst"><a href="Frm_Country.jsp">Country</a></li>
                    <li><a href="Frm_State.jsp">State</a></li>
                    <li class="sublast"><a href="Frm_City.jsp">City</a></li>
		</ul></li>
                <li><a href="Frm_Designation.jsp">Designation</a></li>
                <li class="sublast"><a href="Frm_Department.jsp">Department</a></li>
	</ul></li>
</ul>
</body>
</html>
