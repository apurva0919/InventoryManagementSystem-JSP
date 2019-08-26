/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DBpack;

import java.sql.*;
/**
 *
 * @author VAIBHAV
 */
public class clsEmployee 
{
    public int Employee_Id=0;
    public String First_Name="";
    public String Middle_Name="";
    public String Last_Name="";
    public int Department_Id;
    public int Designation_Id;
    public String Mobile="";
    public String Phone="";
    public String Gender="";
    public String DOB="";
    public String DOJ="";
    public String Email="";
    public String Salary="";
    public String Education="";
    public String Street_1="";
    public String Street_2="";
    public String Street_3="";
    public int City_Id;
    public String Pincode="";
    public int country_id;
    public int state_id;
    public String Department="";
    public void insert() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("{call sp_employee_insert(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setString(1,First_Name);
    psmt.setString(2,Middle_Name);
    psmt.setString(3,Last_Name);
    psmt.setInt(4,Department_Id);
    psmt.setInt(5,Designation_Id);
    psmt.setString(6,Mobile);
    psmt.setString(7,Phone);
    psmt.setString(8,Gender);
    psmt.setString(9,DOB);
    psmt.setString(10,DOJ);
    psmt.setString(11,Email);
    psmt.setString(12,Salary);
    psmt.setString(13,Education);
    psmt.setString(14,Street_1);
    psmt.setString(15,Street_2);
    psmt.setString(16,Street_3);
    psmt.setInt(17,City_Id);
    psmt.setString(18,Pincode);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_employee_show()};");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_employee_single(?)");
    psmt.setInt(1,Employee_Id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    First_Name=rs.getString("First_Name");
    Middle_Name=rs.getString("Middle_Name");
    Last_Name=rs.getString("Last_Name");
    Department_Id=rs.getInt("Department_Id");
    Designation_Id=rs.getInt("Designation_Id");
    Gender=rs.getString("Gender");
    DOB=rs.getString("Birth_Date");
    DOJ=rs.getString("Joining_Date");
    Mobile=rs.getString("Mobile_No");
    Phone=rs.getString("Phone_No");
    Email=rs.getString("Email_Id");
    Salary=rs.getString("Salary");
    Education=rs.getString("Education_Level");
    Street_1=rs.getString("Street_1");
    Street_2=rs.getString("Street_2");
    Street_3=rs.getString("Street_3");
    City_Id=rs.getInt("City_Id");
    Pincode=rs.getString("Pincode");
    state_id=rs.getInt("state_id");
    country_id=rs.getInt("country_id");
    }
    public void update() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_employee_update(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setInt(1,Employee_Id);
    psmt.setString(2,First_Name);
    psmt.setString(3,Middle_Name);
    psmt.setString(4,Last_Name);
    psmt.setInt(5,Department_Id);
    psmt.setInt(6,Designation_Id);
    psmt.setString(7,Mobile);
    psmt.setString(8,Phone);
    psmt.setString(9,Gender);
    psmt.setString(10,DOB);
    psmt.setString(11,DOJ);
    psmt.setString(12,Email);
    psmt.setString(13,Salary);
    psmt.setString(14,Education);
    psmt.setString(15,Street_1);
    psmt.setString(16,Street_2);
    psmt.setString(17,Street_3);
    psmt.setInt(18,City_Id);
    psmt.setString(19,Pincode);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_employee_delete(?)}");
    psmt.setInt(1,Employee_Id);
    psmt.executeUpdate();
    }
    public ResultSet searchbyfirstname() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
   
    String strQuery="select * from vwuser ";
    String whereClause="";
    if(First_Name.trim().length()>0)
    {
        whereClause="First_Name like '" + First_Name +"%'";
    }
    if(Last_Name.trim().length()>0)
    {
        if(whereClause.trim().length()>0)
        {
            whereClause=whereClause+" and " ;
        }
        whereClause=whereClause+ " Last_Name like '" + Last_Name +"%'";
    }
    if(Gender.trim().length()>0)
    {
        if(whereClause.trim().length()>0)
        {
            whereClause=whereClause+" and " ;
        }
        whereClause=whereClause+ " Gender like '" + Gender +"%'";
    }
    if(Department.trim().length()>0)
    {
        if(whereClause.trim().length()>0)
        {
            whereClause=whereClause+" and " ;
        }
        whereClause=whereClause+ " Department like '" + Department +"%'";
    }
    if(whereClause.trim().length()>0)
        {
                strQuery=strQuery+ " where "+whereClause;

        }
    PreparedStatement psmt = cnn.prepareStatement(strQuery);
   // psmt.setString(1,First_Name);
    ResultSet rs=psmt.executeQuery();
    return rs;
    
    }
    public ResultSet searchbygender() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_employee_searchbygender(?)");
    psmt.setString(1,Gender);
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public ResultSet searchbydepartment() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("select * from vwuser;");
   // psmt.setString(1,SearchByDepartment);
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    
}
