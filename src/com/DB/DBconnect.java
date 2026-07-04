package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	
	 public static Connection conn;
     public  static  Connection getConn()
     {
    	 try
    	 {
    		 if(conn==null)
    		 {
    			 Class.forName("com.mysql.jdbc.Driver"); 

      conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Enotes","root","shreeya123");
    			 
    		 }
    	 }catch(Exception e) 
    	 {
    		 e.printStackTrace();
    	 }
    	 return conn;
     }
}
