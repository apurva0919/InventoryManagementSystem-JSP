package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DBpack.clscountry;
import java.sql.*;
import java.util.*;
import java.sql.ResultSet;
import DBpack.clsuser;

public final class Frm_005fCountry_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Master.jsp");
  }

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
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    clscountry obj=new clscountry();
    
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.country_id=pkid;
        obj.Retrive();
    }

      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    \n");
      out.write("function allLetter(ctrlName)\n");
      out.write("{\n");
      out.write("    var letters = /^[A-Za-z]+$/;\n");
      out.write("    if(ctrlName.value.match(letters))\n");
      out.write("    {\n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("    else\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* Must have Alphabet Characters Only \";\n");
      out.write("        //alert('Must have alphabet characters only');\n");
      out.write("        ctrlName.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("function validateForm()\n");
      out.write("{\n");
      out.write("    if(document.frm.txtcode.value==\"\")\n");
      out.write("    {\n");
      out.write("      //alert(\" Code should not be left blank\");\n");
      out.write("      document.getElementById(\"demo\").innerHTML = \"* Code should not be left blank \";\n");
      out.write("      document.frm.txtcode.focus();\n");
      out.write("      return false;\n");
      out.write("    }\n");
      out.write("    if(document.frm.txtcountry.value==\"\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* Country Name should not be left blank \";\n");
      out.write("      //alert(\"Country Name should not be left blank\");\n");
      out.write("      document.frm.txtcountry.focus();\n");
      out.write("      return false;\n");
      out.write("    }\n");
      out.write("    if(allLetter(document.frm.txtcode)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("    if(allLetter(document.frm.txtcountry)==false)\n");
      out.write("       {\n");
      out.write("          return false;\n");
      out.write("       }\n");
      out.write("       return true;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        ");
      out.write('\n');
      out.write('\n');

    clsuser objmatch=new clsuser();
    ResultSet rsmatch=objmatch.select();
    
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"ltr\">\n");
      out.write("<head>\n");
      out.write("\t<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("\t<title>Inventory Management</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/Master.css\" type=\"text/css\" /><style type=\"text/css\">._css3m{display:none}</style>\n");
      out.write("</head>\n");
      out.write("<div>\n");
      out.write("<table width=\"100%\">\n");
      out.write("  <tr>\n");
      out.write("      <td width=\"13%\" align=\"left\">You Have Loged In By </td>\n");
      out.write("      <td width=\"12%\" align=\"left\" class=\"UserName\" ><b>");
      out.print(session.getAttribute("username"));
      out.write("</b></td>\n");
      out.write("      <td width=\"40%\">&nbsp;</td>\n");
      out.write("      <td width=\"35%\" align=\"right\"><a href=\"Login.jsp\" class=\"Logout\">Logout</a></td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    \n");
      out.write("    <body style=\"background-color:#EBEBEB\">\n");
      out.write("<ul id=\"css3menu1\" class=\"topmenu\">\n");
      out.write("    <li class=\"topmenu\"><a href=\"Home.jsp\" style=\"height:16px;line-height:16px;\">Home</a></li>\n");
      out.write("        <li class=\"topmenu\"><a href=\"Login.jsp\" style=\"height:16px;line-height:16px;\">Login</a></li>\n");
      out.write("\t<li class=\"topmenu\"><a href=\"#\" style=\"height:16px;line-height:16px;\"><span>Registration</span></a>\n");
      out.write("\t<ul>\n");
      out.write("            <li class=\"subfirst\"><a href=\"Frm_User.jsp\">User</a></li>\n");
      out.write("            <li><a href=\"Frm_Customer.jsp\">Customer</a></li>\n");
      out.write("            <li><a href=\"Frm_Employee.jsp\">Employee</a></li>\n");
      out.write("            <li class=\"sublast\"><a href=\"frmSupplier.jsp\">Supplier</a></li>\n");
      out.write("\t</ul></li>\n");
      out.write("\t<li class=\"topmenu\"><a href=\"#\" style=\"height:16px;line-height:16px;\"><span>Transaction</span></a>\n");
      out.write("\t<ul>\n");
      out.write("            <li class=\"subfirst\"><a href=\"Frm_Billing.jsp\">Billing</a></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Categories</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("                    <li class=\"subfirst\"><a href=\"Frm_Company.jsp\">Company</a></li>\n");
      out.write("                        <li><a href=\"frmCategory.jsp\">Category</a></li>\n");
      out.write("                        <li class=\"sublast\"><a href=\"Frm_Product.jsp\">Product</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("                <li><a href=\"Frm_Inward.jsp\">Inward</a></li>\n");
      out.write("                <li class=\"sublast\"><a href=\"Frm_Outward.jsp\">Outward</a></li>\n");
      out.write("\t</ul></li>\n");
      out.write("        <li class=\"topmenu\"><a href=\"frmFeedback.jsp\" style=\"height:16px;line-height:16px;\">Feedback</a></li>\n");
      out.write("\t<li class=\"topmenu\"><a href=\"#\" style=\"height:16px;line-height:16px;\"><span>Master</span></a>\n");
      out.write("\t<ul>\n");
      out.write("            <li class=\"subfirst\"><a href=\"Frm_User_Type.jsp\">User Type</a></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Banking</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("                    <li class=\"subfirst\"><a href=\"Frm_Payment_Mode.jsp\">Payment Mode</a></li>\n");
      out.write("                    <li class=\"sublast\"><a href=\"Frm_Bank.jsp\">Bank</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("\t\t<li><a href=\"#\"><span>Entries</span></a>\n");
      out.write("\t\t<ul>\n");
      out.write("                    <li class=\"subfirst\"><a href=\"Frm_Country.jsp\">Country</a></li>\n");
      out.write("                    <li><a href=\"Frm_State.jsp\">State</a></li>\n");
      out.write("                    <li class=\"sublast\"><a href=\"Frm_City.jsp\">City</a></li>\n");
      out.write("\t\t</ul></li>\n");
      out.write("                <li><a href=\"Frm_Designation.jsp\">Designation</a></li>\n");
      out.write("                <li class=\"sublast\"><a href=\"Frm_Department.jsp\">Department</a></li>\n");
      out.write("\t</ul></li>\n");
      out.write("</ul>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>COUNTRY PAGE</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write(".style1 {color: #FFFFFF}\n");
      out.write(".style2 {color: #FF0000}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("     \n");
      out.write("        <form name=\"frm\" action=\"Bll_Country.jsp\" method=\"post\" onSubmit=\"return validateForm();\">        \n");
      out.write("        <h1>COUNTRY REGISTRATION</h1>\n");
      out.write("        <HR/>\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    COUNTRY CODE   :\n");
      out.write("                </td>\n");
      out.write("            <td>\n");
      out.write("                <input type=\"text\" name=\"txtcode\" placeholder=\"Enter the Code\" value=\"");
      out.print(obj.code);
      out.write("\"/>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                   COUNTRY NAME    :\n");
      out.write("                </td>\n");
      out.write("            <td>\n");
      out.write("                <input type=\"text\" name=\"txtcountry\" placeholder=\"Enter the Country \" value=\"");
      out.print(obj.country);
      out.write("\"/>  \n");
      out.write("                <input type=\"hidden\" name=\"txtCountryID\" value=\"");
      out.print(obj.country_id);
      out.write("\"/>\n");
      out.write("            </td>\n");
      out.write("            </tr>\n");
      out.write("              <tr>\n");
      out.write("                    <td>&nbsp;</td>\n");
      out.write("                    <td>\n");
      out.write("                            <table width=\"74%\">\n");
      out.write("          <tr>\n");
 if(request.getParameter("pkid")!=null)
    {

      out.write("        \n");
      out.write("                <td>\n");
      out.write("                    <input type=\"submit\" value=\"UPDATE\" name=\"btn\"/>\n");
      out.write("                    <input type=\"submit\" value=\"DELETE\" name=\"btn\"/>            \n");
      out.write("  ");

    }
    else
    {
  
      out.write("\n");
      out.write("                    <input type=\"submit\" value=\"SAVE\" name=\"btn\"/>    \n");
      out.write("    ");
}
      out.write("       \n");
      out.write("                    <input type=\"submit\" value=\"SHOW\" onclick=\"this.form.submit(); return false;\" name=\"btn\"/>                    \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("        </table>\n");
      out.write("                <h3> <span class=\"style2\" id=\"demo\"></span></h3>\n");
      out.write("</form>    \n");
      out.write("    </body>\n");
      out.write("</html>");
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
