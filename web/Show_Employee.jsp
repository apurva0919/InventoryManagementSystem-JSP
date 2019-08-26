<%-- 
    Document   : Show_Employee
    Created on : May 3, 2014, 11:53:52 AM
    Author     : VAIBHAV
--%>

<%@page import="DBpack.clsEmployee"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    clsEmployee obj=new clsEmployee();
    //ResultSet rs=obj.select();
    if(request.getParameter("SearchByFirstName")!=(null))
    {
    obj.First_Name=request.getParameter("SearchByFirstName");
    }
    if(request.getParameter("SearchByLastName")!=(null))
    {
        obj.Last_Name=request.getParameter("SearchByLastName");
    }
    if(request.getParameter("SearchByGender")!=(null))
    {
        obj.Gender=request.getParameter("SearchByGender");
    }
    if(request.getParameter("SearchByDepartment")!=(null))
    {
        obj.Department=request.getParameter("SearchByDepartment");
    }
    ResultSet rs=obj.searchbyfirstname();
%>
   
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS/ShowPages.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOW EMPLOYEE LIST</title>
        <style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style> 
    </head>
    <body>
       <%-- <form action="Frm_Employee.jsp" method="post">--%>
       <form name="frm" action="Show_Employee.jsp" method="get">
            <h2>List of Employee User Details</h2>
                <table>
                    <tr>
                        <td>
                        <a href="Frm_Employee.jsp" >Add a New Record</a>                      
                        </td>
                    </tr>
                </table>
            <table  width="90%">
                  <tr>
                        <td><input class="textfield" placeholder="Search By First Name" type="text" name="SearchByFirstName"></td>
                        <td><input class="textfield" placeholder="Search By Last Name" type="text" name="SearchByLastName"></td>
                        <td ><input class="textfield" placeholder="Search By Gender" type="text" name="SearchByGender"></td>
                        <td><input class="textfield" placeholder="Search By Department" type="text" name="SearchByDepartment"></td>
                        <td><input class="button" type="submit" name="Submit3" value="Search"></td>
                  </tr>
                </table>
                <p>&nbsp;</p>
                <table width="90%" border="1">
            <tr bgcolor="#000000">
                <td></td>
                <td><span class="style1">First Name</span></td>
                <td><span class="style1">Middle Name</span></td>
                <td><span class="style1">Last Name</span></td>
                <td><span class="style1">Department</span></td>
                <%--<td>Password</td>--%>
                <td><span class="style1">Gender</span></td>
                <%--<td>Date of Birth</td>--%>
                <td><span class="style1">Mobile</span></td>
                <td><span class="style1">Email Address</span></td>
               <%-- <td>Street 1</td>
                <td>Street 2</td>
                <td>Street 3</td>
                <td>City </td>
                <td>State</td>
                <td>Country</td>
                <td>Pin Code</td>
                <td>Question 1</td>
                <td>Answer 1</td>
                <td>Question 2</td>
                <td>Answer 2</td>--%>
            </tr>
            <%while(rs.next())
            {
            %>
            <tr>
                <td>
                    <a href="Frm_Employee.jsp?pkid=<%=rs.getInt("Employee_ID")%>" >SELECT</a>
                </td>
                <td>
                    <%=rs.getString("First_Name")%>
                </td>
                 <td>
                    <%=rs.getString("Middle_Name")%>
                 </td>
                 <td>
                    <%=rs.getString("Last_Name")%>
                </td>
                <td>
                    <%=rs.getString("Department")%>
                 </td>
                <%--  <td>
                    <%=rs.getString("Password")%>
                </td>--%>
                 <td>
                    <%=rs.getString("Gender")%>
                 </td>
                 <%--<td>
                    <%=rs.getString("Birth_Date")%>
                </td>--%>
                 <td>
                     <%=rs.getString("Mobile_No")%>
                 </td>
                 <td>
                    <%=rs.getString("Email_Id")%>
                </td>
            </tr>
         <%}%>
        </table>
        <table>
            <tr>
                <td>
                    <select class="textfield">
                        <option id="1">First NAME</option> 
                        <option id="2">GENDER</option>
                        <option id="3">Department</option>
                    </select>
                </td>
                <td>
                    <input type="text" class="textfield" />
                </td>
                <td>
                    <input type="submit" name="Search"/>
                </td>
            </tr>
        </table>
        </form>
    </body>

</html>

