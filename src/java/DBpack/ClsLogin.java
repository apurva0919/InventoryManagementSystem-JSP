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
public class ClsLogin 
{
        public String First_Name="";
        public String User_Name="";
        public String password="";
        public int User_Type_Id=0;
        
    public void CheckValidation() throws ClassNotFoundException, SQLException
    {
    DBCnn obj=new DBCnn();
    Connection cnn=obj.ConnectMySql();
    PreparedStatement psmt = cnn.prepareStatement("call sp_login(?,?,?)");
    psmt.setString(1,User_Name);
    psmt.setString(2,password);
    psmt.setInt(3,User_Type_Id);
    ResultSet rs =psmt.executeQuery();
    if(rs.next())
    {
    First_Name=rs.getString("First_Name");
    User_Name=rs.getString("User_Name");
    }
    else 
    {
        First_Name="";    
        User_Name="";

        User_Type_Id=0;
        
    }
    }
         
}
