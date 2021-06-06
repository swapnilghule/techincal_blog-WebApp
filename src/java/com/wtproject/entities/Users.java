/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wtproject.entities;

/**
 *
 * @author ANIKET GHULE
 */
public class Users {
    private int id;
    private String name,email,password,confim_password,profile,about,regdate;

    public String getDateTime() {
        return regdate;
    }

    public void setDateTime(String DateTime) {
        this.regdate = DateTime;
    }

   
    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public Users(int id, String name, String email, String password, String confim_password,String about) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.confim_password = confim_password;
        this.about=about;
   
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public Users(String name, String email, String password, String confim_password, String about) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.confim_password = confim_password;
        this.about=about;
 
    }
    
    public Users() {
    }

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

    public String getConfim_password() {
        return confim_password;
    }

    public void setConfim_password(String confim_password) {
        this.confim_password = confim_password;
    }

  

   
  
}
