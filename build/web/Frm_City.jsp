<%-- 
    Document   : Frm_city
    Created on : Apr 23, 2014, 6:19:33 PM
    Author     : VAIBHAV
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DBpack.clscity"%>
<%@page import="DBpack.clsstate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<%
    clsstate objs=new clsstate();
    clscity obj=new clscity();
    ResultSet rs=obj.select();
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.city_id=pkid;
        obj.Retrive();
        
    }
%>
<html>
<head>
    <%@include file="Master.jsp"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>City Registration </title> 
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
    if(document.frm.drpstate.value == "")
    {
        //alert('STATE SHOULD NOT BE LEFT BLANK');
        document.getElementById("demo").innerHTML = "* STATE SHOULD NOT BE LEFT BLANK ";
        document.frm.drpstate.focus();
        return false;
    }
    if(document.frm.txtcode.value == "")
    {
        document.getElementById("demo").innerHTML = "* CODE SHOULD NOT BE LEFT BLANK "; 
        //alert('CODE SHOULD NOT BE LEFT BLANK');
        document.frm.txtcode.focus();
        return false;
    }
    if(document.frm.txtcity.value == "")
    {
        document.getElementById("demo").innerHTML = "* CITY SHOULD NOT BE LEFT BLANK ";    
       // alert('CITY SHOULD NOT BE LEFT BLANK');
        document.frm.txtcity.focus();
        return false;
    }
    if(allLetter(document.frm.txtcode)==false)
       {
          return false; 
       }
    else if(allLetter(document.frm.txtcity)==false)
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
        <form name="frm" action="Bll_City.jsp " method="post" onsubmit="return validateForm();">        
            <h1>CITY REGISTRATION</h1><hr/>
        <table style="width: 50%">
            <tr>
                <td style="width: 25%">
                      CODE
                </td>
            <td style="width: 25%">
                <input type="text" name="txtcode" placeholder="Please Enter Code" value="<%=obj.code%>" size="50%"/>
                <input type="hidden" name="txtcityID" value="<%=obj.city_id%>"/>

                </td>
            </tr>
            <tr>
                <td style="width: 25%">
                   CITY  
                </td>
            <td style="width: 25%">
                <input type="text" name="txtcity" placeholder="Please Enter City" value="<%=obj.city%>"size="50%"/>  
            </td>
            </tr>
            <tr>
                <td style="width: 25%">
                    STATE 
                </td>
                                <td style="width: 25%">
                    <select name="drpstate" style="width: 83%" >
                        <%while(rs.next())
                        { 
                            if(rs.getString("state_id").equals(obj.state_id))
                                {
                        %>
                        <option value="<%=rs.getString("state_id")%>" selected="true"><%=rs.getString("state")%></option>

                        <%}
                                 else
                            {
                                %>
                                
                        <option  value="<%=rs.getString("state_id")%>"><%=rs.getString("state")%></option>
                      <%
                            } 
  }%>
                    </select>
                </td>
            </tr>  
                <tr>
                    <td>&nbsp;</td>
                    <td>
                            <table width="74%">
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
        </table>
                    </td>
                </tr>
        </table> 
        <%-- <table style="width:50%">
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
                    <input type="submit" value="SHOW" name="btn"/>                    
                </td>
            </tr>
       </table>--%>      
                <h3> <span class="style2" id="demo"></span></h3>
</form>    
    </body>
</html>
