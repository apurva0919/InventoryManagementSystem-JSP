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
public class ClsFeedback
{
   public Integer feedbackid=0;
   public String customername="";
   public String feedback="";
   
   public void insert() throws ClassNotFoundException, SQLException
   {
        DBCnn obj=new DBCnn();
        Connection cnn=obj.ConnectMySql();
        PreparedStatement ps=cnn.prepareStatement("{Call sp_feedback_insert(?,?)}");
        ps.setString(1,customername);
        ps.setString(2,feedback);
        ps.executeUpdate();
   }
   public ResultSet list() throws ClassNotFoundException, SQLException
      {
        DBCnn obj=new DBCnn();
        Connection cnn=obj.ConnectMySql();;
        PreparedStatement ps=cnn.prepareStatement("{call sp_feedback_select()}");
        ResultSet rs1 = ps.executeQuery();
        return rs1;
      }
     
     public void getdatasingle() throws ClassNotFoundException, SQLException
      {
        DBCnn obj=new DBCnn();
        Connection cnn=obj.ConnectMySql();
        PreparedStatement ps=cnn.prepareStatement("{call sp_feedback_singleselect(?)}");
        ps.setInt(1,feedbackid);
        ResultSet rs1=ps.executeQuery();
        rs1.next();
        customername=rs1.getString("Customer_Name");
        feedback=rs1.getString("Feedback");
        // return rs1;
      }
     public void delete() throws ClassNotFoundException, SQLException
     {
         DBCnn obj=new DBCnn();
         Connection cnn=obj.ConnectMySql();
         PreparedStatement ps=cnn.prepareStatement("{call sp_feedback_delete(?)}");
         ps.setInt(1,feedbackid);
         ps.executeUpdate();      
     }
     public void update() throws ClassNotFoundException, SQLException
     {
         DBCnn obj=new DBCnn();
         Connection cnn=obj.ConnectMySql();
         PreparedStatement ps=cnn.prepareStatement("{call sp_feedback_update(?,?,?)}");
         ps.setInt(1,feedbackid);
         ps.setString(2,customername);
         ps.setString(3,feedback);
         ps.executeUpdate();
     }
   
}

  
    

