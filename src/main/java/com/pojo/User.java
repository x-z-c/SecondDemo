package com.pojo;

public class User {
    private int id;
    private String username;
    private String pwd;
    private String name;
    private String type1;
    public User() {
    }


    public User(String username, String pwd, String type1) {
        this.username = username;
        this.pwd = pwd;
        this.type1 = type1;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getType1() {
        return type1;
    }

    public void setType1(String type1) {
        this.type1 = type1;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
