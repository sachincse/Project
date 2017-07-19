
package com.sachin.model;

/**
 *
 * @author Sachin Singh
 */
public class Admin {
     private int id;
    private String name;
    private String cmobile;
    private String mobile;
    private String email;
    private String password;
    private String cname;
    private String cemail;
    private String address;
    private String city;
    private String state;
    private int zip;
    private String website;
    private String category;
    private String pdesc;
    private String tdesc;
    private String range;
    private String image;
    private double rating;
    private String rate;
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

     public String getCMobile() {
        return cmobile;
    }

    public void setCMobile(String cmobile) {
        this.cmobile = cmobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
     public String getCName() {
        return cname;
    }

    public void setCName(String cname) {
        this.cname = cname;
    }
    
    public String getCEmail() {
        return cemail;
    }

    public void setCEmail(String cemail) {
        this.cemail = cemail;
    }
    
    public String getAddress(){
        return  address;
    }
    public void setAddress(String address){
        this.address = address;
    }
    
    public String getState(){
        return state;
    }
    public void setState(String state){
        this.state = state;
    }
    
    public String getCity(){
        return city;
    }
    public void setCity(String city)
    {
        this.city = city;
    }
    public int getzip(){
        return zip;
    }
    public void setzip(int zip)
    {
        this.zip = zip;
    }
    public String getCategory(){
        return category;
    }
    public void setCategory(String category)
    {
        this.category=category;
    }
    public String getWebsite(){
        return website;
    }
    public void setWebsite(String website)
    {
       this.website = website; 
    }
    public String getP()
    {
        return pdesc;
    }
    public void setP(String pdesc)
    {
        this.pdesc = pdesc;
    }
    
    public String getT(){
        return tdesc;
    }
    
    public void setT(String tdesc)
    {
        this.tdesc = tdesc;
    }
    public String getRange(){
        return range;
    }
    public void setRange(String range)
    {
        this.range = range;
    }
    public String getImage(){
        return image;
    }
    public void setImage(String image){
        
       this.image = image;
    }
    
    public void setRating(double rating)
    {
        this.rating=rating;
    }
    
    public double getRating()
    {
        return rating;
    }
    
    public void setRate(String rate)
    {
        this.rate=rate;
    }
    
    public String getRate()
    {
        return rate;
    }
}
