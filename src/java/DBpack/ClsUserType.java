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
public class ClsUserType {

public int User_Type_Id;
public String User_Type="";

    public void insert() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_user_type_insert(?)}");
    psmt.setString(1,User_Type);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("select * from user_type");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_user_type_single(?)");
    psmt.setInt(1,User_Type_Id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    User_Type=rs.getString("User_Type");
    }
    public void update() throws ClassNotFoundException, SQLException
    {
   DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_user_type_update(?,?)}");
    psmt.setInt(1,User_Type_Id);
    psmt.setString(2,User_Type);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_user_type_delete(?)}");
    psmt.setInt(1,User_Type_Id);
    psmt.executeUpdate();
    }
   
}