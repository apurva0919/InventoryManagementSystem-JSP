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
public class ClsProduct {
    public int Product_Id;
    public String Product="";
    public int Company_Id;
    public int Category_Id;
    public String Model="";
    public String Purchase_Price="";
    public String Selling_Price="";
    public String Supplier="";
    public String Mobile="";
    public String Scheme="";
    public String Product_Weight="";
    public String Quantity="";
    public String Manufacturing="";
    
    public void insert() throws SQLException
    {
    
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_product_insert(?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setString(1,Product);
    psmt.setInt(2,Company_Id);
    psmt.setString(3,Purchase_Price);
    psmt.setString(4,Selling_Price);
    psmt.setString(5,Supplier);
    psmt.setString(6,Product_Weight);
    psmt.setString(7,Scheme);
    psmt.setString(8,Manufacturing);
    psmt.setString(9,Mobile);  
    psmt.setString(10,Model);
     psmt.setString(11,Quantity);
    psmt.setInt(12,Category_Id);
    psmt.executeUpdate();
    } 
    public ResultSet select () throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_product_select();");
    ResultSet rs=psmt.executeQuery();
    return rs;
    }
    public void Retrive() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_product_singleselect(?)");
    psmt.setInt(1,Product_Id);
    ResultSet rs =psmt.executeQuery();
    rs.next();
    Product=rs.getString("Product");
    Company_Id=rs.getInt("Company_Id");
    Category_Id=rs.getInt("Category_Id");
    Model=rs.getString("Model_Detail");
    Purchase_Price=rs.getString("Purchasing_Price");
    Selling_Price=rs.getString("Selling_Price");
    Scheme=rs.getString("Scheme");
    Product_Weight=rs.getString("Product_Weight");
    Mobile=rs.getString("Helpline_No");
    Quantity=rs.getString("Quantity");
    Manufacturing=rs.getString("Manufacturing_Date");
    
    }
    public void update() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("{call sp_Product_update(?,?,?,?,?,?,?,?,?,?,?,?,?)}");
    psmt.setInt(1,Product_Id);
    psmt.setString(2,Product);
    psmt.setInt(3,Company_Id);
    psmt.setString(4,Purchase_Price);
    psmt.setString(5,Selling_Price);
    psmt.setString(6,Supplier);
    psmt.setString(7,Product_Weight);
    psmt.setString(8,Scheme);
    psmt.setString(9,Manufacturing);
    psmt.setString(10,Mobile);  
    psmt.setString(11,Model);
     psmt.setString(12,Quantity);
    psmt.setInt(13,Category_Id);
    psmt.executeUpdate();
    }
    public void delete() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt=cnn.prepareStatement("{call sp_Product_delete(?)}");
    psmt.setInt(1,Product_Id);
    psmt.executeUpdate();
    } 
}
