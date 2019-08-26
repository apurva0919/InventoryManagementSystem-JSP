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
public class clsstate 
{
    public String drpcountry;
    public int state_id;
public String code="";
public String state="";
public String country_id="";

    public void insert() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("{call sp_state_insert(?,?,?)}");
    psmt.setString(1,code);
    psmt.setString(2,state);
    psmt.setString(3,drpcountry);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("select * from vwstate");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("call sp_state_single(?)");
    psmt.setInt(1,state_id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    code=rs.getString("state_code");
    state=rs.getString("state");
    drpcountry=rs.getString("country");
    country_id=rs.getString("country_id");
    }
    public void update() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt = cnn.prepareStatement("{call sp_state_update(?,?,?,?)}");
    psmt.setInt(1,state_id);
    psmt.setString(2,code);
    psmt.setString(3,state);
    psmt.setString(4,drpcountry);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
    PreparedStatement psmt=cnn.prepareStatement("{call sp_state_delete(?)}");
    psmt.setInt(1, state_id);
    psmt.executeUpdate();
    }
}

