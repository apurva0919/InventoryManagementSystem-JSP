<%-- 
    Document   : frmstate
    Created on : Mar 17, 2014, 12:56:24 PM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.clscountry"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clsstate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clsstate obj=new clsstate();
    clscountry objc=new clscountry();
    ResultSet rs=objc.select();
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.state_id=pkid;
        obj.Retrive();
        
    }
%>
<!DOCTYPE html>
  
<html>
    <head>
                <%@include file="Master.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STATE</title>
        <style type="text/css">
<!--
.style2 {color: #FF0000}
-->
</style>
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
    if(document.frm.drpcountry.value == "")
    {
        //alert('STATE SHOULD NOT BE LEFT BLANK');
        document.getElementById("demo").innerHTML = "* COUNTRY SHOULD NOT BE LEFT BLANK ";
        document.frm.drpcountry.focus();
        return false;
    }
    if(document.frm.txtcode.value == "")
    {
        document.getElementById("demo").innerHTML = "* CODE SHOULD NOT BE LEFT BLANK "; 
        //alert('CODE SHOULD NOT BE LEFT BLANK');
        document.frm.txtcode.focus();
        return false;
    }
    if(document.frm.txtstate.value == "")
    {
        document.getElementById("demo").innerHTML = "* STATE SHOULD NOT BE LEFT BLANK ";    
       // alert('CITY SHOULD NOT BE LEFT BLANK');
        document.frm.txtstate.focus();
        return false;
    }
    if(allLetter(document.frm.txtcode)==false)
       {
          return false; 
       }
    else if(allLetter(document.frm.txtstate)==false)
       {
          return false; 
       }    
    else
    {    
        return true;
    }
}
</script>

        
    </head>
    <body>
        <form action="Bll_State.jsp " name="frm"  method="post" onsubmit="return validateForm();" >        
        <h1>STATE REGISTRATION</h1><hr/>
        <table style="width: 50%">
            <tr>
                <td style="width: 25%">
                     CODE
                </td>
            <td style="width: 25%">
                <input type="text" name="txtcode" placeholder="Please Enter Code" value="<%=obj.code%>" size="50%"/>
                <input type="hidden" name="txtstateID" value="<%=obj.state_id%>"/>

                </td>
            </tr>
            <tr>
                <td style="width: 25%">
                   STATE  
                </td>
            <td style="width: 25%">
                <input type="text" name="txtstate" placeholder="Please Enter State" value="<%=obj.state%>"size="50%"/>  
            </td>
            </tr>
            <tr>
                <td style="width: 25%">
                    COUNTRY 
                </td>
                                <td style="width: 25%">
                    <select name="drpcountry" style="width: 87%" >
                        <%while(rs.next())
                        { 
                            if(rs.getString("country_id").equals(obj.country_id))
                                {
                        %>
                        <option value="<%=rs.getString("country_id")%>" selected="true"><%=rs.getString("country")%></option>

                        <%}
                                 else
                            {
                                %>
                        <option value="<%=rs.getString("country_id")%>"><%=rs.getString("country")%></option>
                      <%
                            } 
  }%>
                    </select>
                </td>
            </tr>        
        </table>
         <table style="width:50%">
            <tr>
<% if(request.getParameter("pkid")!=null)
    {
%>        
                <td>
                    <input type="submit" value="UPDATE" name="btn"/>
                </td>
                <td>
                    <input type="submit" value="DELETE" name="btn"/>
                </td>
  <%
    }
    else
    {
  %>
                <td>
                    <input type="submit" value="SAVE" name="btn"/>    
                </td>
                
    <%}%>       
                <td>
                    <input type="submit" value="SHOW" onclick="this.form.submit(); return false;" name="btn"/>                    
                </td>
            </tr>
       </table>         
                 <h3> <span class="style2" id="demo"></span></h3>
</form>    
    </body>
</html>
