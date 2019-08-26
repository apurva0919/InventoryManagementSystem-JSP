package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DBpack.ClsProduct;
import java.sql.ResultSet;

public final class Show_005fProduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    ClsProduct obj=new ClsProduct();
    ResultSet rs=obj.select();


      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>SHOW PRODUCT LIST</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write(".style1 {color: #FFFFFF}\n");
      out.write("-->\n");
      out.write("</style> \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"Frm_Product.jsp\" method=\"post\">\n");
      out.write("            <h2>List of User Details</h2>\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                        <a href=\"Frm_Product.jsp\" >Add a New Record</a>                      \n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr bgcolor=\"#000000\">\n");
      out.write("                <td></td>\n");
      out.write("                <td><span class=\"style1\">Product</span></td>\n");
      out.write("                <td><span class=\"style1\">Category</span></td>\n");
      out.write("                <td><span class=\"style1\">Company</span></td>\n");
      out.write("                <td><span class=\"style1\">Model</span></td>\n");
      out.write("                <td><span class=\"style1\">Supplier</span></td>\n");
      out.write("                <td><span class=\"style1\">Mobile No.</span></td>\n");
      out.write("                \n");
      out.write("            </tr>\n");
      out.write("            ");
while(rs.next())
            {
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td><a href=\"Frm_Product.jsp?pkid=");
      out.print(rs.getInt("Product_Id"));
      out.write("\" > SELECT </a></td>\n");
      out.write("                <td>\n");
      out.write("                    ");
      out.print(rs.getString("Product"));
      out.write("\n");
      out.write("                </td>\n");
      out.write("                 <td>\n");
      out.write("                    ");
      out.print(rs.getString("Category"));
      out.write("\n");
      out.write("                 </td>\n");
      out.write("                 <td>\n");
      out.write("                    ");
      out.print(rs.getString("Company_Name"));
      out.write("\n");
      out.write("                </td>\n");
      out.write("                 <td>\n");
      out.write("                    ");
      out.print(rs.getString("Model_Detail"));
      out.write("\n");
      out.write("                 </td>\n");
      out.write("                 <td>\n");
      out.write("                     ");
      out.print(rs.getString("Supplier"));
      out.write("\n");
      out.write("                 </td>\n");
      out.write("                 <td>\n");
      out.write("                    ");
      out.print(rs.getString("Helpline_No"));
      out.write("\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("         ");
}
      out.write("\n");
      out.write("        </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("\n");
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
