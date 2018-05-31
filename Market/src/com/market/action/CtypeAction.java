package com.market.action;


import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.market.dao.CtypeDao;
import com.market.vo.CtypeVo;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 
 * @author Administrator
 *
 */
public class CtypeAction extends ActionSupport implements ServletRequestAware,SessionAware{
	private CtypeDao ctypeDao;
	private int ctypeno;
	private CtypeVo ctypeVo;
	private List<CtypeVo> listctype;
	private HttpServletRequest request;
	private Map<String,Object> session;
	
	
	public CtypeVo getCtypeVo() {
		return ctypeVo;
	}
	public void setCtypeVo(CtypeVo ctypeVo) {
		this.ctypeVo = ctypeVo;
	}
	public CtypeDao getCtypeDao() {
		return ctypeDao;
	}
	public void setCtypeDao(CtypeDao ctypeDao) {
		this.ctypeDao = ctypeDao;
	}
	public List<CtypeVo> getListctype() {
		return listctype;
	}
	public void setListctype(List<CtypeVo> listctype) {
		listctype = listctype;
	}
	//数据封装

		//查询全部
		public String selectAll(){
			listctype=ctypeDao.listctype();
			return SUCCESS;
		}
		//添加
		public String ctypeAdd()  {
			ctypeDao.CtypeAdd(ctypeVo);
			return SUCCESS;
		}
		//删除
		public String ctypeDelete()  {
		    ctypeno=Integer.parseInt(request.getParameter("ctypeno"));
			ctypeDao.CtypeDelete(ctypeno);
			return SUCCESS;
}
		//查询单值
		public String findById(){
			ctypeno=Integer.parseInt(request.getParameter("ctypeno"));
			CtypeVo listctypes= ctypeDao.FindById(ctypeno);
			session.put("listctype", listctypes);
			return SUCCESS;
		}
		public String ctypeUpdate(){
			ctypeDao.CtypeUpdate(ctypeVo);
			return SUCCESS;
			
		}
		
		
		public void setServletRequest(HttpServletRequest request) {
			this.request = request;
		}
		public void setSession(Map<String, Object> session) {
			this.session=session;
			
		}
}
