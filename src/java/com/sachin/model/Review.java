/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sachin.model;

/**
 *
 * @author Sachin Singh
 */
public class Review {
    private int id;
    private String name;
    private String email;
    private String message;
    private String date;
    private double rate;
    
    public void setId(int id)
    {
        this.id = id;
    }
    
    public int getId()
    {
        return id;
    }
    
    public void setName(String name)
    {
        this.name = name;
    }
    
    public String getName()
    {
        return name;
    }
    
    public void setEmail(String email)
    {
        this.email=email;
    }
    
    public String getEmail()
    {
        return email;
    }
    
    public void setMessage(String message)
    {
        this.message = message;
    }
    
    public String getMessage()
    {
        return message;
    }
    
    public void setRate(double rate)
    {
        this.rate = rate;
    }
    
    
    public double getRate()
    {
        return rate;
    }
    
    public void setTime(String date)
    {
        this.date = date;
    }
    
    public String getTime()
    {
        return date;
    }
}
