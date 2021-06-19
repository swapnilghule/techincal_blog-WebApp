/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wtproject.dao;
import java.sql.*;
/**
 *
 * @author ANIKET GHULE
 */
public class LikeDao {
    
    Connection conn;

    public LikeDao(Connection conn) {
        this.conn = conn;
    }
    
    
    
    
    public boolean insertLike(int postid,int uid)
    {
        boolean b=false;
        try{
            String q="insert into liked(pid,uid) values(?,?)";
            PreparedStatement p=this.conn.prepareStatement(q);
            
            p.setInt(1,postid);
            p.setInt(2, uid);
            
            p.executeUpdate();
            b=true;
            
            
        }
        catch(Exception e)
        {
        }
        return b;
    }
    
    
    public int CountLikeOnPost(int pid)
    {
        int count=0;
        
        try{
            String q= "select count(*) from liked where pid=?";
            PreparedStatement p=this.conn.prepareStatement(q);
            
            p.setInt(1, pid);
            ResultSet set= p.executeQuery();
            if(set.next())
            {
                count = set.getInt("count(*)");
            }
            
        }
        
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
        return count;
    }
    
    
    public boolean IsLikedByUser(int pid, int uid)
    {
        boolean b = false;
        try{
            PreparedStatement p =this.conn.prepareStatement("Select * from Liked where pid=? and uid=?");
            p.setInt(1, pid);
            p.setInt(2, uid);
            
            ResultSet set = p.executeQuery();
            if(set.next())
            {
                b=true;
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return b;
    }
    
    
    public boolean DeleteLiked(int pid, int uid)
    {
        boolean b = false;
        try{
            PreparedStatement p =this.conn.prepareStatement("delete from liked where pid=? and uid=?");
            p.setInt(1, pid);
            p.setInt(2, uid);
            
            p.executeUpdate();
            b=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return b;
    }
    
}
