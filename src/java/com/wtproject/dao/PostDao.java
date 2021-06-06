/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wtproject.dao;
import com.wtproject.entities.Category;
import com.wtproject.entities.Post;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ANIKET GHULE
 */
public class PostDao {
    
    Connection conn;

    public PostDao(Connection conn) {
        this.conn = conn;
    }
    
    public ArrayList<Category> getCategories()
    {
        ArrayList<Category> list = new ArrayList<>();
        
        try{
            String q="select * from categories";
            Statement St=this.conn.createStatement();
            ResultSet set=St.executeQuery(q);
            
            while(set.next())
            {
                int cid=set.getInt("cid");
                String name=set.getString("name");
                String decp=set.getString("decp");
                Category c=new Category(cid,name,decp);
                list.add(c);
                
            }
            
        }
        catch(Exception e)
        {
        }
        return list;
    }
    
    
    
    public boolean savePost(Post p)
    {
        boolean f = false;
        try{
            String query="insert into post(pTitle,pContent,pCode,pPic,catId,userid) values(?,?,?,?,?,?)";
            PreparedStatement pstmt=conn.prepareStatement(query);
            pstmt.setString(1, p.getpTitle());
            pstmt.setString(2,p.getpContent());
            pstmt.setString(3, p.getpCode());
            pstmt.setString(4,p.getpPic());
            pstmt.setInt(5,p.getCatId());
            pstmt.setInt(6,p.getUserid());
            pstmt.executeUpdate();
            
            f=true;
            
        }
        catch(Exception e)
        {
        }
        return f;
    }
    
    
    //Get All The post
    
    public List<Post> getAllPosts()
    {
        List<Post> list=new ArrayList<>();
        try{
            PreparedStatement pstmt= conn.prepareStatement("select * from post order by pid desc");
            ResultSet set=pstmt.executeQuery();
            
            while(set.next())
            {
                
                int pid=set.getInt("pId");
                String ptitle=set.getString("pTitle");
                String pcontent=set.getString("pContent");
                String pcode=set.getString("pCode");
                String ppic=set.getString("pPic");
                int catId=set.getInt("catId");
                int userid=set.getInt("userid");
                Post p=new Post(pid,ptitle,pcontent,pcode,ppic,catId,userid);
                
                list.add(p);
                
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        // Fetch all post
        return list;
    }
    
    
    public List<Post> getPostbyCatID(int catId)
    {
        List<Post> list=new ArrayList<>();
        try{
            Statement pstmt= conn.createStatement();
            ResultSet set=pstmt.executeQuery("select * from post where catId = "+catId+"");
            
            while(set.next())
            {
                
                int pid=set.getInt("pId");
                String ptitle=set.getString("pTitle");
                String pcontent=set.getString("pContent");
                String pcode=set.getString("pCode");
                String ppic=set.getString("pPic");
                int userid=set.getInt("userid");
                Post p=new Post(pid,ptitle,pcontent,pcode,ppic,catId,userid);
                
                list.add(p);
                
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        // Fetch all
        //Fecth all post by ID
        return list;
    }
    
    
    
    public Post getPostByPostId(int postid) throws SQLException
    {
        Post p=null;
        String q="select * from post where pid=?";
        
        try{
        PreparedStatement pstmt = this.conn.prepareStatement(q);
        
        pstmt.setInt(1,postid);
        ResultSet set=pstmt.executeQuery();
        
        
        if(set.next())
        {
                int pid=set.getInt("pId");
                String ptitle=set.getString("pTitle");
                String pcontent=set.getString("pContent");
                String pcode=set.getString("pCode");
                String ppic=set.getString("pPic");
                int catId=set.getInt("catId");
                int userid=set.getInt("userid");
                p=new Post(pid,ptitle,pcontent,pcode,ppic,catId,userid);
                
        
        }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return p;
    }
    
    
    
    
    
    
}
