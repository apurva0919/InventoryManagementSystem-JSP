package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DBpack.clsdepartment;
import java.sql.*;
import java.util.*;

public final class Frm_005fDepartment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");

    clsdepartment obj=new clsdepartment();
    
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.Department_Id=pkid;
        obj.Retrive();
    }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    ");
      out.write("\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<title>Untitled Document</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write(".style1 {color: #FFFFFF}\n");
      out.write(".style2 {color: #FF0000}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function allLetter(ctrlName){\n");
      out.write("    var letters = /^[A-Za-z]+$/;\n");
      out.write("    if(ctrlName.value.match(letters))\n");
      out.write("    {\n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("    else\n");
      out.write("    {\n");
      out.write("       // alert('Department Must have alphabet characters only');\n");
      out.write("               //document.getElementById(\"demo1\").innerHTML = \"*\";\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"*  Must have alphabet characters only \";\n");
      out.write("        ctrlName.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write(" function validateForm(){\n");
      out.write("    if(document.frm.txtDepartmentCode.value == \"\")\n");
      out.write("    {\n");
      out.write("        //alert('CODE SHOULD NOT BE LEFT BLANK');\n");
      out.write("        // document.getElementById(\"demo1\").innerHTML = \"*\";\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* CODE SHOULD NOT BE LEFT BLANK \";\n");
      out.write("        document.frm.txtDepartmentCode.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("     if(document.frm.txtDepartment.value == \"\")\n");
      out.write("    {\n");
      out.write("          //      document.getElementById(\"demo1\").innerHTML = \"*\";\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* DEPARTMENT SHOULD NOT BE LEFT BLANK \";\n");
      out.write("       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.txtDepartment.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if(allLetter(document.frm.txtDepartment)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("    else\n");
      out.write("    {    \n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("function fun1()\n");
      out.write("{\n");
      out.write("    //var str=document.getElementsByName(\"txtDepartment\");\n");
      out.write("    document.getElementsByName(\"txtDepartment\").value==document.getElementsByName(\"txtDepartment\").toUpperCase();\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <form name=\"frm\" action=\"Bll_Deparment.jsp\" onsubmit=\"return validateForm();\" method=\"post\" >\n");
      out.write("<table width=\"100%\">\n");
      out.write("  <tr>\n");
      out.write("    <td><table width=\"100%\">\n");
      out.write("      <tr bgcolor=\"#000000\">\n");
      out.write("        <td colspan=\"2\"><h2><span class=\"style1\">Department</span></h2></td>\n");
      out.write("        </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td width=\"12%\">Department Code </td>\n");
      out.write("        <td width=\"88%\">\n");
      out.write("            <input name=\"txtDepartmentId\" type=\"hidden\" value=\"");
      out.print(obj.Department_Id);
      out.write("\" size=\"60%\" />\n");
      out.write("            <input name=\"txtDepartmentCode\" type=\"text\" placeholder=\"Please Enter Code\"  value=\"");
      out.print(obj.Department_Code);
      out.write("\" size=\"60%\" />\n");
      out.write("       \n");
      out.write("        </td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td>Department</td>\n");
      out.write("        <td><input name=\"txtDepartment\" type=\"text\" placeholder=\"Please Enter Department\" onchange=\"fun1();\" value=\"");
      out.print(obj.Department);
      out.write("\" size=\"60%\" />\n");
      out.write("       \n");
      out.write("        </td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td>&nbsp;</td>\n");
      out.write("        <td><table width=\"32%\">\n");
      out.write("          <tr>\n");
      out.write("            ");
 if(request.getParameter("pkid")!=null)
    {

      out.write("        \n");
      out.write("                <td>\n");
      out.write("                    <input type=\"submit\" value=\"UPDATE\" name=\"btn\" />\n");
      out.write("                    \n");
      out.write("                    <input type=\"submit\" value=\"DELETE\" name=\"btn\"/>\n");
      out.write("  ");

    }
    else
    {
  
      out.write("\n");
      out.write("  <input type=\"submit\" value=\"SAVE\" name=\"btn\" />    \n");
      out.write("    ");
}
      out.write("        \n");
      out.write("    <input  type=\"submit\" value=\"SHOW\" onclick=\"this.form.submit(); return false;\" name=\"btn\"  />                    \n");
      out.write("                </td>          </tr>\n");
      out.write("        </table></td>\n");
      out.write("      </tr>\n");
      out.write("    </table></td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("                    <h3> <span class=\"style2\" id=\"demo\"></span></h3>\n");
      out.write("</form>\n");
      out.write("</body>\n");
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
