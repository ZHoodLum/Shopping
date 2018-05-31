package com.market.vo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="CommodityInfo")
public class CommodityVo {
	private int cno;
	private String cname;
	private int cnum;
	private double cmoney;
	private String ctypename;
	private String wname;
	private String cpicture;
	@Id
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public double getCmoney() {
		return cmoney;
	}
	public void setCmoney(double cmoney) {
		this.cmoney = cmoney;
	}
	public String getCtypename() {
		return ctypename;
	}
	public void setCtypename(String ctypename) {
		this.ctypename = ctypename;
	}
	public String getWname() {
		return wname;
	}
	public void setWname(String wname) {
		this.wname = wname;
	}
	public String getCpicture() {
		return cpicture;
	}
	public void setCpicture(String cpicture) {
		this.cpicture = cpicture;
	}

}
