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

public class ClsCompany
{
    public int Company_Id=0;
    public String Company_Name="";
    public String Street_1="";
    public String Street_2="";
    public String Street_3="";
    public int City_Id=0;
    public String Pincode="";
    public String Mobile="";
    public String Email="";
    public String Website="";
    public String Contact_Person="";
    public String Contact_Mobile="";
    public String Contact_Email="";
    public int country_id=0;
    public int state_id=0;
    
    public void insert() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("{call sp_company_insert(?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setString(1,Company_Name);
    psmt.setString(2,Street_1);
    psmt.setString(3,Street_2);
    psmt.setString(4,Street_3);
    psmt.setInt(5,City_Id);
    psmt.setString(6,Pincode);
    psmt.setString(7,Mobile);
    psmt.setString(8,Email);
    psmt.setString(9,Website);
    psmt.setString(10,Contact_Person);
    psmt.setString(11,Contact_Mobile);
    psmt.setString(12,Contact_Email);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_company_show();");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_company_single(?)");
    psmt.setInt(1,Company_Id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    Company_Name=rs.getString("Company_Name");
    Website=rs.getString("Website");
    Street_1=rs.getString("Street_1");
    Street_2=rs.getString("Street_2");
    Street_3=rs.getString("Street_3");
    City_Id=rs.getInt("City_Id");
    Pincode=rs.getString("Pincode");
    Mobile=rs.getString("Mobile_No");
    Email=rs.getString("Email_Id");
    Contact_Person=rs.getString("Contact_Person");
    Contact_Mobile=rs.getString("Contact_Mobile");
    Contact_Email=rs.getString("Contact_Email");
    state_id=rs.getInt("state_id");
    country_id=rs.getInt("country_id");
    }
    public void update() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_company_update(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setInt(1,Company_Id);
    psmt.setString(2,Company_Name);
    psmt.setString(3,Street_1);
    psmt.setString(4,Street_2);
    psmt.setString(5,Street_3);
    psmt.setInt(6,City_Id);
    psmt.setString(7,Pincode);
    psmt.setString(8,Mobile);
    psmt.setString(9,Email);
    psmt.setString(10,Website);
    psmt.setString(11,Contact_Person);
    psmt.setString(12,Contact_Mobile);
    psmt.setString(13,Contact_Email);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_company_delete(?)}");
    psmt.setInt(1,Company_Id);
    psmt.executeUpdate();
    }
}
