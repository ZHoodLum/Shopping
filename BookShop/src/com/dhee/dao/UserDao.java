package com.dhee.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.dhee.vo.UserVo;

public class UserDao {
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
	public UserVo login(UserVo userVo){
		List<UserVo> listUser = this.hibernateTemplate.find("from UserVo");
		for(UserVo uv :listUser){
			if(uv.getLoginName().equals(userVo.getLoginName())&&uv.getPassword().equals(userVo.getPassword())){
				return uv;
			}
		}
		return null;
	}
	
	public void registe(UserVo uv){
		this.hibernateTemplate.save(uv);
	}
	
	

}
