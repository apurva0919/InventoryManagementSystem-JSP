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
public class clscountry 
{

public int country_id;
public String code="";
public String country="";
    public void insert() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_country_insert(?,?)}");
    psmt.setString(1,code);
    psmt.setString(2,country);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("select * from country");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_country_single(?)");
    psmt.setInt(1,country_id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    code=rs.getString("country_code");
    country=rs.getString("country");
    //return rs;
    }
    public void update() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_country_update(?,?,?)}");
    psmt.setInt(1,country_id);
    psmt.setString(2,code);
    psmt.setString(3,country);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_country_delete(?)}");
    psmt.setInt(1, country_id);
    psmt.executeUpdate();
    }
}