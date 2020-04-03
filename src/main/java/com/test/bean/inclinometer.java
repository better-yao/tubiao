package com.test.bean;

public class inclinometer {
    public String date;
    public String hForce1;
    public String vForce1;
    public String hForce2;
    public String vForce2;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String gethForce1() {
        return hForce1;
    }

    public void sethForce1(String hForce1) {
        this.hForce1 = hForce1;
    }

    public String getvForce1() {
        return vForce1;
    }

    public void setvForce1(String vForce1) {
        this.vForce1 = vForce1;
    }

    public String gethForce2() {
        return hForce2;
    }

    public void sethForce2(String hForce2) {
        this.hForce2 = hForce2;
    }

    public String getvForce2() {
        return vForce2;
    }

    public void setvForce2(String vForce2) {
        this.vForce2 = vForce2;
    }

    @Override
    public String toString() {
        return "inclinometer{" +
                "date='" + date + '\'' +
                ", hForce1='" + hForce1 + '\'' +
                ", vForce1='" + vForce1 + '\'' +
                ", hForce2='" + hForce2 + '\'' +
                ", vForce2='" + vForce2 + '\'' +
                '}';
    }
}
