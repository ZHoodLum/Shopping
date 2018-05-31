package com.market.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.market.vo.CommodityVo;
import com.market.vo.CtypeVo;
import com.market.vo.UsersVo;

public class CtypeDao {
	private HibernateTemplate hibernateTemplate;

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
	public  List<CtypeVo>  listctype() {
		return this.hibernateTemplate.find("from CtypeVo");
	}
	
	public void CtypeAdd(CtypeVo cv){
		this.hibernateTemplate.save(cv);
	}
	
	public void CtypeDelete(int ctypeno){
		this.hibernateTemplate.bulkUpdate("delete CtypeVo where ctypeno=?", new Object[]{ctypeno});  
	}
	public CtypeVo FindById(int ctypeno){
			List<CtypeVo> listCtype = this.hibernateTemplate.find("from CtypeVo where ctypeno = ?", new Object[]{ctypeno});
			return listCtype.get(0);
		}
	public void CtypeUpdate(CtypeVo cv){
		this.hibernateTemplate.bulkUpdate("update CtypeVo set ctypename=? where ctypeno=?", new Object[]{cv.getCtypename(),cv.getCtypeno()});  
	}
	
	}

