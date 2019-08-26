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
public class clsconnection 
{
    public Connection connectingsql() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection cnn = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");
        return connectingsql();
       
    }
    // return connectingsql();
}
