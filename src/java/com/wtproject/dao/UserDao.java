/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wtproject.dao;
import com.wtproject.entities.Post;
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
           
           String query="insert into user(name,email,password,confirm_password,about) values(?,?,?,?,?)";
           PreparedStatement pstmt=this.conn.prepareStatement(query);
           pstmt.setString(1,user.getName());
           pstmt.setString(2,user.getEmail());
           pstmt.setString(3,user.getPassword());
           pstmt.setString(4,user.getConfim_password());
           pstmt.setString(5,user.getAbout());
           
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
                
                user.setPassword(set.getString("password"));   
                user.setConfim_password(set.getString("confirm_password"));   
                user.setAbout(set.getString("about"));
                user.setProfile(set.getString("profile"));
            }
            
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return user;
    }
    
    
    
    public boolean updateUser(Users user)
    {
        boolean f=false;
        try{
            String query="update user set name=?, email=?, password=?, confirm_password=?, about=?, profile=? where id=?";
            PreparedStatement p=conn.prepareStatement(query);
            p.setString(1,user.getName());
            p.setString(2,user.getEmail());
            p.setString(3,user.getPassword());
            p.setString(4,user.getPassword());
            p.setString(5,user.getAbout());
            p.setString(6,user.getProfile());
            p.setInt(7, user.getId());
            
            p.executeUpdate();
            f=true;
            
        }
        catch(Exception e )
        {
            e.printStackTrace();
        }
        
        return f;
    }
    
    
    public Users getuserPostbyID(int userid)
    {
       Users user=null;
       try{
       Statement pstmt= conn.createStatement();
            ResultSet set=pstmt.executeQuery("select * from user where id = "+userid+"");
            
            if(set.next())
            {
                
                 user=new Users();
                String name=set.getString("name");
                
                // fetch data from user and set into user object
                user.setName(name);
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));   
                
                user.setPassword(set.getString("password"));   
                user.setConfim_password(set.getString("confirm_password"));   
                user.setAbout(set.getString("about"));
                user.setProfile(set.getString("profile"));
            }
       } catch(Exception e)
       {
           e.printStackTrace();
       }
        
        return user;
    }
}
