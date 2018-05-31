package com.dhee.dao;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.dhee.vo.EmpVo;

public class EmpDao {
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void save(EmpVo evo) {
		String sql="from EmpVo";
		
		this.hibernateTemplate.find(sql);
//		this.hibernateTemplate.save(evo);
		
	}
}
