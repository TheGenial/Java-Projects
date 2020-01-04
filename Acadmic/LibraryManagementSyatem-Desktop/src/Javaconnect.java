/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Arif Parvez
 */
import java.sql.*;
import javax.swing.JOptionPane;
public class Javaconnect {
    Connection conn;
    
    public static Connection connecrDb(){
        try{
            Class.forName("org.sqlite.JDBC");
            Connection conn=DriverManager.getConnection("jdbc:sqlite:C:\\Users\\Arif Parvez\\Documents\\NetBeansProjects\\Library Management Syatem\\LibraryManagement.sqlite");
            return conn;
        }catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
            return null;
        }
    }
    
}
