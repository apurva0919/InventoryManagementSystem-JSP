package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DBpack.ClsUserType;
import DBpack.clscity;
import java.sql.ResultSet;
import DBpack.clscountry;
import DBpack.clsstate;
import DBpack.clsuser;

public final class Frm_005fUser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
    ClsUserType objut= new ClsUserType();
    ResultSet rsut=objut.select();
    clscountry objc=new clscountry();
    ResultSet rsc=objc.select();
    clsstate objs=new clsstate();
    ResultSet rss=objs.select();
    clscity objcc=new clscity();
    ResultSet rscc=objcc.select();
    clsuser obj=new clsuser(); 
    ResultSet rs=obj.select();
    ResultSet rs1=obj.question();
    if(request.getParameter("pkid")!=null)
    {
        int pkid=Integer.parseInt(request.getParameter("pkid"));
        obj.User_Id=pkid;
        obj.Retrive();
    }

      out.write("\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function Password()\n");
      out.write("{\n");
      out.write("    if(document.frm.txtPassword.value !== document.frm.txtCofirmPassword.value)\n");
      out.write("    {\n");
      out.write("             \n");
      out.write("        document.getElementById(\"demo1\").innerHTML = \"Passwords don't match.Try Again?\";\n");
      out.write("        document.frm.txtCofirmPassword.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    else if(document.frm.txtPassword.value == document.frm.txtCofirmPassword.value)\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo1\").innerHTML =\"\";\n");
      out.write("    }\n");
      out.write("}\n");
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
      out.write("   /*  if(document.frm.txtMiddle.value == \"\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* MIDDLE NAME SHOULD NOT BE LEFT BLANK \";\n");
      out.write("       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.txtMiddle.focus();\n");
      out.write("        return false;\n");
      out.write("    }*/\n");
      out.write("    if(document.frm.txtLast.value == \"\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* LAST NAME SHOULD NOT BE LEFT BLANK \";\n");
      out.write("       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.txtLast.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if(document.frm.txtUserName.value == \"\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* USER NAME SHOULD NOT BE LEFT BLANK \";\n");
      out.write("       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.txtUserName.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if(document.frm.txtPassword.value == \"\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* PASSWORD SHOULD NOT BE LEFT BLANK \";\n");
      out.write("       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.txtPassword.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("   \n");
      out.write("       if(allLetter(document.frm.txtFirst)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }    \n");
      out.write("       if(allLetter(document.frm.txtLast)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }    \n");
      out.write("       if(allnumeric(document.frm.txtMobile)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }   \n");
      out.write("       if(alphanumeric(document.frm.txtUserName)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("       if(ValidateEmail(document.frm.txtEmailAddress)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("       if(alphanumeric(document.frm.txtStreet1)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("       if(allnumeric(document.frm.txtPinCode)==false)\n");
      out.write("       {\n");
      out.write("          return false; \n");
      out.write("       }\n");
      out.write("    if(document.frm.txtAnswer1.value == \"\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* ANSWER SHOULD NOT BE LEFT BLANK \";\n");
      out.write("       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.txtAnswer1.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if(document.frm.txtAnswer2.value == \"\")\n");
      out.write("    {\n");
      out.write("        document.getElementById(\"demo\").innerHTML = \"* ANSWER NAME SHOULD NOT BE LEFT BLANK \";\n");
      out.write("       // alert('DEPARTMENT SHOULD NOT BE LEFT BLANK');\n");
      out.write("        document.frm.txtAnswer2.focus();\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    else\n");
      out.write("    {    \n");
      out.write("        return true;\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <script src=\"Script/datetimepicker_css.js\"></script>\n");
      out.write("  ");
      out.write("\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"CSS/User.css\" />\n");
      out.write("<title>USER REGISTRATION</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write(".style1 {color: #FFFFFF}\n");
      out.write(".style2 {color: #000000}\n");
      out.write(".style3 {color: #FF0000}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>  \n");
      out.write("    <form name=\"frm\" action=\"Bll_User.jsp\" method=\"post\"onsubmit=\"return validateForm()\">\n");
      out.write("<table width=\"100%\">\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"41\" bgcolor=\"#000000\"><h2><span class=\"style1 style1\">User Registration </span></h2></td>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td><table width=\"60%\" align=\"center\">\n");
      out.write("      <tr>\n");
      out.write("        <td width=\"7%\" class=\"style2\">Name </td>\n");
      out.write("        <td width=\"28%\" class=\"style2\"><p>\n");
      out.write("                <input name=\"txtFirst\" type=\"text\" size=\"40%\" placeholder=\"Enter First Name\"value=\"");
      out.print(obj.First_Name);
      out.write("\" />\n");
      out.write("          <input name=\"txtUserId\" type=\"hidden\" size=\"40%\" value=\"");
      out.print(obj.User_Id);
      out.write("\"/>\n");
      out.write("        </p>          </td>\n");
      out.write("        <td width=\"15%\" class=\"style2\"><p>\n");
      out.write("                <input name=\"txtMiddle\" type=\"text\" size=\"20%\" placeholder=\"Enter Middle Name\" value=\"");
      out.print(obj.Middle_Name);
      out.write("\" />\n");
      out.write("        </p>          </td>\n");
      out.write("\t\t  <td width=\"50%\" class=\"style2\"><p>\n");
      out.write("                          <input name=\"txtLast\" type=\"text\" size=\"40%\" placeholder=\"Enter Last Name\" value=\"");
      out.print(obj.Last_Name);
      out.write("\"/>\n");
      out.write("\t\t  </p>\t\t    </td>\n");
      out.write("        </tr>\n");
      out.write("   ");
      out.write("\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"style2\">User Name</td>\n");
      out.write("        <td class=\"style2\"><input name=\"txtUserName\" type=\"text\" size=\"40%\" placeholder=\"Enter User Name \" value=\"");
      out.print(obj.User_Name);
      out.write("\" /></td>\n");
      out.write("\t<td class=\"style2\">User Type</td>\n");
      out.write(" <td> <select name=\"txtUserType\" style=\"width: 80%\" >\n");
      out.write("         <option value=\"0\" selected=\"true\">-----Select-----</option>\n");
      out.write("                        ");
 
                        while(rsut.next())
                        { 
                            if(rsut.getInt("User_Type_Id")==obj.User_Type_Id)
                                {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rsut.getString("User_Type_Id"));
      out.write("\"selected=\"true\">");
      out.print(rsut.getString("User_Type"));
      out.write("</option>\n");
      out.write("\n");
      out.write("                        ");
}
                                 else
                            {
                                
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rsut.getString("User_Type_Id"));
      out.write('"');
      out.write('>');
      out.print(rsut.getString("User_Type"));
      out.write("</option>\n");
      out.write("                      ");

                            } 
  }
      out.write("\n");
      out.write("        </select></td>\t  </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"style2\">Password</td>\n");
      out.write("        <td class=\"style2\"><input name=\"txtPassword\" type=\"password\" size=\"40%\" placeholder=\"Enter Password\" value=\"");
      out.print(obj.Password);
      out.write("\" /></td>\n");
      out.write("\t<td class=\"style2\">Confirm Password</td>\n");
      out.write("        <td class=\"style2\"><input name=\"txtCofirmPassword\" placeholder=\"Enter Password Again\" onchange=\"Password();\" type=\"password\" size=\"40%\" />\n");
      out.write("        <span class=\"style3\" id=\"demo1\"></span></td>\n");
      out.write("\t  </tr>\n");
      out.write("          ");

          
          
      out.write("\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"style2\">Gender</td>\n");
      out.write("        <td class=\"style2\"><input name=\"radiobutton\" type=\"radio\"  value=\"Male\" />\n");
      out.write("          Male \n");
      out.write("            <input name=\"radiobutton\" type=\"radio\" value=\"Female\" /> \n");
      out.write("            Female </td>\n");
      out.write("        <td class=\"style2\">Date of Birth</td>\n");
      out.write("        <td class=\"style2\">\n");
      out.write("            <input type=\"text\"  id=\"txtDateofBirth\" name=\"txtDateofBirth\" size=\"40%\" placeholder=\"Enter Date in YYYYMMDD\" value=\"");
      out.print(obj.DOB);
      out.write("\">\n");
      out.write("            <img src=\"Images/Images.PNG\"width=\"20px\" height=\"20px\" onclick=\"NewCssCal('txtDateofBirth','YYYYMMDD')\" style=\"cursor:pointer\"/>\n");
      out.write("        </td>\n");
      out.write("        </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"style2\">Mobile</td>\n");
      out.write("        <td class=\"style2\"><input name=\"txtMobile\" type=\"text\" size=\"40%\" value=\"");
      out.print(obj.Mobile);
      out.write("\" placeholder=\"Enter Mobile No.\" /></td>\n");
      out.write("        <td class=\"style2\">Email Address </td>\n");
      out.write("        <td class=\"style2\"><input name=\"txtEmailAddress\" type=\"text\" size=\"40%\" placeholder=\"abc@mail.com\" value=\"");
      out.print(obj.Email);
      out.write("\" /></td>\n");
      out.write("        </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"style2\">Address</td>\n");
      out.write("        <td colspan=\"3\" class=\"style2\"><input type=\"text\" name=\"txtStreet1\" size=\"114\" placeholder=\"Enter Street 1\" value=\"");
      out.print(obj.Street_1);
      out.write("\" /></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"style2\">&nbsp;</td>\n");
      out.write("        <td colspan=\"3\" class=\"style2\"><input type=\"text\" name=\"txtStreet2\" size=\"114\" placeholder=\"Enter Street 2\" value=\"");
      out.print(obj.Street_2);
      out.write("\"  /></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("\t    <td class=\"style2\">&nbsp;</td>\n");
      out.write("            <td colspan=\"3\" class=\"style2\"><input type=\"text\" name=\"txtStreet3\" size=\"114\" placeholder=\"Enter Street 3\" value=\"");
      out.print(obj.Street_3);
      out.write("\"  /></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("          <td class=\"style2\">City \n");
      out.write("              <a href=\"Frm_City.jsp\"><img src=Images/Capture1.JPG width=\"15px\" height=\"15px\" alt=\"sorry\" /></a> \n");
      out.write("          </td>\n");
      out.write("          <td> <select name=\"selectCity\" class=\"select\" style=\"width: 100%\" >\n");
      out.write("                  <option value=\"0\" selected=\"true\">-----Select-----</option>\n");
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
      out.write("        </select></td>\n");
      out.write("        <td>State\n");
      out.write("            <a href=\"Frm_State.jsp\"><img src=Images/Capture1.JPG width=\"15px\" height=\"15px\" alt=\"sorry\" /></a>\n");
      out.write("        </td>\n");
      out.write("        <td> <select name=\"selectState\" class=\"select\" style=\"width: 72%\" >\n");
      out.write("                <option value=\"0\" selected=\"true\">-----Select-----</option>\n");
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
      out.write("        </select></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"style2\">Country\n");
      out.write("            <a href=\"Frm_Country.jsp\"><img src=Images/Capture1.JPG width=\"15px\" height=\"15px\" alt=\"sorry\" /></a>\n");
      out.write("        </td>\n");
      out.write("        <td><select name=\"selectCountry\" class=\"select\" style=\"width: 100%\" >\n");
      out.write("                <option value=\"0\" selected=\"true\">-----Select-----</option>\n");
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
      out.write("                    </select></td>\n");
      out.write("        <td>Pin Code </td>\n");
      out.write("        <td><span class=\"style2\">\n");
      out.write("                <input name=\"txtPinCode\" type=\"text\" size=\"40%\" placeholder=\"Enter PinCode\" value=\"");
      out.print(obj.Pincode);
      out.write("\"  />\n");
      out.write("        </span></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"style2\">Question</td>\n");
      out.write("       <td> <select name=\"selectQuestion1\" style=\"width: 100%\" >\n");
      out.write("                        ");
while(rs1.next())
                        { 
                            if(rs1.getString("question").equals(obj.Question_1))
                                {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs1.getString("question"));
      out.write("\"selected=\"true\">");
      out.print(rs1.getString("question"));
      out.write("</option>\n");
      out.write("\n");
      out.write("                        ");
}
                                 else
                            {
                                
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs1.getString("question"));
      out.write('"');
      out.write('>');
      out.print(rs1.getString("question"));
      out.write("</option>\n");
      out.write("                      ");

                            } 
  }
      out.write("\n");
      out.write("        </select></td>\n");
      out.write("        <td>Answer</td>\n");
      out.write("        <td><span class=\"style2\">\n");
      out.write("                <input name=\"txtAnswer1\" type=\"text\" size=\"40%\" placeholder=\"Enter Answer\" value=\"");
      out.print(obj.Answer_1);
      out.write("\" />\n");
      out.write("        </span></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"style2\">Question</td>\n");
      out.write("        <td> <select name=\"selectQuestion2\" style=\"width: 100%\" >\n");
      out.write("                        ");
 
                        rs1.beforeFirst();
                        while(rs1.next())
                        { 
                            if(rs1.getString("question").equals(obj.Question_2))
                                {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs1.getString("question"));
      out.write("\"selected=\"true\">");
      out.print(rs1.getString("question"));
      out.write("</option>\n");
      out.write("\n");
      out.write("                        ");
}
                                 else
                            {
                                
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs1.getString("question"));
      out.write('"');
      out.write('>');
      out.print(rs1.getString("question"));
      out.write("</option>\n");
      out.write("                      ");

                            } 
  }
      out.write("\n");
      out.write("        </select></td>\n");
      out.write("        <td>Answer</td>\n");
      out.write("\t\t<td><span class=\"style2\">\n");
      out.write("                        <input name=\"txtAnswer2\" type=\"text\" size=\"40%\" placeholder=\"Enter Answer\" value=\"");
      out.print(obj.Answer_2);
      out.write("\" />\n");
      out.write("\t\t</span></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("\t  <td class=\"style2\">&nbsp;</td>\n");
      out.write("        <td colspan=\"3\" class=\"style2\"><table width=\"35%\" align=\"left\">\n");
      out.write(" <tr>\n");
      out.write("            ");
 if(request.getParameter("pkid")!=null)
    {

      out.write("        \n");
      out.write("                <td>\n");
      out.write("                    <input  type=\"submit\" value=\"UPDATE\" name=\"btn\"/>\n");
      out.write("                \n");
      out.write("                    <input type=\"submit\" value=\"DELETE\" name=\"btn\"/>\n");
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
      out.write("                </td>  \n");
      out.write(" </tr>\n");
      out.write("        </table>\n");
      out.write("        </td>\n");
      out.write("      </tr>  \n");
      out.write("    </table>\n");
      out.write("    </td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("</form>\n");
      out.write("                       <h3> <span class=\"style3\" id=\"demo\"></span></h3>\n");
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
