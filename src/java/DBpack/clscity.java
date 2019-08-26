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
public class clscity 
{
public String drpstate;
public int city_id;
public String code="";
public String city="";
public String state_id="";

    public void insert() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("{call sp_city_insert(?,?,?)}");
    psmt.setString(1,code);
    psmt.setString(2,city);
    psmt.setString(3,drpstate);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("select * from vwcity");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("call sp_city_single(?)");
    psmt.setInt(1,city_id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    code=rs.getString("City_code");
    city=rs.getString("City");
    drpstate=rs.getString("state");
    state_id=rs.getString("state_id");
    }
    public void update() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("{call sp_city_update(?,?,?,?)}");
    psmt.setInt(1,city_id);
    psmt.setString(2,code);
    psmt.setString(3,city);
    psmt.setString(4,drpstate);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt=cnn.prepareStatement("{call sp_city_delete(?)}");
    psmt.setInt(1, city_id);
    psmt.executeUpdate();
    }
}
