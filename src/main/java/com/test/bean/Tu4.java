package com.test.bean;

public class Tu4 {
    public DateTime dateTime;
    public String h_force1;
    public String v_force1;
    public String h_force2;
    public String v_force2;

    public DateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(DateTime dateTime) {
        this.dateTime = dateTime;
    }

    public String getH_force1() {
        return h_force1;
    }

    public void setH_force1(String h_force1) {
        this.h_force1 = h_force1;
    }

    public String getV_force1() {
        return v_force1;
    }

    public void setV_force1(String v_force1) {
        this.v_force1 = v_force1;
    }

    public String getH_force2() {
        return h_force2;
    }

    public void setH_force2(String h_force2) {
        this.h_force2 = h_force2;
    }

    public String getV_force2() {
        return v_force2;
    }

    public void setV_force2(String v_force2) {
        this.v_force2 = v_force2;
    }

    @Override
    public String toString() {
        return "Tu4{" +
                "dateTime=" + dateTime +
                ", h_force1='" + h_force1 + '\'' +
                ", v_force1='" + v_force1 + '\'' +
                ", h_force2='" + h_force2 + '\'' +
                ", v_force2='" + v_force2 + '\'' +
                '}';
    }
}
