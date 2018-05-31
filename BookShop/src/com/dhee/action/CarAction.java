package com.dhee.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.dhee.dao.CarDao;
import com.dhee.vo.BooksVo;
import com.opensymphony.xwork2.ActionSupport;

public class CarAction extends ActionSupport implements ServletRequestAware {

	private int id;
	private CarDao carDao;
	private HttpServletRequest request;

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public CarDao getCarDao() {
		return carDao;
	}

	public void setCarDao(CarDao carDao) {
		this.carDao = carDao;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String addCar() {
		BooksVo bv = carDao.findById(id);
		HttpSession session = request.getSession();
		List<BooksVo> listBooks = null;
		if (session.getAttribute("carInfo") == null) {
			listBooks = new ArrayList<BooksVo>();
		} else {
			listBooks = (List<BooksVo>) session.getAttribute("carInfo");
		}
		listBooks.add(bv);
		session.setAttribute("carInfo", listBooks);
		return SUCCESS;
	}

	public String delCar() {
		HttpSession session = request.getSession();
		List<BooksVo> listBooks = (List<BooksVo>) session
				.getAttribute("carInfo");
		Iterator<BooksVo> it = listBooks.iterator();
		while(it.hasNext()){
			BooksVo bv = it.next();
			if(bv.getId()==id){
				it.remove();
			}
		}
		session.setAttribute("carInfo", listBooks);

		return SUCCESS;
	}

}
