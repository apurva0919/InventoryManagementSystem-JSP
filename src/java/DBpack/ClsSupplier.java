/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DBpack;
import java.sql.*;
/**
 *
 * @author LOKENDRA SINGH
 */
public class ClsSupplier
{
   public Integer supplierid=0;
   public String supplier="";
   public String contact="";
   public String email="";
   public String street1="";
   public String street2="";
   public String street3="";
   public String city="";
   public Integer cityid;
   public String drpcity="";
   
   public void insert() throws ClassNotFoundException, SQLException
   {
        DBCnn obj=new DBCnn();
        Connection cnn=obj.ConnectMySql();
        PreparedStatement ps=cnn.prepareStatement("{Call sp_supplier_insert(?,?,?,?,?,?,?)}");
        ps.setString(1,supplier);
        ps.setString(2,contact);
        ps.setString(3,email);
        ps.setString(4,street1);
        ps.setString(5,street2);
        ps.setString(6,street3);
        ps.setString(7,drpcity);
        
        ps.executeUpdate();
   }
   public ResultSet list() throws ClassNotFoundException, SQLException
      { 
       DBCnn obj=new DBCnn();
        Connection cnn=obj.ConnectMySql();
        PreparedStatement ps=cnn.prepareStatement("{call sp_supplier_select()}");
        ResultSet rs1 = ps.executeQuery();
        return rs1;
      }
     
     public void getdatasingle() throws ClassNotFoundException, SQLException
      {
        DBCnn obj=new DBCnn();
        Connection cnn=obj.ConnectMySql();
        PreparedStatement ps=cnn.prepareStatement("{call sp_supplier_singleselect(?)}");
        ps.setInt(1,supplierid);
        ResultSet rs1=ps.executeQuery();
        rs1.next();
        supplier=rs1.getString("Supplier");
        contact=rs1.getString("Contact_No");
        email=rs1.getString("Email_Id");
        street1=rs1.getString("Street_1");
        street2=rs1.getString("Street_2");
        street3=rs1.getString("Street_3");
        cityid=rs1.getInt("City_Id");
        // return rs1;
      }
     public void delete() throws ClassNotFoundException, SQLException
     {
         DBCnn obj=new DBCnn();
         Connection cnn=obj.ConnectMySql();
         PreparedStatement ps=cnn.prepareStatement("{call sp_supplier_delete(?)}");
         ps.setInt(1,supplierid);
         ps.executeUpdate();      
     }
     public void update() throws ClassNotFoundException, SQLException
     {
         DBCnn obj=new DBCnn();
         Connection cnn=obj.ConnectMySql();
         PreparedStatement ps=cnn.prepareStatement("{call sp_supplier_update(?,?,?,?,?,?,?,?)}");
         ps.setInt(1,supplierid);
         ps.setString(2,supplier);
         ps.setString(3,contact);
         ps.setString(4,email);
         ps.setString(5,street1);
         ps.setString(6,street2);
         ps.setString(7,street3);
         ps.setInt(8,cityid);
         ps.executeUpdate();
     }
   
}

  
    

