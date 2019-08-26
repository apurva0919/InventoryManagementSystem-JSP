<%-- 
    Document   : Frm_Inward
    Created on : Apr 30, 2014, 11:41:41 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.ClsInward"%>
<%@page import="DBpack.ClsSupplier"%>
<%@page import="DBpack.clsEmployee"%>
<%@page import="DBpack.ClsCompany"%>
<%@page import="DBpack.ClsProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
ClsProduct objproduct=new ClsProduct();
ResultSet rsproduct=objproduct.select();
ClsCompany objCompany=new ClsCompany();
ResultSet rsCompany=objCompany.select();
clsEmployee objEmployee=new clsEmployee();
ResultSet rsEmployee=objEmployee.select();
ClsSupplier objSupplier=new ClsSupplier();
ResultSet rsSupplier=objSupplier.list();
ClsInward obj=new ClsInward();
  if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.Inward_Id=pkid;
        obj.Retrive();
    }

%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <script src="Script/datetimepicker_css.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {color: #000000}
.style2 {color: #FFFFFF}
-->
</style>
<%@include file="Master.jsp"%>
</head>

<body>
    <form name="frm" method="post" action="Bll_Inward.jsp" onsubmit="return validateForm()">
<table width="100%">
  <tr bgcolor="#000000">
    <td height="56" colspan="3"><ul>
      <li>
        <h2 class="style2">INWARD</h2>
      </li>
    </ul></td>
  </tr>
  <tr>
    <td colspan="3"><table width="89%" align="center">
      <tr>
          <td>&nbsp; </td>
          <td>&nbsp;</td>
        <td>Voucher No. </td>
        <td>
            
            <input name="txtVoucherNo" type="text" size="30%" value="<%=obj.Voucher_No%>" />
            <input name="HiddenInwardId" type="hidden" size="30%" value="<%=obj.Inward_Id%>" /></td>
        <td>Purchase Date </td>
        <td><input name="txtPurchaseDate" id="txtDateofBirth" value="<%=obj.Date_Purchase%>" type="text" size="30%" />
        <img src="Images/Images.PNG"width="20px" height="20px" onclick="NewCssCal('txtDateofBirth','YYYYMMDD')" style="cursor:pointer"/>
        </td>
      </tr>
    </table><h5><hr /></h5></td>
  </tr>
  <tr>
      <td>&nbsp;</td>
    <td><table width="90%" height="160" align="center" >
      <tr>
        <td colspan="2"><div align="center">
          <h3 align="left">Amount Details </h3>
        </div></td>
      </tr>
      <tr>
        <td><span class="style1">Amount</span></td>
        <td><input name="txtAmount" type="text" value="<%=obj.Amount%>" size="30%" /></td>
      </tr>
      <tr>
        <td><span class="style1">Discount</span></td>
        <td><input name="txtDiscount" type="text" size="30%" value="<%=obj.Discount%>" /></td>
      </tr>
      <tr>
        <td><span class="style1">Tax</span></td>
        <td><input name="txtTax" type="text" size="30%" value="<%=obj.Tax%>" /></td>
      </tr>
      <tr>
        <td><span class="style1">Grand Total </span></td>
        <td><input name="txtGrandTotal" type="text" size="30%" value="<%=obj.Grand_Total%>" /></td>
      </tr>
    </table></td>
    <td><table width="90%" height="160" align="center">
      <tr>
        <td colspan="2"><div align="center">
          <h3 align="left">Shipping Details </h3>
        </div></td>
      </tr>
      <tr>
        <td><span class="style1">Transportation</span></td>
        <td><input name="txtTransportation" type="text" size="30%" value="<%=obj.Transportation%>" /></td>
      </tr>
      <tr>
        <td><span class="style1">Shipping Date </span></td>
        <td><input name="txtShippingDate" id="txtShippingDate" type="text" size="30%" value="<%=obj.Shipping_Date%>" />
        <img src="Images/Images.PNG"width="20px" height="20px" onclick="NewCssCal('txtShippingDate','YYYYMMDD')" style="cursor:pointer"/>
        </td>
      </tr>
      <tr>
        <td><span class="style1">Shipping Method</span></td>
        <td><input name="txtShippingMethod" type="text" size="30%" value="<%=obj.Shipping_method%>" /></td>
      </tr>
      <tr>
        <td><span class="style1">Shipping Charges </span></td>
        <td><input name="txtShippingCharges" type="text" size="30%" value="<%=obj.Shipping_Charges%>" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="3"><hr /></td>
  </tr>
  <tr>
    <td colspan="3"></p>
      <table width="80%" height="119" align="center">
        <tr>
          <td colspan="6"><h2>Other details</h2></td>
        </tr>
        <tr>
          <td width="14%"><span class="style1">Product</span></td>
          <td width="20%"><select name="SelectProductId" style="width:97%">
                    <option value="0" selected="true">----Select-----</option>

            <%while(rsproduct.next())
                        { 
                            if(rsproduct.getInt("Product_id")==(objproduct.Product_Id))
                                { 
                        %>
                        <option value="<%=rsproduct.getInt("Product_id")%>" selected="true"><%=rsproduct.getString("Product")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rsproduct.getInt("Product_id")%>"><%=rsproduct.getString("Product")%></option>
                      <%
                            } 
  }%>
        </select></td>
          <td width="12%"><span class="style1">Company</span></td>
          <td width="20%"><select name="SelectCompanyId" style="width:97%">
                    <option value="0" selected="true">----Select-----</option>
            <%while(rsCompany.next())
                        { 
                            if(rsCompany.getInt("Company_Id")==(objCompany.Company_Id))
                                { 
                        %>
                        <option value="<%=rsCompany.getInt("Company_Id")%>" selected="true"><%=rsCompany.getString("Company_Name")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rsCompany.getInt("Company_Id")%>"><%=rsCompany.getString("Company_Name")%></option>
                      <%
                            } 
  }%>
        </select></td>
          <td width="12%"><span class="style1">Model Details </span></td>
          <td width="22%"><input name="txtModelNo" type="text" size="33%" value="<%=obj.Model%>"/></td>
        </tr>
        <tr>
          <td><span class="style1">Supplier Name</span></td>
          
        <td><select name="SelectSupplier" style="width:97%">
                      <option value="0" selected="true">----Select-----</option>
              <%while(rsSupplier.next())
                        { 
                            if(rsSupplier.getInt("Supplier_Id")==(objSupplier.supplierid))
                                {
                        %>
                        <option value="<%=rsSupplier.getInt("Supplier_Id")%>" selected="true"><%=rsSupplier.getString("Supplier")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rsSupplier.getInt("Supplier_Id")%>"><%=rsSupplier.getString("Supplier")%></option>
                      <%
                            } 
  }%>
          </select></td>
          <td><span class="style1">Payment Date </span></td>
          <td><input name="txtPaymentDate" type="text" id="txtPaymentDate" size="25%" value="<%=obj.Payment_Date%>" />
          <img src="Images/Images.PNG"width="20px" height="20px" onclick="NewCssCal('txtPaymentDate','YYYYMMDD')" style="cursor:pointer"/>
          </td>
          <td><span class="style1">Description</span></td>
          <td><span class="style1">
            <textarea name="txtDescription" cols="25%" ><%=obj.Discription%></textarea>
          </span></td>
        </tr>
        <tr>
          <td><span class="style1"> Recivers Name </span></td>
          <td><select name="SelectEmployeeId" style="width:97%">
                    <option value="0" selected="true">----Select-----</option>
            <%while(rsEmployee.next())
                        { 
                            if(rsEmployee.getInt("Employee_Id")==(objEmployee.Employee_Id))
                                { 
                        %>
                        <option value="<%=rsEmployee.getInt("Employee_Id")%>" selected="true"><%=rsEmployee.getString("First_Name")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rsEmployee.getInt("Employee_Id")%>"><%=rsEmployee.getString("First_Name")%></option>
                      <%
                            } 
  }%>
        </select></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table></td>
  </tr>
  <tr>
      <td style="width: 10%" >&nbsp;</td>
    <td colspan="3"><table  width="30%" >
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
</table>
</form>
</body>
</html>
