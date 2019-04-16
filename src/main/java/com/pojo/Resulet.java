package com.pojo;

import java.util.List;

public class Resulet {
    private  Object list;
    private  int status;
    private  String ts;
    private  String message;
    private  boolean b;
    private List lis;

    public List getLis() {
        return lis;
    }

    public void setLis(List lis) {
        this.lis = lis;
    }

    public Object getList() {
        return list;
    }

    public void setList(Object list) {
        this.list = list;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public boolean isB() {
        return b;
    }

    public void setB(boolean b) {
        this.b = b;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getTs() {
        return ts;
    }

    public void setTs(String ts) {
        this.ts = ts;
    }

    public Resulet() {
    }

    public Resulet(Object list, int status, String message ,String ts) {
        this.list = list;
        this.status = status;
        this.message = message;
        this.ts = ts;
    }
}
