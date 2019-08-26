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
public class clspayment 
{
public int Payment_Mode_Id;
public String Payment_Mode="";

    public void insert() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_payment_mode_insert(?)}");
    psmt.setString(1,Payment_Mode);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
   DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("select * from payment_mode");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_payment_mode_single(?)");
    psmt.setInt(1,Payment_Mode_Id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    Payment_Mode=rs.getString("Payment_Mode");
    }
    public void update() throws ClassNotFoundException, SQLException
    {
   DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_payment_mode_update(?,?)}");
    psmt.setInt(1,Payment_Mode_Id);
    psmt.setString(2,Payment_Mode);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_payment_mode_delete(?)}");
    psmt.setInt(1,Payment_Mode_Id);
    psmt.executeUpdate();
    }
   
}
