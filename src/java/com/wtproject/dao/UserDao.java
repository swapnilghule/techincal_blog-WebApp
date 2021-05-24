/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wtproject.dao;
import com.wtproject.entities.Users;
import java.sql.*;
/**
 *
 * @author ANIKET GHULE
 */
public class UserDao {
    private Connection conn;

    public UserDao(Connection conn) {
        this.conn = conn;
    }
    
    //method Insert user to database
    
    public boolean saveUser(Users user)
    {
      boolean f=false;

        try{
           // user-->>Databse
           
           String query="insert into user(name,email,password,confirm_password,dob,rollno,regid,pno) values(?,?,?,?,?,?,?,?)";
           PreparedStatement pstmt=this.conn.prepareStatement(query);
           pstmt.setString(1,user.getName());
           pstmt.setString(2,user.getEmail());
           pstmt.setString(3,user.getPassword());
           pstmt.setString(4,user.getConfim_password());
           pstmt.setString(5,user.getDob());
           pstmt.setString(6,user.getRollno());
           pstmt.setString(7,user.getRegid());
           pstmt.setString(8,user.getPno());

           pstmt.executeUpdate();
           f=true;
         }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
   }
    
    
    
    // Get User by user email and password
    
    public Users getUserByEmailAndPassword(String email,String password)
    {
        Users user=null;
        
        try{
            String query="select * from user where email=? and password=?";
            PreparedStatement pstmt=conn.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet set=pstmt.executeQuery();
            if(set.next())
            {
                user=new Users();
                String name=set.getString("name");
                
                // fetch data from user and set into user object
                user.setName(name);
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));   
                user.setDob(set.getString("dob"));   
                user.setPassword(set.getString("password"));   
                user.setConfim_password(set.getString("confirm_password"));   
                user.setRegid(set.getString("regid"));           
                user.setRollno(set.getString("rollno"));   
                user.setPno(set.getString("pno")); 
                user.setProfile(set.getString("profile"));
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return user;
    }
}
