package com.market.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.market.vo.UsersVo;

public class UsersDao {
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public UsersVo login(UsersVo userVo) {
		List<UsersVo> listUser=this.hibernateTemplate.find("from UsersVo");
		for(UsersVo uv:listUser){
			if((uv.getUid()==userVo.getUid())&&uv.getUpwd().equals(userVo.getUpwd())){
				return uv;
			}
		}
		return null;
		
//		this.hibernateTemplate.save(evo);
		
	}
	public void registe(UsersVo uv){
		this.hibernateTemplate.save(uv);
	
	}
}
