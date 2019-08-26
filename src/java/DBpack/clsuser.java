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

public class clsuser 
{
    public int User_Id=0;
    public String First_Name="";
    public String Middle_Name="";
    public String Last_Name="";
    public String User_Name="";
    public String Password="";
    public String Gender="";
    public String DOB="";
    public String Mobile="";
    public String Email="";
    public String Street_1="";
    public String Street_2="";
    public String Street_3="";
    public int City_Id;
    public String Pincode="";
    public String Question_1="";
    public String Answer_1="";
    public String Question_2="";
    public String Answer_2="";
    public int country_id;
    public int state_id;
    public int User_Type_Id=0;
    
    public void insert() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("{call sp_user_insert(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setString(1,First_Name);
    psmt.setString(2,Middle_Name);
    psmt.setString(3,Last_Name);
    psmt.setString(4,User_Name);
    psmt.setString(5,Password);
    psmt.setString(6,Gender);
    psmt.setString(7,DOB);
    psmt.setString(8,Mobile);
    psmt.setString(9,Email);
    psmt.setString(10,Street_1);
    psmt.setString(11,Street_2);
    psmt.setString(12,Street_3);
    psmt.setInt(13,City_Id);
    psmt.setString(14,Pincode);
    psmt.setString(15,Question_1);
    psmt.setString(16,Answer_1);
    psmt.setString(17,Question_2);
    psmt.setString(18,Answer_2);
    psmt.setInt(19, User_Type_Id);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_user_show();");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_user_single(?)");
    psmt.setInt(1,User_Id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    First_Name=rs.getString("First_Name");
    Middle_Name=rs.getString("Middle_Name");
    Last_Name=rs.getString("Last_Name");
    User_Name=rs.getString("User_Name");
    Password=rs.getString("Password");
    Gender=rs.getString("Gender");
    DOB=rs.getString("Birth_Date");
    Mobile=rs.getString("Mobile_No");
    Email=rs.getString("Email_Id");
    Street_1=rs.getString("Street_1");
    Street_2=rs.getString("Street_2");
    Street_3=rs.getString("Street_3");
    City_Id=rs.getInt("City_Name");
    Pincode=rs.getString("Pincode");
    Question_1=rs.getString("Question_1");
    Answer_1=rs.getString("Answer_1");
    Question_2=rs.getString("Question_2");
    Answer_2=rs.getString("Answer_2");
    state_id=rs.getInt("state_id");
    country_id=rs.getInt("country_id");
    User_Type_Id=rs.getInt("User_Type_Id");
    }
    public void update() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_user_update(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setInt(1,User_Id);
    psmt.setString(2,First_Name);
    psmt.setString(3,Middle_Name);
    psmt.setString(4,Last_Name);
    psmt.setString(5,User_Name);
    psmt.setString(6,Password);
    psmt.setString(7,Gender);
    psmt.setString(8,DOB);
    psmt.setString(9,Mobile);
    psmt.setString(10,Email);
    psmt.setString(11,Street_1);
    psmt.setString(12,Street_2);
    psmt.setString(13,Street_3);
    psmt.setInt(14,City_Id);
    psmt.setString(15,Pincode);
    psmt.setString(16,Question_1);
    psmt.setString(17,Answer_1);
    psmt.setString(18,Question_2);
    psmt.setString(19,Answer_2);
    psmt.setInt(20, User_Type_Id);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_user_delete(?)}");
    psmt.setInt(1,User_Id);
    psmt.executeUpdate();
    }
    public ResultSet question() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt=cnn.prepareStatement("SELECT * FROM Question;");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
}
