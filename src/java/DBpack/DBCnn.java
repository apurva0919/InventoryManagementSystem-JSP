
package DBpack;
import java.sql.*;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 *
 * @author acer
 */


public  class DBCnn

{

public  Connection ConnectMySql()

{

        // TODO code application logic here
        
	Connection con = null;
        
try
        
{
            
Class.forName("com.mysql.jdbc.Driver").newInstance();

//            System.out.println("driver true");
            con = DriverManager.getConnection("jdbc:mysql:///stock_management","root","start");    
        }
        catch (Exception e)
        {
          //  e.printStackTrace();
            System.err.println("Exception: " + e.getMessage());
        }
        return con;

    }

}
