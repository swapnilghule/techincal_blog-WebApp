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
    private String name,email,password,confim_password,regid,rollno,dob,Pno,profile;

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public Users(int id, String name, String email, String password, String confim_password, String regid, String rollno, String dob, String Pno) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.confim_password = confim_password;
        this.regid = regid;
        this.rollno = rollno;
        this.dob = dob;
        this.Pno = Pno;
    }

    public Users(String name, String email, String password, String confim_password, String regid, String rollno, String dob, String Pno) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.confim_password = confim_password;
        this.regid = regid;
        this.rollno = rollno;
        this.dob = dob;
        this.Pno = Pno;
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

    public String getDob() {
        return regid;
    }

    public void setRegid(String regid) {
        this.regid = regid;
    }

    public String getRollno() {
        return rollno;
    }

    public void setRollno(String rollno) {
        this.rollno = rollno;
    }

    public String getRegid() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getPno() {
        return Pno;
    }

    public void setPno(String Pno) {
        this.Pno = Pno;
    }
    
    

   
  
}
