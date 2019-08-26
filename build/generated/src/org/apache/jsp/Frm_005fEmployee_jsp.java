package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DBpack.clsEmployee;
import DBpack.clsdepartment;
import DBpack.clsdesignation;
import DBpack.clsuser;
import DBpack.clscity;
import DBpack.clsstate;
import java.sql.ResultSet;
import DBpack.clscountry;

public final class Frm_005fEmployee_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
    clscountry objc=new clscountry();
    ResultSet rsc=objc.select();
    clsstate objs=new clsstate();
    ResultSet rss=objs.select();
    clscity objcc=new clscity();
    ResultSet rscc=objcc.select();
    clsdesignation objdes=new clsdesignation();
    ResultSet rsdes=objdes.select();
    clsdepartment objdept=new clsdepartment();
    ResultSet rsdept=objdept.select();
    clsEmployee obj=new clsEmployee();
    ResultSet rs=obj.select();
    
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.Employee_Id=pkid;
        obj.Retrive();
    }

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("    ");
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
      out.write("    <script src=\"Script/datetimepicker_css.js\"></script>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<title>Untitled Document</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write(".style1 {color: #FFFFFF}\n");
      out.write(".style2 {color: #000000}\n");
      out.write(".style3 {color: #FF0000}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function allLetter(ctrlName)\n");
      out.write("{\n");
      out.write("    var letters = /^[A-Za-z]+$/;\n");
      out.write("    if(ctrlName.value.match(letters))\n");
      out.write("    {\n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("    else\n");
      out.write("    {\n");
      out.write("       // alert('Department Must have alphabet characters only');\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"*  Must have alphabet characters only \";\n");
      out.write("        ctrlName.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("function allnumeric(ctrlName)\n");
      out.write("{\n");
      out.write("    var numbers = /^[0-9]+$/;\n");
      out.write("    if(ctrlName.value.match(numbers))\n");
      out.write("    {\n");
      out.write("    return true;\n");
      out.write("    }\n");
      out.write("    else\n");
      out.write("    {\n");
      out.write("          document.getElementById(\"demo\").innerHTML = \"*  must have numeric characters only \";  \n");
      out.write("            //alert(' must have numeric characters only');\n");
      out.write("    ctrlName.focus();\n");
      out.write("    return false;\n");
      out.write("    }\n");
      out.write("}\n");
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
      out.write("    document.getElementById(\"demo\").innerHTML = \"*  address must have alphanumeric characters only \";\n");
      out.write("    uadd.focus();\n");
      out.write("    return false;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("function ValidateEmail(ctrlName)\n");
      out.write("{\n");
      out.write("var x=ctrlName.value;\n");
      out.write("var atpos=x.indexOf(\"@\");\n");
      out.write("var dotpos=x.lastIndexOf(\".\");\n");
      out.write("if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)\n");
      out.write("  {\n");
      out.write("  document.getElementById(\"demo\").innerHTML = \"*  Not a Valid E-Mail Address \";    \n");
      out.write("  //alert(\"Not a valid e-mail address\");\n");
      out.write("  ctrlName.focus();\n");
      out.write("  return false;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write(" function validateForm(){\n");
      out.write("    if(document.frm.txtFirst.value == \"\")\n");
      out.write("    {\n");
      out.write("        //alert('CODE SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* FIRST NAME SHOULD NOT BE LEFT BLANK \";\n");
      out.write("        document.frm.txtFirst.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if(document.frm.txtLast.value == \"\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* LAST NAME SHOULD NOT BE LEFT BLANK \";\n");
      out.write("       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.txtLast.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("       if(allLetter(document.frm.txtFirst)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("       \n");
      out.write("       if(allLetter(document.frm.txtLast)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("       if(allnumeric(document.frm.txtMobile)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }    \n");
      out.write("       if(alphanumeric(document.frm.txtStreet1)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       } \n");
      out.write("       if(allnumeric(document.frm.txtPinCode)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("       if(allnumeric(document.frm.txtSalary)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("       if(ValidateEmail(document.frm.txtEmailAddress)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("       if(alphanumeric(document.frm.txtEducation)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("    else\n");
      out.write("    {    \n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <form name=\"frm\" action=\"Bll_Employee.jsp\" method=\"post\" onsubmit=\"return validateForm()\">\n");
      out.write("<table width=\"100%\">\n");
      out.write("  <tr bgcolor=\"#000000\">\n");
      out.write("    <td colspan=\"2\"><h2><span class=\"style1\">EMPLOYEE REGISTRATION</span></h2></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td colspan=\"2\"><table width=\"80%\" align=\"center\">\n");
      out.write("      <tr>\n");
      out.write("        <td width=\"10%\">Name</td>\n");
      out.write("        <td width=\"31%\"><input name=\"txtFirst\" type=\"text\" size=\"45%\" placeholder=\"Enter First Name\" value=\"");
      out.print(obj.First_Name);
      out.write("\"/></td>\n");
      out.write("        <td width=\"18%\"><input name=\"txtMiddle\" type=\"text\" size=\"22%\" placeholder=\"Enter Middle Name\" value=\"");
      out.print(obj.Middle_Name);
      out.write("\" /></td>\n");
      out.write("        <td width=\"41%\"><input name=\"txtLast\" type=\"text\" size=\"45%\" placeholder=\"Enter Last Name\" value=\"");
      out.print(obj.Last_Name);
      out.write("\" /></td>\n");
      out.write("        <input name=\"txtEmployeeId\" type=\"hidden\" size=\"40%\" value=\"");
      out.print(obj.Employee_Id);
      out.write("\"/>\n");
      out.write("      </tr>\n");
      out.write("     ");
      out.write("\n");
      out.write("      <tr>\n");
      out.write("        <td>Gender</td>\n");
      out.write("        <td>\n");
      out.write("            <label>\n");
      out.write("            <input name=\"radiobutton\" type=\"radio\"  value=\"");
      out.print(obj.Gender);
      out.write("\" />\n");
      out.write("            </label>\n");
      out.write("            Male\n");
      out.write("            <label>\n");
      out.write("            <input name=\"radiobutton\" type=\"radio\"  value=\"");
      out.print(obj.Gender);
      out.write("\" />\n");
      out.write("            </label>\n");
      out.write("            Female\n");
      out.write("        </td>\n");
      out.write("        <td>Birthday</td>\n");
      out.write("      <td>\n");
      out.write("      <input type=\"text\"  id=\"txtDateofBirth\" name=\"txtBirthDate\" size=\"45%\" placeholder=\"Select Date yyyy-mm-dd\" value=\"");
      out.print(obj.DOB);
      out.write("\">\n");
      out.write("      <img src=\"Images/Images.PNG\"width=\"20px\" height=\"20px\" onclick=\"NewCssCal('txtDateofBirth','YYYYMMDD')\" style=\"cursor:pointer\"/>\n");
      out.write("      </td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td>Department</td>\n");
      out.write("          <td><select name=\"selectDepartmentId\" style=\"width: 93%\" >\n");
      out.write("                         <option value=\"0\" selected=\"true\">-----Select-----</option>\n");
      out.write("\n");
      out.write("                        ");
while(rsdept.next())
                        { 
                            if(rsdept.getInt("Department_Id")==(objdept.Department_Id))
                                {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rsdept.getInt("Department_Id"));
      out.write("\" selected=\"true\">");
      out.print(rsdept.getInt("Department_Id"));
      out.write("</option>\n");
      out.write("                        ");
}
                                 else
                            {
                                
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rsdept.getInt("Department_Id"));
      out.write('"');
      out.write('>');
      out.print(rsdept.getString("Department"));
      out.write("</option>\n");
      out.write("                      ");

                            } 
  }
      out.write("\n");
      out.write("         </select></td>\n");
      out.write("        <td>Designation</td>\n");
      out.write("        <td><select name=\"selectDesignationId\" style=\"width: 70%\" >\n");
      out.write("                <option value=\"0\" selected=\"true\">-----Select-----</option>\n");
      out.write("                        ");
while(rsdes.next())
                        { 
                            if(rsdes.getInt("Designation_Id")==(objdes.Designation_Id))
                                {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rsdes.getInt("Designation_Id"));
      out.write("\" selected=\"true\">");
      out.print(rsdes.getString("Designation"));
      out.write("</option>\n");
      out.write("\n");
      out.write("                        ");
}
                                 else
                            {
                                
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rsdes.getInt("Designation_Id"));
      out.write('"');
      out.write('>');
      out.print(rsdes.getString("Designation"));
      out.write("</option>\n");
      out.write("                      ");

                            } 
  }
      out.write("\n");
      out.write("                    </select></td>\n");
      out.write("       <tr>\n");
      out.write("           <td>Mobile No.</td>\n");
      out.write("           <td><input type=\"text\" name=\"txtMobile\" size=\"45%\" placeholder=\"Enter your Mobile No.\" value=\"");
      out.print(obj.Mobile);
      out.write("\"</td>\n");
      out.write("           <td>Phone No.</td>\n");
      out.write("           <td><input type=\"text\" name=\"txtPhone\" size=\"45%\" placeholder=\"Enter your Phone NO\" value=\"");
      out.print(obj.Phone);
      out.write("\"</td>\n");
      out.write("       </tr>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td>Address</td>\n");
      out.write("        <td colspan=\"3\"><input name=\"txtStreet1\" type=\"text\" size=\"133%\" placeholder=\"Enter Street 1\" value=\"");
      out.print(obj.Street_1);
      out.write("\" /></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td>&nbsp;</td>\n");
      out.write("        <td colspan=\"3\"><input name=\"txtStreet2\" type=\"text\" size=\"133%\" placeholder=\"Enter Street 2\" value=\"");
      out.print(obj.Street_2);
      out.write("\" /></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("\t  <td>&nbsp;</td>\n");
      out.write("        <td colspan=\"3\"><input name=\"txtStreet3\" type=\"text\" size=\"133%\" placeholder=\"Enter Street 3\" value=\"");
      out.print(obj.Street_3);
      out.write("\" /></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td>City</td>\n");
      out.write("<td> <select name=\"selectCity\" style=\"width: 93%\" >\n");
      out.write("        <option value=\"0\" selected=\"true\">----Select-----</option>\n");
      out.write("                        ");
while(rscc.next())
                        { 
                            if(rscc.getInt("City_Id")==(obj.City_Id))
                                {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rscc.getInt("City_Id"));
      out.write("\" selected=\"true\">");
      out.print(rscc.getString("City"));
      out.write("</option>\n");
      out.write("\n");
      out.write("                        ");
}
                                 else
                            {
                                
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rscc.getInt("City_Id"));
      out.write('"');
      out.write('>');
      out.print(rscc.getString("City"));
      out.write("</option>\n");
      out.write("                      ");

                            } 
  }
      out.write("\n");
      out.write("        </select></td>        <td>Pin Code </td>\n");
      out.write("        <td><input name=\"txtPinCode\" type=\"text\" size=\"45%\" placeholder=\"Enter Pincode\" value=\"");
      out.print(obj.Pincode);
      out.write("\" /></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td>State</td>\n");
      out.write("<td> <select name=\"selectState\" style=\"width: 93%\" >\n");
      out.write("        <option value=\"0\" selected=\"true\">-----Select-----</option>\n");
      out.write("                       ");
while(rss.next())
                        { 
                            if(rss.getInt("state_id")==(obj.state_id))
                                {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rss.getInt("state_id"));
      out.write("\" selected=\"true\">");
      out.print(rss.getString("state"));
      out.write("</option>\n");
      out.write("\n");
      out.write("                        ");
}
                                 else
                            {
                                
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rss.getInt("state_id"));
      out.write('"');
      out.write('>');
      out.print(rss.getString("state"));
      out.write("</option>\n");
      out.write("                      ");

                            } 
  }
      out.write("\n");
      out.write("        </select></td>        <td>Country</td>\n");
      out.write("<td><select name=\"selectCountry\" style=\"width: 70%\" >\n");
      out.write("        <option value=\"0\" selected=\"true\">-----Select-----</option>\n");
      out.write("                        ");
while(rsc.next())
                        { 
                            if(rsc.getInt("country_id")==(obj.country_id))
                                {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rsc.getInt("country_id"));
      out.write("\" selected=\"true\">");
      out.print(rsc.getString("country"));
      out.write("</option>\n");
      out.write("\n");
      out.write("                        ");
}
                                 else
                            {
                                
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rsc.getInt("country_id"));
      out.write('"');
      out.write('>');
      out.print(rsc.getString("country"));
      out.write("</option>\n");
      out.write("                      ");

                            } 
  }
      out.write("\n");
      out.write("                    </select></td>      \n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td>Date of Joining </td>\n");
      out.write("        <td>\n");
      out.write("        <input type=\"text\"  id=\"txtDateofJoining\" name=\"txtJoiningDate\" size=\"40%\" placeholder=\"Enter Joining Date\" value=\"");
      out.print(obj.DOJ);
      out.write("\">\n");
      out.write("        <img src=\"Images/Images.PNG\"width=\"20px\" height=\"20px\" onclick=\"NewCssCal('txtDateofJoining','YYYYMMDD')\" style=\"cursor:pointer\"/>\n");
      out.write("        </td>\n");
      out.write("        <td>Salary</td>\n");
      out.write("        <td><input name=\"txtSalary\" type=\"text\" size=\"45%\"value=\"");
      out.print(obj.Salary);
      out.write("\" placeholder=\"Enter your Salary\" /></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td>Email Address</td>\n");
      out.write("        <td><input type=\"text\" name=\"txtEmailAddress\" size=\"45%\" placeholder=\"abc@mail.com\" value=\"");
      out.print(obj.Email);
      out.write("\"</td>  \n");
      out.write("        <td>Educational Level</td>\n");
      out.write("        <td><textarea name=\"txtEducation\" placeholder=\"Enter Education Level\" cols=\"35%\">");
      out.print(obj.Education);
      out.write("</textarea></td>\n");
      out.write("      </tr>\n");
      out.write("    </table>    </td>\n");
      out.write("  </tr>\n");
      out.write("\n");
      out.write("  <tr>\n");
      out.write("  <td width=\"18%\">&nbsp;</td>\n");
      out.write("    <td width=\"93%\"><table width=\"25%\">\n");
      out.write("      <tr>\n");
      out.write("            ");
 if(request.getParameter("pkid")!=null)
    {

      out.write("        \n");
      out.write("                <td>\n");
      out.write("                    <input type=\"submit\" value=\"UPDATE\" name=\"btn\"/>\n");
      out.write("               \n");
      out.write("                    <input type=\"submit\" value=\"DELETE\" name=\"btn\"/>\n");
      out.write("  ");

    }
    else
    {
  
      out.write("\n");
      out.write("               \n");
      out.write("                    <input type=\"submit\" value=\"SAVE\" name=\"btn\"/>      \n");
      out.write("    ");
}
      out.write("       \n");
      out.write("                \n");
      out.write("                    <input type=\"submit\" value=\"SHOW\" onclick=\"this.form.submit(); return false;\" name=\"btn\"/>                    \n");
      out.write("                </td>         \n");
      out.write("      </tr>\n");
      out.write("    </table>\n");
      out.write("    </td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td colspan=\"2\">&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("                <h3> <span class=\"style3\" id=\"demo\"></span></h3>\n");
      out.write("</form>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
