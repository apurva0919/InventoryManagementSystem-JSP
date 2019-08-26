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
public class clsdesignation 
{
    public int Designation_Id;
    public String Designation="";

    public void insert() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_designation_insert(?)}");
    psmt.setString(1,Designation);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("select * from designation ;");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_designation_single(?)");
    psmt.setInt(1,Designation_Id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    Designation=rs.getString("Designation");
    }
    public void update() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_designation_update(?,?)}");
    psmt.setInt(1,Designation_Id);
    psmt.setString(2,Designation);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_designation_delete(?)}");
    psmt.setInt(1,Designation_Id);
    psmt.executeUpdate();
    }
   

}
