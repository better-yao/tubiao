package com.test.bean;

public class DateTime {
    public String yy;
    public String mm;
    public String dd;
    public String shi;
    public String fen;
    public String miao;

    public String getYy() {
        return yy;
    }

    public void setYy(String yy) {
        this.yy = yy;
    }

    public String getMm() {
        return mm;
    }

    public void setMm(String mm) {
        this.mm = mm;
    }

    public String getDd() {
        return dd;
    }

    public void setDd(String dd) {
        this.dd = dd;
    }

    public String getShi() {
        return shi;
    }

    public void setShi(String shi) {
        this.shi = shi;
    }

    public String getFen() {
        return fen;
    }

    public void setFen(String fen) {
        this.fen = fen;
    }

    public String getMiao() {
        return miao;
    }

    public void setMiao(String miao) {
        this.miao = miao;
    }

    @Override
    public String toString() {
        return "DateTime{" +
                "yy='" + yy + '\'' +
                ", mm='" + mm + '\'' +
                ", dd='" + dd + '\'' +
                ", shi='" + shi + '\'' +
                ", fen='" + fen + '\'' +
                ", miao='" + miao + '\'' +
                '}';
    }
}
