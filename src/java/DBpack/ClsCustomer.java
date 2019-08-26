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
public class ClsCustomer {
    public int Customer_Id=0;
    public String First_Name="";
    public String Middle_Name="";
    public String Last_Name="";
    public String User_Name="";
    public String Gender="";
    public String DOB="";
    public String Mobile="";
    public String Email="";
    public String Street_1="";
    public String Street_2="";
    public String Street_3="";
    public int City_Id;
    public String Pincode="";
    public int country_id;
    public int state_id;
    
    
    public void insert() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("{call sp_customer_insert(?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setString(1,First_Name);
    psmt.setString(2,Middle_Name);
    psmt.setString(3,Last_Name);
    psmt.setString(4,Gender);
    psmt.setString(5,DOB);
    psmt.setString(6,Mobile);
    psmt.setString(7,Email);
    psmt.setString(8,Street_1);
    psmt.setString(9,Street_2);
    psmt.setString(10,Street_3);
    psmt.setInt(11,City_Id);
    psmt.setString(12,Pincode);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_customer_show();");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_customer_single(?)");
    psmt.setInt(1,Customer_Id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    First_Name=rs.getString("First_Name");
    Middle_Name=rs.getString("Middle_Name");
    Last_Name=rs.getString("Last_Name");
    Gender=rs.getString("Gender");
    DOB=rs.getString("Birth_Date");
    Mobile=rs.getString("Mobile_No");
    Email=rs.getString("Email_Id");
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
    PreparedStatement psmt = cnn.prepareStatement("{call sp_customer_update(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setInt(1,Customer_Id);
    psmt.setString(2,First_Name);
    psmt.setString(3,Middle_Name);
    psmt.setString(4,Last_Name);
    psmt.setString(5,Gender);
    psmt.setString(6,DOB);
    psmt.setString(7,Mobile);
    psmt.setString(8,Email);
    psmt.setString(9,Street_1);
    psmt.setString(10,Street_2);
    psmt.setString(11,Street_3);
    psmt.setInt(12,City_Id);
    psmt.setString(13,Pincode);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_customer_delete(?)}");
    psmt.setInt(1,Customer_Id);
    psmt.executeUpdate();
    }

    
}
