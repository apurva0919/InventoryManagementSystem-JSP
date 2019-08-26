package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import DBpack.ClsUserType;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");

   
    ClsUserType objut=new ClsUserType();
    ResultSet rsut=objut.select();

      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function alphanumeric(uadd)\n");
      out.write("{\n");
      out.write("    var letters = /^[0-9a-zA-Z]+$/;\n");
      out.write("    if(uadd.value.match(letters))\n");
      out.write("    {\n");
      out.write("    return true;\n");
      out.write("    }\n");
      out.write("    else\n");
      out.write("    {\n");
      out.write("   // alert(' address must have alphanumeric characters only');\n");
      out.write("    document.getElementById(\"demo\").innerHTML = \"*  Must have Alphanumeric Characters only \";\n");
      out.write("    uadd.focus();\n");
      out.write("    return false;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(" function validateForm(){\n");
      out.write("    if(document.frm.txtUserName.value == \"\")\n");
      out.write("    {\n");
      out.write("        //alert('CODE SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* USER NAME SHOULD NOT BE LEFT BLANK \";\n");
      out.write("        document.frm.txtUserName.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("     if(document.frm.txtPassword.value == \"\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* PASSWORD SHOULD NOT BE LEFT BLANK \";\n");
      out.write("       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.txtPassword.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if(document.frm.selectUserType.value == \"0\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* SELECT ANY USER TYPE \";\n");
      out.write("       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.selectUserType.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("       if(alphanumeric(document.frm.txtUserName)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("       if(alphanumeric(document.frm.txtPassword)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }    \n");
      out.write("    else\n");
      out.write("    {    \n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("function tryagain()\n");
      out.write("{\n");
      out.write("    \n");
      out.write("    \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("    <link type=\"text/css\" rel=\"stylesheet\" href=\"CSS/login.css\" />\n");
      out.write("    <link type=\"text/css\" rel=\"stylesheet\" href=\"CSS/button.css\" />\n");
      out.write("    \n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<title>Login Page</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write("\n");
      out.write(".style3 {color: #FF0000}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <form name=\"frm\" action=\"Bll_Login.jsp\" method=\"post\" onsubmit=\"return validateForm()\">\n");
      out.write("    <table width=\"100%\" height=\"640\" class=\"table\" >\n");
      out.write("        <tr>\n");
      out.write("    <td>\n");
      out.write("        <table width=\"60%\" height=\"239\" class=\"maintable\" align=\"center\" >\n");
      out.write("            \n");
      out.write("      <tr>\n");
      out.write("          <td><h2><u>Login</u></h2></td>\n");
      out.write("        <td><h2 align=\"right\">&nbsp;</h2></td>\n");
      out.write("        <td width=\"46%\" rowspan=\"6\">&nbsp;</td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td width=\"17%\">&nbsp;</td>\n");
      out.write("        <td width=\"37%\">&nbsp;</td>\n");
      out.write("        </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td width=\"17%\"><h3>User Name </h3></td>\n");
      out.write("        <td width=\"37%\"><input type=\"text\" class=\"txtbox\" name=\"txtUserName\" /></td>\n");
      out.write("        </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td width=\"17%\"><h3>Password</h3></td>\n");
      out.write("        <td width=\"37%\"><input type=\"password\" class=\"txtbox\" name=\"txtPassword\" /></td>\n");
      out.write("        </tr>\n");
      out.write("      <tr>\n");
      out.write("      <tr>\n");
      out.write("        <td width=\"17%\"><h3>User Type</h3></td>\n");
      out.write("        <td width=\"37%\">\n");
      out.write("            <select name=\"selectUserType\" class=\"select\" >\n");
      out.write("                         <option value=\"0\" selected=\"true\">-----Select-----</option>\n");
      out.write("\n");
      out.write("                        ");
while(rsut.next())
                        { 
                            if(rsut.getInt("User_Type_Id")==(objut.User_Type_Id))
                                {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rsut.getInt("User_Type_Id"));
      out.write("\" selected=\"true\">");
      out.print(rsut.getInt("User_Type"));
      out.write("</option>\n");
      out.write("                        ");
}
                                 else
                            {
                                
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rsut.getInt("User_Type_Id"));
      out.write('"');
      out.write('>');
      out.print(rsut.getString("User_Type"));
      out.write("</option>\n");
      out.write("                      ");

                            } 
  }
      out.write("\n");
      out.write("         </select></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("          <td>&nbsp;</td>\n");
      out.write("        <td>\n");
      out.write("                    \n");
      out.write("                     <input  type=\"submit\" name=\"Submit\" class=\"button\"  value=\"Login\" />\n");
      out.write("        \n");
      out.write("        </td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td width=\"17%\">&nbsp;</td>\n");
      out.write("        <td width=\"37%\">&nbsp;</td>\n");
      out.write("        </tr>\n");
      out.write("            <tr>\n");
      out.write("        <td width=\"17%\">&nbsp;</td>\n");
      out.write("        <td width=\"37%\">&nbsp;</td>\n");
      out.write("        </tr>\n");
      out.write("        </table>\n");
      out.write("        <h3> <span class=\"style3\" id=\"demo\"></span></h3>\n");
      out.write("    </td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("    </form>\n");
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
