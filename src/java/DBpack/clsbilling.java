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

public class clsbilling 
{
    public int Billing_Id=0;
    public String Bill_No="";
    public String Billing_Date="";
    public int Outward_Id=0;
    public int Billed_By=0;
    public int Payment_Mode_Id;
    public int cheque_No;
    public String Cheque_Date;
    public String Credit_Card_No;
    public String Bank;
    public void insert() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_billing_insert(?,?,?,?,?,?,?,?,?)}");
    psmt.setString(1,Bill_No);
    psmt.setString(2,Billing_Date);
    psmt.setInt(3,Outward_Id);
    psmt.setInt(4,Billed_By);
    psmt.setInt(5,Payment_Mode_Id);
    psmt.setInt(6,cheque_No);
    psmt.setString(7,Cheque_Date);
    psmt.setString(8,Credit_Card_No);
    psmt.setString(9,Bank);
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_billing_show()};");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_billing_single(?)");
    psmt.setInt(1,Billing_Id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    Bill_No=rs.getString("Bill_No");
    Billing_Date=rs.getString("Billing_Date");
    Outward_Id=rs.getInt("Outward_Id");
    Billed_By=rs.getInt("Billed_By");
    Payment_Mode_Id=rs.getInt("Payment_Mode_Id");
    cheque_No=rs.getInt("Cheque_No");
    Cheque_Date=rs.getString("Cheque_Date");
    Credit_Card_No=rs.getString("Credit_Card_No");
    Bank=rs.getString("Bank");
    }
    public void update() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_billing_update(?,?,?,?,?,?,?,?,?,?)}");
    psmt.setInt(1,Billing_Id);
    psmt.setString(2,Bill_No);
    psmt.setString(3,Billing_Date);
    psmt.setInt(4,Outward_Id);
    psmt.setInt(5,Billed_By);
    psmt.setInt(6,Payment_Mode_Id);
    psmt.setInt(7,cheque_No);
    psmt.setString(8,Cheque_Date);
    psmt.setString(9,Credit_Card_No);
    psmt.setString(10,Bank);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_billling_delete(?)}");
    psmt.setInt(1,Billing_Id);
    psmt.executeUpdate();
    }
}
