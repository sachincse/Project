/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sachin.dao;

import com.sachin.DB.DB;
import com.sachin.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Sachin Singh
 */
public class UserDao {
     private Connection con;
    
    public UserDao(){
        con = DB.getConnection(); 
    }
    
    public void add(User visitor){
        try{
            PreparedStatement ps = con.prepareStatement("insert into login(name,phone,email,password,question,answer) values( ?, ?, ?, ?, ?, ?)");
            ps.setString(1,visitor.getName());
            ps.setString(2,visitor.getMobile());
            ps.setString(3,visitor.getEmail()); 
            ps.setString(4,visitor.getPassword());
            ps.setString(5, visitor.getQuestion());
            ps.setString(6, visitor.getAnswer());
            ps.executeUpdate();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
   public User getUser(String email, String pass)
   {
       User user = new User();
       try{
           PreparedStatement ps  = con.prepareStatement("select*from login where email = ? and password = ?");
           ps.setString(1, email);
           ps.setString(2, pass);
           ResultSet rs = ps.executeQuery();
           boolean check = true;
           if(rs.next())
           {
               user.setId(rs.getInt("id"));
               user.setEmail(rs.getString("email"));
               user.setMobile(rs.getString("phone"));
               user.setName(rs.getString("name"));
               user.setAnswer(rs.getString("answer"));
               user.setQuestion(rs.getString("question"));
               
           }
           else
           {
               check =false;
           }
       }catch(SQLException e)
       {
           e.printStackTrace();
       }
       return user;
   }
    public boolean authenticate(User employee){
        try{
            PreparedStatement preparedStatement = con
                    .prepareStatement("select * from jobseeker where seekerEmail=? and seekerPassword=?");
            preparedStatement.setString(1,employee.getEmail());
            preparedStatement.setString(2,employee.getPassword());
            ResultSet rs = preparedStatement.executeQuery();
            if(rs.next()){
                return true;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
        return false;
    }
}