package com.test.bean;

public class Tu2 {
    public DateTime dateTime;
    public String average;

    public DateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(DateTime dateTime) {
        this.dateTime = dateTime;
    }

    public String getAverage() {
        return average;
    }

    public void setAverage(String average) {
        this.average = average;
    }

    @Override
    public String toString() {
        return "Tu2{" +
                "dateTime=" + dateTime +
                ", average='" + average + '\'' +
                '}';
    }
}
