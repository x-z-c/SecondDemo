package com.pojo;

public class StudentEntity {
    int xid,jid;

    public int getJid() {
        return jid;
    }

    public void setJid(int jid) {
        this.jid = jid;
    }

    String xjg,xdate,xbj,jpy,jtype;       //xjg學生提交的作業

    public String getJpy() {
        return jpy;
    }

    public void setJpy(String jpy) {
        this.jpy = jpy;
    }

    public String getJtype() {
        return jtype;
    }

    public void setJtype(String jtype) {
        this.jtype = jtype;
    }

    public int getXid() {
        return xid;
    }

    public void setXid(int xid) {
        this.xid = xid;
    }

    public String getXjg() {
        return xjg;
    }

    public void setXjg(String xjg) {
        this.xjg = xjg;
    }

    public String getXdate() {
        return xdate;
    }

    public void setXdate(String xdate) {
        this.xdate = xdate;
    }

    public String getXbj() {
        return xbj;
    }

    public void setXbj(String xbj) {
        this.xbj = xbj;
    }
}
