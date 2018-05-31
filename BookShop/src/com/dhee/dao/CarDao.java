package com.dhee.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.dhee.vo.BooksVo;

public class CarDao {
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
	public BooksVo findById(int id){
		List<BooksVo> listBooks = this.hibernateTemplate.find("from BooksVo where id = ?", new Object[]{id});
		return listBooks.get(0);
	}
}
