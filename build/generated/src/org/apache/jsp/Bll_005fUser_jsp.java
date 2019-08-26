package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DBpack.clsuser;
import java.sql.ResultSet;

public final class Bll_005fUser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    clsuser obj =new clsuser();
    obj.User_Id=Integer.parseInt(request.getParameter("txtUserId"));
    obj.First_Name=request.getParameter("txtFirst");
    obj.Middle_Name=request.getParameter("txtMiddle");
    obj.Last_Name=request.getParameter("txtLast");
    obj.User_Name=request.getParameter("txtUserName");
    obj.Password=request.getParameter("txtPassword");
    obj.Gender=request.getParameter("radiobutton");
    obj.DOB=request.getParameter("txtDateofBirth");
    obj.Mobile=request.getParameter("txtMobile");
    obj.Email=request.getParameter("txtEmailAddress");
    obj.Street_1=request.getParameter("txtStreet1");
    obj.Street_2=request.getParameter("txtStreet2");
    obj.Street_3=request.getParameter("txtStreet3");
    obj.City_Id=Integer.parseInt(request.getParameter("selectCity"));
    obj.state_id=Integer.parseInt(request.getParameter("selectState"));
    obj.country_id=Integer.parseInt(request.getParameter("selectCountry"));
    obj.Pincode=request.getParameter("txtPinCode");
    obj.Question_1=request.getParameter("selectQuestion1");
    obj.Answer_1=request.getParameter("txtAnswer1");
    obj.Question_2=request.getParameter("selectQuestion2");
    obj.Answer_2=request.getParameter("txtAnswer2");
    obj.User_Type_Id=Integer.parseInt(request.getParameter("txtUserType"));
    String opr="SHOW";
    if(request.getParameter("btn")!=null)
    {
     opr =request.getParameter("btn");
    }
//String opr =request.getParameter("btn");
    if(opr.equals("SAVE"))
    {
    obj.insert();
    response.sendRedirect("Show_User.jsp");
    }
    else if(opr.equals("SHOW"))
    {
    obj.select();
    response.sendRedirect("Show_User.jsp");
    }
    else if(opr.equals("UPDATE"))
    {
    obj.update();
    response.sendRedirect("Show_User.jsp");
    }
    else if(opr.equals("DELETE"))
    {
    obj.delete();
    response.sendRedirect("Show_User.jsp");
    }
   

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
