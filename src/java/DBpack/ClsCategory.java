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
public class ClsCategory
{
    public Integer categoryid=0;
    public String category="";
    public String description="";
    
       public void insert() throws ClassNotFoundException, SQLException
   {
        DBCnn obj=new DBCnn();
        Connection cnn=obj.ConnectMySql();
        //Class.forName("com.mysql.jdbc.Driver");
        //Connection cnn=DriverManager.getConnection("jdbc:mysql:///inventory_management","root","start");
        PreparedStatement ps=cnn.prepareStatement("{Call sp_category_insert(?,?)}");
        ps.setString(1,category);
        ps.setString(2,description);
        ps.executeUpdate();
   }
   public ResultSet list() throws ClassNotFoundException, SQLException
      {
       DBCnn obj=new DBCnn();
        Connection cnn=obj.ConnectMySql();     
        PreparedStatement ps=cnn.prepareStatement("{call sp_category_select()}");
        ResultSet rs1 = ps.executeQuery();
        return rs1;
      }
     
     public void getdatasingle() throws ClassNotFoundException, SQLException
      {
        DBCnn obj=new DBCnn();
        Connection cnn=obj.ConnectMySql();
        PreparedStatement ps=cnn.prepareStatement("{call sp_category_singleselect(?)}");
        ps.setInt(1,categoryid);
        ResultSet rs1=ps.executeQuery();
        rs1.next();
        category=rs1.getString("Category");
        description=rs1.getString("Description");
        // return rs1;
      }
     public void delete() throws ClassNotFoundException, SQLException
     {
         DBCnn obj=new DBCnn();
         Connection cnn=obj.ConnectMySql();
         PreparedStatement ps=cnn.prepareStatement("{call sp_category_delete(?)}");
         ps.setInt(1,categoryid);
         ps.executeUpdate();      
     }
     public void update() throws ClassNotFoundException, SQLException
     {
        DBCnn obj=new DBCnn();
         Connection cnn=obj.ConnectMySql();
         PreparedStatement ps=cnn.prepareStatement("{call sp_category_update(?,?,?)}");
         ps.setInt(1,categoryid);
         ps.setString(2,category);
         ps.setString(3,description);
         ps.executeUpdate();
     }
   
}

    

