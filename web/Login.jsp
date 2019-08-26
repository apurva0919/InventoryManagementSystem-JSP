<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.ClsUserType"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
   
    ClsUserType objut=new ClsUserType();
    ResultSet rsut=objut.select();
%>
<html>
<head>
<script type="text/javascript">
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
    document.getElementById("demo").innerHTML = "*  Must have Alphanumeric Characters only ";
    uadd.focus();
    return false;
    }
}


 function validateForm(){
    if(document.frm.txtUserName.value == "")
    {
        //alert('CODE SHOULD NOT BE LEFT BLANK');
        document.getElementById("demo").innerHTML = "* USER NAME SHOULD NOT BE LEFT BLANK ";
        document.frm.txtUserName.focus();
        return false;
    }
     if(document.frm.txtPassword.value == "")
    {
        document.getElementById("demo").innerHTML = "* PASSWORD SHOULD NOT BE LEFT BLANK ";
       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');
        document.frm.txtPassword.focus();
        return false;
    }
    if(document.frm.selectUserType.value == "0")
    {
        document.getElementById("demo").innerHTML = "* SELECT ANY USER TYPE ";
       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');
        document.frm.selectUserType.focus();
        return false;
    }
       if(alphanumeric(document.frm.txtUserName)==false)
       {
          return false; 
       }
       if(alphanumeric(document.frm.txtPassword)==false)
       {
          return false; 
       }    
    else
    {    
        return true;
    }
}
function tryagain()
{
    
    
}
</script>

    <link type="text/css" rel="stylesheet" href="CSS/login.css" />
    <link type="text/css" rel="stylesheet" href="CSS/button.css" />
    
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login Page</title>
<style type="text/css">
<!--

.style3 {color: #FF0000}
-->
</style>
</head>
<body>
    <form name="frm" action="Bll_Login.jsp" method="post" onsubmit="return validateForm()">
    <table width="100%" height="640" class="table" >
        <tr>
    <td>
        <table width="60%" height="239" class="maintable" align="center" >
            
      <tr>
          <td><h2><u>Login</u></h2></td>
        <td><h2 align="right">&nbsp;</h2></td>
        <td width="46%" rowspan="6">&nbsp;</td>
      </tr>
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="37%">&nbsp;</td>
        </tr>
      <tr>
        <td width="17%"><h3>User Name </h3></td>
        <td width="37%"><input type="text" class="txtbox" name="txtUserName" /></td>
        </tr>
      <tr>
        <td width="17%"><h3>Password</h3></td>
        <td width="37%"><input type="password" class="txtbox" name="txtPassword" /></td>
        </tr>
      <tr>
      <tr>
        <td width="17%"><h3>User Type</h3></td>
        <td width="37%">
            <select name="selectUserType" class="select" >
                         <option value="0" selected="true">-----Select-----</option>

                        <%while(rsut.next())
                        { 
                            if(rsut.getInt("User_Type_Id")==(objut.User_Type_Id))
                                {
                        %>
                        <option value="<%=rsut.getInt("User_Type_Id")%>" selected="true"><%=rsut.getInt("User_Type")%></option>
                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rsut.getInt("User_Type_Id")%>"><%=rsut.getString("User_Type")%></option>
                      <%
                            } 
  }%>
         </select></td>
      </tr>
      <tr>
          <td>&nbsp;</td>
        <td>
                    
                     <input  type="submit" name="Submit" class="button"  value="Login" />
        
        </td>
      </tr>
      <tr>
        <td width="17%">&nbsp;</td>
        <td width="37%">&nbsp;</td>
        </tr>
            <tr>
        <td width="17%">&nbsp;</td>
        <td width="37%">&nbsp;</td>
        </tr>
        </table>
        <h3> <span class="style3" id="demo"></span></h3>
    </td>
  </tr>
</table>
    </form>
</body>
</html>
