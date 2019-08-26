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
public class ClsInward 
{
    public int Inward_Id=0;
    public String Voucher_No="";
    public String Date_Purchase="";
    public int Company_Id=0;
    public String Payment_Date="";
    public int Product_Id=0;
    public int Recived_By=0;
    public int Supplied_By=0;
    public String Amount="";
    public String Tax="";
    public String Discount="";
    public String Grand_Total="";
    public String Transportation="";
    public String Shipping_method="";
    public String Shipping_Date="";
    public String Shipping_Charges="";
    public String Discription="";
    public String Model="";
    public void insert() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_inward_insert(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setString(1,Voucher_No);
    psmt.setString(2,Date_Purchase);
    psmt.setString(3,Payment_Date);
    psmt.setInt(4,Product_Id);
    psmt.setInt(5,Company_Id);
    psmt.setInt(6,Supplied_By);
    psmt.setInt(7,Recived_By);
    psmt.setString(8,Amount);
    psmt.setString(9,Tax);
    psmt.setString(10,Discount);
    psmt.setString(11,Grand_Total);
    psmt.setString(12,Transportation);
    psmt.setString(13,Shipping_method);
    psmt.setString(14,Shipping_Date);
    psmt.setString(15,Shipping_Charges);
    psmt.setString(16,Discription);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_inward_show()");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_inward_single(?)");
    psmt.setInt(1,Inward_Id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    
    Voucher_No=rs.getString("Voucher_No");
    Date_Purchase=rs.getString("Date_Purchase");
    Payment_Date=rs.getString("Payment_Date");
    Product_Id=rs.getInt("Product_Id");
    Company_Id=rs.getInt("Company_Id");
    Supplied_By=rs.getInt("Supplied_by");
    Recived_By=rs.getInt("Recived_By");
    Amount=rs.getString("Amount");
    Tax=rs.getString("Tax");
    Discount=rs.getString("Discount");
    Grand_Total=rs.getString("Grand_Total");
    Transportation=rs.getString("Transportation");
    Shipping_method=rs.getString("Shipping_Method");
    Shipping_Date=rs.getString("Shipping_Date");
    Shipping_Charges=rs.getString("Shipping_Charges");
    Discription=rs.getString("Discription");
    Model=rs.getString("Model_Detail");
    }
    public void update() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_inward_update(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setInt(1,Inward_Id);
    psmt.setString(2,Voucher_No);
    psmt.setString(3,Date_Purchase);
    psmt.setString(4,Payment_Date);
    psmt.setInt(5,Product_Id);
    psmt.setInt(6,Company_Id);
    psmt.setInt(7,Supplied_By);
    psmt.setInt(8,Recived_By);
    psmt.setString(9,Amount);
    psmt.setString(10,Tax);
    psmt.setString(11,Discount);
    psmt.setString(12,Grand_Total);
    psmt.setString(13,Transportation);
    psmt.setString(14,Shipping_method);
    psmt.setString(15,Shipping_Date);
    psmt.setString(16,Shipping_Charges);
    psmt.setString(17,Discription);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_inward_delete(?)}");
    psmt.setInt(1,Inward_Id);
    psmt.executeUpdate();
    } 
}
