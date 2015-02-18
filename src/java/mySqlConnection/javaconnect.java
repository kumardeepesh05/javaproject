/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package mySqlConnection;

/**
 *
 * @author DEEPESH
 */
import java.sql.*;
public class javaconnect {
    Connection conn =null;
    public static Connection connecrDb(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","deepesh");          
            return conn;
        }catch(Exception e){
            return null;
        }
    }
    
}

