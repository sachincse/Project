/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sachin.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Sachin Singh
 */
public class DB {

    private static Connection connection=null;
    
    public static Connection getConnection(){
        if(connection!=null)
            return connection;
        else{
            try{
                String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/locorum";
                String user = "root";
                Class.forName(driver);
                connection = DriverManager.getConnection(url,user,"");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();}

            return connection;
        }
    }
    
}

