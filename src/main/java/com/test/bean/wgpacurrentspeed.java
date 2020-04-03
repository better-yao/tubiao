package com.test.bean;

public class wgpacurrentspeed {
    public String average;
    public String date;

    public String getAverage() {
        return average;
    }

    public void setAverage(String average) {
        this.average = average;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "wgpacurrentspeed{" +
                "average='" + average + '\'' +
                ", date='" + date + '\'' +
                '}';
    }
}
