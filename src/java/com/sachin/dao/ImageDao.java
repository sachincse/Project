
package com.sachin.dao;

import com.sachin.DB.DB;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sachin Singh
 */
public class ImageDao {
    private Connection con;
    public ImageDao(){
        con = DB.getConnection(); 
    }
    public void addBanner(int id,List<String> pics)
    {
        try{
            for(String pic: pics )
            {
              PreparedStatement ps = con.prepareStatement("insert into banner(admin_id,image) values(?,?)");
              ps.setInt(1, id);
              ps.setString(2, pic);
              ps.executeUpdate();
            }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
    public List<String> getBaanner(int id)
    {
        List<String> image = new ArrayList<String>();
        try{
             PreparedStatement ps = con.prepareStatement("select * from banner where admin_id = ?");
             ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                image.add(rs.getString("image"));
            }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return image;
    }
    
    public void deleteBanner(int id,String name)
    {
        try{
              PreparedStatement ps =con.prepareStatement("delete from banner where admin_id = ? and image = ?");
              ps.setInt(1, id);
              ps.setString(2, name);
              ps.executeUpdate();
              
              
              
               File f = null;
        boolean bool;
        try{
            f = new File("C:\\Users\\Anu Singh\\Documents\\NetBeansProjects\\TCS_Internship\\web\\images\\"+name);
            
          bool =  f.delete();
          System.out.println(bool);
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
            
              
              
              

        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
    
    
      public void frontImage(int id, String image)
     {
         try{
             PreparedStatement ps = con.prepareStatement("update admin set image = ? where id = ?");
             ps.setString(1, image);
             ps.setInt(2, id);
             ps.executeUpdate();
             
         }catch(Exception e)
         {
             e.printStackTrace();
         }
     }
     
    
     public void addGallery(int id,List<String> pics)
    {
        try{
            for(String pic: pics )
            {
              PreparedStatement ps = con.prepareStatement("insert into gallery(admin_id,image) values(?,?)");
              ps.setInt(1, id);
              ps.setString(2, pic);
              ps.executeUpdate();
            }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        
    }
     
   
      public List<String> getGallery(int id)
    {
        List<String> image = new ArrayList<String>();
        try{
             PreparedStatement ps = con.prepareStatement("select * from gallery where admin_id = ?");
             ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                image.add(rs.getString("image"));
            }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return image;
    }
    
    public void deleteGallery(int id,String name)
    {
        try{
              PreparedStatement ps =con.prepareStatement("delete from gallery where admin_id = ? and image = ?");
              ps.setInt(1, id);
              ps.setString(2, name);
              ps.executeUpdate();
              
              
              
               File f = null;
        boolean bool;
        try{
            f = new File("C:\\Users\\Anu Singh\\Documents\\NetBeansProjects\\TCS_Internship\\web\\images\\"+name);
            
          bool =  f.delete();
          System.out.println(bool);
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
            
              
              
              

        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
    

    
}
