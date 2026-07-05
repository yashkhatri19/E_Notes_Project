package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
    
     public static Connection conn;
     public static Connection getConn()
     {
         try
         {
             if(conn == null)
             {
                 // Agar error aaye toh iski jagah "com.mysql.cj.jdbc.Driver" try kar sakte hain
                 Class.forName("com.mysql.jdbc.Driver"); 

                 // SPACE FIXED: " jdbc:mysql" ke aage se space hata kar "jdbc:mysql" kiya gaya hai
                 conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes", "root", "yash123");
             }
         }
         catch(Exception e) 
         {
             e.printStackTrace();
         }
         return conn;
     }
}