<%-- 
    Document   : Frm_Product
    Created on : Jul 28, 2014, 1:11:00 AM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.ClsCompany"%>
<%@page import="DBpack.ClsSupplier"%>
<%@page import="DBpack.ClsCategory"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.ClsProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsProduct obj=new ClsProduct();
    ResultSet rs=obj.select();
    ClsCategory objcat=new ClsCategory();
    ResultSet rscat=objcat.list();
    ClsSupplier objsup=new ClsSupplier();
    ResultSet rssup=objsup.list();
    ClsCompany objc = new ClsCompany();
    ResultSet rsc=objc.select();
     if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.Product_Id=pkid;
        obj.Retrive();
    }
%>
<script type="text/javascript">
function allLetter(ctrlName){
    var letters = /^[A-Za-z]+$/;
    if(ctrlName.value.match(letters))
    {
        return true;
    }
    else
    {
        document.getElementById("demo").innerHTML = "* Must have alphabet characters only ";
        //alert('Must have alphabet characters only');
        ctrlName.focus();
        return false;
    }
}
 function validateForm(){
    if(document.frm.txtBankCode.value == "")
    {
        //alert('STATE SHOULD NOT BE LEFT BLANK');
        document.getElementById("demo").innerHTML = "* BANK CODE SHOULD NOT BE LEFT BLANK ";
        document.frm.txtBankCode.focus();
        return false;
    }
    if(document.frm.txtBank.value == "")
    {
        document.getElementById("demo").innerHTML = "* BANK SHOULD NOT BE LEFT BLANK "; 
        //alert('CODE SHOULD NOT BE LEFT BLANK');
        document.frm.txtBank.focus();
        return false;
    }
    if(document.frm.txtBankDetails.value == "")
    {
        document.getElementById("demo").innerHTML = "* BANK DETAILS SHOULD NOT BE LEFT BLANK ";    
        //alert('CITY SHOULD NOT BE LEFT BLANK');
        document.frm.txtBankDetails.focus();
        return false;
    }
    if(allLetter(document.frm.txtBankCode)==false)
       {
          return false; 
       }
    else if(allLetter(document.frm.txtBank)==false)
       {
          return false; 
       } 
    else if(allLetter(document.frm.txtBankDetails)==false)
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
    <script src="Script/datetimepicker_css.js"></script>
    <%@include file="Master.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Product</title>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
</head>

<body>
    <form name="frm" action="Bll_Product.jsp" method="post">
<table width="100%">
  <tr bgcolor="#000000">
    <td><h1 class="style1">Product</h1></td>
  </tr>
  <tr>
    <td><table width="80%" height="232" align="center">
      <tr>
        <td width="14%" style="width:20%">Product</td>
        <td width="36%" style="width:30%">
            <input name="txtProduct" type="text"  size="50%" placeholder="Enter the product Name" value="<%=obj.Product%>" />
        <input name="txtProductId" type="hidden"value="<%=obj.Product_Id%>" />
        </td>
        <td width="20%" style="width:20%">Category</td>
        <td width="30%" style="width:30%">
        <select name="SelectCategoryId" style="width:100%">
                    <option value="0" selected="true">----Select-----</option>

            <%while(rscat.next())
                        { 
                            if(rscat.getInt("Category_Id")==(obj.Category_Id))
                                { 
                        %>
                        <option value="<%=rscat.getInt("Category_Id")%>" selected="true"><%=rscat.getString("Category")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rscat.getInt("Category_Id")%>"><%=rscat.getString("Category")%></option>
                      <%
                            } 
  }%>
        </select></td>
      </tr>
      <tr>
        <td>Company</td>
        <td><span style="width:30%">
        <select name="SelectCompanyId" style="width:100%">
                    <option value="0" selected="true">----Select-----</option>
            <%while(rsc.next())
                        { 
                            if(rsc.getInt("Company_Id")==(obj.Company_Id))
                                { 
                        %>
                        <option value="<%=rsc.getInt("Company_Id")%>" selected="true"><%=rsc.getString("Company_Name")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rsc.getInt("Company_Id")%>"><%=rsc.getString("Company_Name")%></option>
                      <%
                            } 
  }%>
        </select></span></td>
        <td>Model</td>
        <td><span style="width:30%">
        <input name="txtModel" type="text" placeholder="Enter the Model No." value="<%=obj.Model%>" size="50%"  />
        </span></td>
      </tr>
      <tr>
        <td>Purchase Price </td>
        <td><span style="width:30%">
          <input name="txtPurchasePrice" placeholder="Enter the Purchase Price" value="<%=obj.Purchase_Price%>"  type="text" size="50%" />
        </span></td>
        <td>Selling Price</td>
        <td><span style="width:30%">
          <input name="txtSellingPrice" type="text" size="50%" value="<%=obj.Selling_Price%>" placeholder="Enter the Selling Price"  />
        </span></td>
      </tr>
      <tr>
        <td>Supplier</td>
        <td><span style="width:30%">
          <select name="SelectSupplier" style="width:100%">
                      <option value="0" selected="true">----Select-----</option>
              <%while(rssup.next())
                        { 
                            if(rssup.getInt("Supplier_Id")==(objsup.supplierid))
                                {
                        %>
                        <option value="<%=rssup.getInt("Supplier_Id")%>" selected="true"><%=rssup.getString("Supplier")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rssup.getInt("Supplier_Id")%>"><%=rssup.getString("Supplier")%></option>
                      <%
                            } 
  }%>
          </select>
        </span></td>
        <td>Mobile No. </td>
        <td><span style="width:30%">
          <input name="txtMobile" type="text" placeholder="Enter the Mobile Number" value="<%=obj.Mobile%>" size="50%" />
        </span></td>
      </tr>
      <tr>
        <td>Scheme</td>
        <td><span style="width:30%">
          <input name="txtScheme" type="text" placeholder="Enter the Scheme" value="<%=obj.Scheme%>" size="50%" />
        </span>
        </td>
        <td>Product Weight </td>
        <td><span style="width:30%">
          <input name="txtProductWeight" placeholder="Enter the product Weight" type="text" value="<%=obj.Product_Weight%>" size="50%" />
        </span></td>
      </tr>
      <tr>
        <td>Quantity</td>
        <td><span style="width:30%">
          <input name="txtQuantity" type="text" size="50%" placeholder="Enter the Quantity" value="<%=obj.Quantity%>" />
        </span></td>
        <td>Manufacturing Date </td>
        <td><span style="width:30%">
                <input name="txtManufacturing" id="txtDateofBirth" type="text" value="<%=obj.Manufacturing%>" size="45%" placeholder="Enter the Date in YYYY-MM-DD "  />
<img src="Images/Images.PNG"width="20px" height="20px" onclick="NewCssCal('txtDateofBirth','YYYYMMDD')" style="cursor:pointer"/>

        </span></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td colspan="3"><table width="30%">
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
    </form>
</body>
</html>

