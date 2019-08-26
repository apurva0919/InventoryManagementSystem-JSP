


<%@page import="DBpack.ClsUserType"%>
<%@page import="DBpack.clsstate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClsUserType obj =new ClsUserType();
    obj.User_Type_Id=Integer.parseInt(request.getParameter("txtPaymentId"));
    obj.User_Type=request.getParameter("txtPaymentMode");
    String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_User_Type.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select ();
    response.sendRedirect("Show_User_Type.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_User_Type.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_User_Type.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
