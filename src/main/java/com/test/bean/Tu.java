package com.test.bean;

public class Tu {
    public String location;
    public DateTime dateTime;

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public DateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(DateTime dateTime) {
        this.dateTime = dateTime;
    }

    @Override
    public String toString() {
        return "Tu{" +
                "location='" + location + '\'' +
                ", dateTime=" + dateTime +
                '}';
    }
}
