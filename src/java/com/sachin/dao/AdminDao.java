/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sachin.dao;

import com.sachin.DB.DB;
import com.sachin.model.Admin;
import com.sachin.model.Review;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author Sachin Singh
 */
public class AdminDao {
     private Connection con;
    
    public AdminDao(){
        con = DB.getConnection(); 
    }
    
    public Admin add(Admin admin){
        int lastid=1;
        try{
            PreparedStatement ps1 = con.prepareStatement("select * from admin");
            ResultSet rs1 = ps1.executeQuery();
            if(rs1.last())
            {
               lastid = rs1.getInt("id");
               lastid++;
               System.out.println(lastid);
              
            }
            admin.setId(lastid);
            PreparedStatement ps = con.prepareStatement("insert into admin(name,email,phone,password,cname,cemail,cphone,address,city,state,zip,website,category,pdescription,tdescription,rupess,rate) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?)");
            ps.setString(1,admin.getName());
            ps.setString(3,admin.getMobile());
            ps.setString(2,admin.getEmail());
           
            ps.setString(4,admin.getPassword());
            ps.setString(5, admin.getCName());
            ps.setString(6, admin.getCEmail());
            ps.setString(7, admin.getCMobile());
            ps.setString(8, admin.getAddress());
            ps.setString(9, admin.getCity());
            ps.setString(10, admin.getState());
            ps.setInt(11, admin.getzip());
            ps.setString(12, admin.getWebsite());
            ps.setString(13, admin.getCategory());
            ps.setString(14, admin.getP());
            ps.setString(15, admin.getT());
            ps.setString(16, admin.getRange());
            ps.setString(17, admin.getRate());
          
            
            ps.executeUpdate();
            
        }catch(SQLException e){
            e.printStackTrace();
        }
        return admin;
    }
    public void updateAdmin(Admin admin)
    {
        try{
            PreparedStatement ps = con.prepareStatement("update admin set name=?,email=?,phone=?,password=?,cname=?,cemail=?,cphone=?,address=?,city=?,state=?,zip=?,website=?,category=?,pdescription=?,tdescription=?,rupess=?,rate=?" + "where id=?");
            ps.setString(1, admin.getName());
            ps.setString(2,admin.getEmail());
            ps.setString(3,admin.getMobile());
            ps.setString(4,admin.getPassword());
            ps.setString(5, admin.getCName());
            ps.setString(6, admin.getCEmail());
            ps.setString(7, admin.getCMobile());
            ps.setString(8, admin.getAddress());
            ps.setString(9, admin.getCity());
            ps.setString(10, admin.getState());
            ps.setInt(11, admin.getzip());
            ps.setString(12, admin.getWebsite());
            ps.setString(13, admin.getCategory());
            ps.setString(14, admin.getP());
            ps.setString(15, admin.getT());
            ps.setString(16, admin.getRange());
            ps.setString(17, admin.getRate());
            ps.setInt(18, admin.getId());
            
            ps.executeUpdate();
          

        }catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
    
    public Admin getUser(int ID) {
         Admin admin = new Admin();
        try {
                         PreparedStatement ps = con.prepareStatement("select * from admin where id = ?");
                  
          ps.setInt(1,ID);
            ResultSet rs = ps.executeQuery();
         
            if (rs.next()) {
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
               admin.setPassword(rs.getString("password"));
            }
           
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return admin;
    }
    
    
      public void deletePost(int id)
    {
        try{
              PreparedStatement ps =con.prepareStatement("delete from admin where id = ?");
              ps.setInt(1, id);
              
              ps.executeUpdate();
              System.out.println("Deleted succefully");

        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
    
    
    public List<Admin> login(String email,String pass)
    {
        List<Admin> total = new ArrayList<Admin>();
        try{
            PreparedStatement ps = con.prepareStatement("select * from admin where email = ? and password = ?");
            ps.setString(1, email);
            ps.setString(2, pass);
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
    
    
    
    public int count(String name)
    {
        int c=0;
        try{
          PreparedStatement ps = con.prepareStatement("select count(*) from admin where category = ?");
          ps.setString(1, name);
          ResultSet rs = ps.executeQuery();
          while(rs.next())
          {
              return rs.getInt(1);
          }
        }catch(SQLException e)
        {
            e.printStackTrace();
        }

        return c;
    }
    
    
      public int countwa(String name,String location)
    {
        int c=0;
        try{
          PreparedStatement ps = con.prepareStatement("select count(*) from admin where category = ? and (address like ? or city like ?)");
          ps.setString(1, name);
          ps.setString(2,"%"+location+"%");
          ps.setString(3,"%"+location+"%");
          ResultSet rs = ps.executeQuery();
          while(rs.next())
          {
              return rs.getInt(1);
          }
        }catch(SQLException e)
        {
            e.printStackTrace();
        }

        return c;
    }
      public void delete_table(int id)
      {
          String name = "review"+id;
          String sql = "DROP TABLE "+name;
          try{
              PreparedStatement ps = con.prepareStatement(sql);
              ps.executeUpdate();
              
          }catch(Exception e)
          {
              e.printStackTrace();;
          }
          
      }
      
      public void review(int id)
      {
          String name= "review"+id;
          
          String createTableSQL = "CREATE TABLE "+name+"("
				+ "ID int(5) NOT NULL AUTO_INCREMENT, "
				+ "NAME VARCHAR(255)  NULL, "
                                + "EMAIL VARCHAR(255)  NULL, "
				+ "MESSAGE TEXT  NULL, "
                               // + "REPLY TEXT  NULL, "
                                + "RATING DECIMAL(2,1)  NULL, "
				+ "MESSAGE_DATE  VARCHAR(255) NULL, " + "PRIMARY KEY (ID) "
				+ ")";
          
         try{
          PreparedStatement ps = con.prepareStatement(createTableSQL);
           ps.executeUpdate();
      }catch(Exception e)
      {
          e.printStackTrace();
      }
      }
      
      
     public void addReview(int id,String name,String email,String m,double rate) 
     {
         try{
             String table= "review"+id;
           /*   PreparedStatement ps = con.prepareStatement("insert into "+table+"(NAME,EMAIL,MESSAGE,RATING,MESSAGE_DATE) values(?, ?, ?,?,?)");
              ps.setString(1, name);
              ps.setString(2, email);
              ps.setString(3, message);
              ps.setDouble(4, rate);*/
              java.util.Date date=new java.util.Date();
             
             String sql="Insert into "+table+"(NAME,EMAIL,RATING,MESSAGE,MESSAGE_DATE) values ( '"+name+"','"+email+"','"+rate+"','"+m+"','"+date+"') ";
              PreparedStatement ps = con.prepareStatement(sql);
            //  ps.setString(5, date);
              
              ps.executeUpdate();
              
              
              
              
            
         }catch(Exception e)
         {
             e.printStackTrace();;
         }
     }
     
     public List<Review> getReview(int id)
     {
         List<Review> re = new ArrayList<Review>();
         try{
             
             String table= "review"+id;
             
               PreparedStatement ps = con.prepareStatement("select * from "+table);
              
               ResultSet rs = ps.executeQuery();
         
            while (rs.next()) {
                Review view =  new Review();
                view.setName(rs.getString("NAME"));
                view.setEmail(rs.getString("EMAIL"));
                view.setMessage(rs.getString("MESSAGE"));
                view.setTime(rs.getString("MESSAGE_DATE"));
                view.setRate(rs.getDouble("RATING"));
                re.add(view);
            }
             
         }catch(Exception e)
         {
             e.printStackTrace();
         }
         return re;
     }
     
     public double avgRating(int id)
     {
         double rate=0.0;
         String table= "review"+id;
         
          try{
          PreparedStatement ps = con.prepareStatement("select Avg(RATING) from "+table);
         
          ResultSet rs = ps.executeQuery();
         
          while(rs.next())
          {
              return rs.getDouble(1);
          }
        }catch(SQLException e)
        {
            e.printStackTrace();
        }

         
         return rate;
         
     }
    
     
     public void addAvgRating(double rate,int id)
     {
         try{
             PreparedStatement ps = con.prepareStatement("update admin  set rating=? where id=?");
             ps.setDouble(1, rate);
             ps.setInt(2, id);
             ps.executeUpdate();
         }catch(Exception e)
         {
             e.printStackTrace();
         }
     }
     
     
     
    public static void main(String args[])
    {
        AdminDao dao = new AdminDao();
        
       // dao.review(43);
     //  dao.addReview(43, "Sachin","sachincs95@gmail.com","jjfdj", 3.4);

            /*    System.out.println(dao.avgRating(43)); 
      
                      java.util.Date date=new java.util.Date();
                      System.out.println(date); */

                      
    /*      List<Review> r = new ArrayList<Review>();
          r = dao.getReview(43);
         System.out.println(r.size()); 
          for(Review re:r)
          {
              System.out.println(re.getRate());
              System.out.println(re.getMessage());
          } 
        
      Admin d = new Admin();
         Admin admin = new Admin();
        
        
        d.setName("hfdhuydf");
        d.setMobile("56565656");
        d.setEmail("sachincs95@gmail.com");
        d.setPassword("5464");
        d.setAddress("dffdhbfdjhdf");
        d.setCEmail("sachuhu@nv.nvj");
        d.setCMobile("55566556");
        d.setCName("hfjdjhf");
        d.setCategory("Hotel");
        d.setCity("Allahabad");
        d.setP("dknfndi");
        d.setState("dfnjfdnj");
        d.setT("ndfnjfd");
        d.setWebsite("jndfjfdb");
        d.setzip(Integer.parseInt("12345"));
        d.setRange("565465");
        d.setRate("46464");
        
        admin=dao.add(d);
        
        System.out.println(admin.getId()); */
    
    dao.addAvgRating(3.4, 95);

    

    }
  
       
}
