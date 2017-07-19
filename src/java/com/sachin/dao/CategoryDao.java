
package com.sachin.dao;

import com.sachin.DB.DB;
import com.sachin.model.Admin;
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
public class CategoryDao {
    

     private Connection con;
    
    public CategoryDao(){
        con = DB.getConnection(); 
    }
    
     public List<Admin> getlist(String cat)
    {
        List<Admin> total = new ArrayList<Admin>();
        try{
            PreparedStatement ps = con.prepareStatement("select * from admin where category = ?");
            ps.setString(1, cat);
           
            ResultSet rs =ps.executeQuery();
            while(rs.next())
            {
               Admin admin = new Admin();
               admin.setId(rs.getInt("id")); 
               admin.setName(rs.getString("name"));
               admin.setEmail(rs.getString("email"));
               admin.setMobile(rs.getString("phone"));
               admin.setCName(rs.getString("cname"));
               admin.setCEmail(rs.getString("cemail"));
               admin.setCMobile(rs.getString("cphone"));
               admin.setAddress(rs.getString("address"));
               admin.setCity(rs.getString("city"));
               admin.setState(rs.getString("state"));
               admin.setzip(rs.getInt("zip"));
               admin.setWebsite(rs.getString("website"));
               admin.setCategory(rs.getString("category"));
               admin.setP(rs.getString("pdescription"));
               admin.setT(rs.getString("tdescription"));
               admin.setRange(rs.getString("rupess"));
               admin.setImage(rs.getString("image"));
                
               total.add(admin);
            }
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return total;
    }
    
     
     
      public List<Admin> getdetails(String cat, String location)
    {
        List<Admin> total = new ArrayList<Admin>();
        try{
            PreparedStatement ps = con.prepareStatement("select * from admin where category = ? and (address like  ? or city like  ?)");
            ps.setString(1, cat);
            ps.setString(2, "%"+location+"%");
            ps.setString(3, "%"+location+"%");
           
            ResultSet rs =ps.executeQuery();
            while(rs.next())
            {
               Admin admin = new Admin();
               admin.setId(rs.getInt("id")); 
               admin.setName(rs.getString("name"));
               admin.setEmail(rs.getString("email"));
               admin.setMobile(rs.getString("phone"));
               admin.setCName(rs.getString("cname"));
               admin.setCEmail(rs.getString("cemail"));
               admin.setCMobile(rs.getString("cphone"));
               admin.setAddress(rs.getString("address"));
               admin.setCity(rs.getString("city"));
               admin.setState(rs.getString("state"));
               admin.setzip(rs.getInt("zip"));
               admin.setWebsite(rs.getString("website"));
               admin.setCategory(rs.getString("category"));
               admin.setP(rs.getString("pdescription"));
               admin.setT(rs.getString("tdescription"));
               admin.setRange(rs.getString("rupess"));
               admin.setImage(rs.getString("image"));
                
               total.add(admin);
            }
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
        return total;
    }
      
      public List<Admin> filter(String select1, String select2, String select3)
      {
          PreparedStatement ps;
          List<Admin> total = new ArrayList<Admin>();
          try{
              if(select3.equalsIgnoreCase("Newest"))
              {
                  ps = con.prepareStatement("select * from admin where category = ? and rate = ? Order by id DESC");
                  ps.setString(1, select1);
                  ps.setString(2, select2);
              }
              
             if(select3.equalsIgnoreCase("Old"))
              {
                  ps = con.prepareStatement("select * from admin where category = ? and rate = ? Order by id");
                  ps.setString(1, select1);
                  ps.setString(2, select2);
              }
              
             if(select3.equalsIgnoreCase("Increased by Popularity"))
              {
                  ps = con.prepareStatement("select * from admin where category = ? and rate = ? Order by rating DESC");
                  ps.setString(1, select1);
                  ps.setString(2, select2);
              }
             
             else
              {
                  ps = con.prepareStatement("select * from admin where category = ? and rate = ? Order by rating");
                  ps.setString(1, select1);
                  ps.setString(2, select2);
              }
             
              ResultSet rs =ps.executeQuery();
              
               while(rs.next())
            {
               Admin admin = new Admin();
               admin.setId(rs.getInt("id")); 
               admin.setName(rs.getString("name"));
               admin.setEmail(rs.getString("email"));
               admin.setMobile(rs.getString("phone"));
               admin.setCName(rs.getString("cname"));
               admin.setCEmail(rs.getString("cemail"));
               admin.setCMobile(rs.getString("cphone"));
               admin.setAddress(rs.getString("address"));
               admin.setCity(rs.getString("city"));
               admin.setState(rs.getString("state"));
               admin.setzip(rs.getInt("zip"));
               admin.setWebsite(rs.getString("website"));
               admin.setCategory(rs.getString("category"));
               admin.setP(rs.getString("pdescription"));
               admin.setT(rs.getString("tdescription"));
               admin.setRange(rs.getString("rupess"));
               admin.setImage(rs.getString("image"));
                
               total.add(admin);
            }

              
          }catch(Exception e)
          {
              e.printStackTrace();
          }
          
          return total;
      }
      
      
      public static void main(String args[])
      {
          CategoryDao dao = new CategoryDao();
          List<Admin> detail= dao.getdetails("Resturants","Allahabad" );
          for(Admin ad:detail)
          {
              System.out.println(ad.getAddress());
              System.out.println(ad.getCEmail());
              System.out.println(ad.getId());
              System.out.println(ad.getName());
              
          }
      }
    
     
}
