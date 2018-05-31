package com.vo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "student")
public class Student {
    private int studentid;
    private String studentname;
    private String sex;
    private String yu;
    private String shu;
    private String wai;
    private String zheng;
    private String shi;
    private String di;
    private String sheng;
    private String wu;
    private String hua;
    @Id
    public int getStudentid() {
        return studentid;
    }

    public void setStudentid(int studentid) {
        this.studentid = studentid;
    }

    public String getStudentname() {
        return studentname;
    }

    public void setStudentname(String studentname) {
        this.studentname = studentname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getYu() {
        return yu;
    }

    public void setYu(String yu) {
        this.yu = yu;
    }

    public String getShu() {
        return shu;
    }

    public void setShu(String shu) {
        this.shu = shu;
    }

    public String getWai() {
        return wai;
    }

    public void setWai(String wai) {
        this.wai = wai;
    }

    public String getZheng() {
        return zheng;
    }

    public void setZheng(String zheng) {
        this.zheng = zheng;
    }

    public String getShi() {
        return shi;
    }

    public void setShi(String shi) {
        this.shi = shi;
    }

    public String getDi() {
        return di;
    }

    public void setDi(String di) {
        this.di = di;
    }

    public String getSheng() {
        return sheng;
    }

    public void setSheng(String sheng) {
        this.sheng = sheng;
    }

    public String getWu() {
        return wu;
    }

    public void setWu(String wu) {
        this.wu = wu;
    }

    public String getHua() {
        return hua;
    }

    public void setHua(String hua) {
        this.hua = hua;
    }
}
