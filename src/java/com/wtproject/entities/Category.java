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
public class Category {
    
    private int cid;
    private String name,decp;

    public Category(String name, String decp) {
        this.name = name;
        this.decp = decp;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDecp() {
        return decp;
    }

    public void setDecp(String decp) {
        this.decp = decp;
    }

    public Category() {
    }

    public Category(int cid, String name, String decp) {
        this.cid = cid;
        this.name = name;
        this.decp = decp;
    }
    
    
}
