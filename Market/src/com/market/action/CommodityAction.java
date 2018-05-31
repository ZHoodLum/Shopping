package com.market.action;

import java.util.List;

import com.market.dao.CommodityDao;
import com.market.vo.CommodityVo;
import com.opensymphony.xwork2.ActionSupport;
/**
 * 
 * @author Administrator
 *
 */
public class CommodityAction extends ActionSupport {
	/**
	 * 
	 */
	private CommodityDao commodityDao;
	private List<CommodityVo> listCommodity;
	
	public CommodityDao getCommodityDao() {
		return commodityDao;
	}
	public void setCommodityDao(CommodityDao commodityDao) {
		this.commodityDao = commodityDao;
	}
	public List<CommodityVo> getListCommodity() {
		return listCommodity;
	}
	public void setListCommodity(List<CommodityVo> listCommodity) {
		this.listCommodity = listCommodity;
	}	
	//²éÑ¯È«²¿
	public String selectAll() throws Exception {
		listCommodity=commodityDao.listcommodity();
		return SUCCESS;
	}
	
	
}
