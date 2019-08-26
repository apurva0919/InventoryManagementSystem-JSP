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
public class clsBank 
{
    public int Bank_Id=0;
    public String Bank_Code="";
    public String Bank="";
    public String Details="";
    
    public void insert() throws SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_bank_insert(?,?,?)}");
    psmt.setString(1,Bank_Code);
    psmt.setString(2,Bank);
    psmt.setString(3,Details);
    }
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_bank_show()};");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_bank_single(?)");
    psmt.setInt(1,Bank_Id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    Bank_Code=rs.getString("Bank_Code");
    Bank=rs.getString("Bank");
    Details=rs.getString("Details");
    }
    public void update() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_bank_update(?,?,?,?)}");
    psmt.setInt(1,Bank_Id);
    psmt.setString(2,Bank_Code);
    psmt.setString(3,Bank);
    psmt.setString(4,Details);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_bank_delete(?)}");
    psmt.setInt(1,Bank_Id);
    psmt.executeUpdate();
    }
}
