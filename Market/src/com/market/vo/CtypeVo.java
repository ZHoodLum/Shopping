package com.market.vo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ctype")
public class CtypeVo {
	private int ctypeno;
	private String ctypename;
	@Id
	public int getCtypeno() {
		return ctypeno;
	}
	public void setCtypeno(int ctypeno) {
		this.ctypeno = ctypeno;
	}
	public String getCtypename() {
		return ctypename;
	}
	public void setCtypename(String ctypename) {
		this.ctypename = ctypename;
	}

}
