package com.test.bean;

public class Tu3 {
    public DateTime dateTime;
    public String hforce1;
    public String vforce1;
    public String hforce2;
    public String vforce2;

    public DateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(DateTime dateTime) {
        this.dateTime = dateTime;
    }

    public String getHforce1() {
        return hforce1;
    }

    public void setHforce1(String hforce1) {
        this.hforce1 = hforce1;
    }

    public String getVforce1() {
        return vforce1;
    }

    public void setVforce1(String vforce1) {
        this.vforce1 = vforce1;
    }

    public String getHforce2() {
        return hforce2;
    }

    public void setHforce2(String hforce2) {
        this.hforce2 = hforce2;
    }

    public String getVforce2() {
        return vforce2;
    }

    public void setVforce2(String vforce2) {
        this.vforce2 = vforce2;
    }

    @Override
    public String toString() {
        return "Tu3{" +
                "dateTime=" + dateTime +
                ", hforce1='" + hforce1 + '\'' +
                ", vforce1='" + vforce1 + '\'' +
                ", hforce2='" + hforce2 + '\'' +
                ", vforce2='" + vforce2 + '\'' +
                '}';
    }
}
