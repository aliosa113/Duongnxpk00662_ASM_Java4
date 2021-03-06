package com.javaweb.model;
// Generated Oct 31, 2016 5:44:34 PM by Hibernate Tools 4.3.1



/**
 * Users generated by hbm2java
 */
public class Users  implements java.io.Serializable {


     private Integer idusers;
     private String username;
     private String password;
     private String email;
     private String fullname;
     private Boolean gioitinh;
     private Integer phone;
     private String address;

    public Users() {
    }

	
    public Users(String username, String password, String email, String fullname) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.fullname = fullname;
    }
    public Users(String username, String password, String email, String fullname, Boolean gioitinh, Integer phone, String address) {
       this.username = username;
       this.password = password;
       this.email = email;
       this.fullname = fullname;
       this.gioitinh = gioitinh;
       this.phone = phone;
       this.address = address;
    }
   
    public Integer getIdusers() {
        return this.idusers;
    }
    
    public void setIdusers(Integer idusers) {
        this.idusers = idusers;
    }
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getFullname() {
        return this.fullname;
    }
    
    public void setFullname(String fullname) {
        this.fullname = fullname;
    }
    public Boolean getGioitinh() {
        return this.gioitinh;
    }
    
    public void setGioitinh(Boolean gioitinh) {
        this.gioitinh = gioitinh;
    }
    public Integer getPhone() {
        return this.phone;
    }
    
    public void setPhone(Integer phone) {
        this.phone = phone;
    }
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }




}


