package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DBpack.clscountry;
import java.sql.ResultSet;
import DBpack.clsstate;
import java.sql.ResultSet;
import DBpack.clsuser;

public final class Frm_005fState_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    clsstate obj=new clsstate();
    clscountry objc=new clscountry();
    ResultSet rs=objc.select();
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.state_id=pkid;
        obj.Retrive();
        
    }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("  \n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("                ");
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
      out.write("        <title>STATE</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write(".style2 {color: #FF0000}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("function allLetter(ctrlName){\n");
      out.write("    var letters = /^[A-Za-z]+$/;\n");
      out.write("    if(ctrlName.value.match(letters))\n");
      out.write("    {\n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("    else\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* Must have alphabet characters only \";\n");
      out.write("        //alert('Must have alphabet characters only');\n");
      out.write("        ctrlName.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write(" function validateForm(){\n");
      out.write("    if(document.frm.drpcountry.value == \"\")\n");
      out.write("    {\n");
      out.write("        //alert('STATE SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* COUNTRY SHOULD NOT BE LEFT BLANK \";\n");
      out.write("        document.frm.drpcountry.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if(document.frm.txtcode.value == \"\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* CODE SHOULD NOT BE LEFT BLANK \"; \n");
      out.write("        //alert('CODE SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.txtcode.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if(document.frm.txtstate.value == \"\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* STATE SHOULD NOT BE LEFT BLANK \";    \n");
      out.write("       // alert('CITY SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.txtstate.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if(allLetter(document.frm.txtcode)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("    else if(allLetter(document.frm.txtstate)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }    \n");
      out.write("    else\n");
      out.write("    {    \n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"Bll_State.jsp \" name=\"frm\"  method=\"post\" onsubmit=\"return validateForm();\" >        \n");
      out.write("        <h1>STATE REGISTRATION</h1><hr/>\n");
      out.write("        <table style=\"width: 50%\">\n");
      out.write("            <tr>\n");
      out.write("                <td style=\"width: 25%\">\n");
      out.write("                     CODE\n");
      out.write("                </td>\n");
      out.write("            <td style=\"width: 25%\">\n");
      out.write("                <input type=\"text\" name=\"txtcode\" placeholder=\"Please Enter Code\" value=\"");
      out.print(obj.code);
      out.write("\" size=\"50%\"/>\n");
      out.write("                <input type=\"hidden\" name=\"txtstateID\" value=\"");
      out.print(obj.state_id);
      out.write("\"/>\n");
      out.write("\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td style=\"width: 25%\">\n");
      out.write("                   STATE  \n");
      out.write("                </td>\n");
      out.write("            <td style=\"width: 25%\">\n");
      out.write("                <input type=\"text\" name=\"txtstate\" placeholder=\"Please Enter State\" value=\"");
      out.print(obj.state);
      out.write("\"size=\"50%\"/>  \n");
      out.write("            </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td style=\"width: 25%\">\n");
      out.write("                    COUNTRY \n");
      out.write("                </td>\n");
      out.write("                                <td style=\"width: 25%\">\n");
      out.write("                    <select name=\"drpcountry\" style=\"width: 87%\" >\n");
      out.write("                        ");
while(rs.next())
                        { 
                            if(rs.getString("country_id").equals(obj.country_id))
                                {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs.getString("country_id"));
      out.write("\" selected=\"true\">");
      out.print(rs.getString("country"));
      out.write("</option>\n");
      out.write("\n");
      out.write("                        ");
}
                                 else
                            {
                                
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs.getString("country_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("country"));
      out.write("</option>\n");
      out.write("                      ");

                            } 
  }
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                </td>\n");
      out.write("            </tr>        \n");
      out.write("        </table>\n");
      out.write("         <table style=\"width:50%\">\n");
      out.write("            <tr>\n");
 if(request.getParameter("pkid")!=null)
    {

      out.write("        \n");
      out.write("                <td>\n");
      out.write("                    <input type=\"submit\" value=\"UPDATE\" name=\"btn\"/>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"submit\" value=\"DELETE\" name=\"btn\"/>\n");
      out.write("                </td>\n");
      out.write("  ");

    }
    else
    {
  
      out.write("\n");
      out.write("                <td>\n");
      out.write("                    <input type=\"submit\" value=\"SAVE\" name=\"btn\"/>    \n");
      out.write("                </td>\n");
      out.write("                \n");
      out.write("    ");
}
      out.write("       \n");
      out.write("                <td>\n");
      out.write("                    <input type=\"submit\" value=\"SHOW\" onclick=\"this.form.submit(); return false;\" name=\"btn\"/>                    \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("       </table>         \n");
      out.write("                 <h3> <span class=\"style2\" id=\"demo\"></span></h3>\n");
      out.write("</form>    \n");
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
