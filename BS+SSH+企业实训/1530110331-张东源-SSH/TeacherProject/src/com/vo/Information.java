package com.vo;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
@Entity
@Table(name = "information")
public class Information {
    private int  informationid;
    private String informationname;
    private Date informationdate;

    @Id
    public int getInformationid() {
        return informationid;
    }

    public void setInformationid(int informationid) {
        this.informationid = informationid;
    }

    public String getInformationname() {
        return informationname;
    }

    public void setInformationname(String informationname) {
        this.informationname = informationname;
    }

    public Date getInformationdate() {
        return informationdate;
    }

    public void setInformationdate(Date informationdate) {
        this.informationdate = informationdate;
    }

}
