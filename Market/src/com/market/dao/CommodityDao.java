package com.market.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.market.vo.CommodityVo;
import com.market.vo.UsersVo;

public class CommodityDao {
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	private HibernateTemplate hibernateTemplate;
	
	public  List<CommodityVo>  listcommodity() {
		
		return this.hibernateTemplate.find("from CommodityVo");
		
	}
}
