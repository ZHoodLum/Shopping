package com.dhee.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.dhee.dao.IndexDao;
import com.dhee.vo.BooksVo;
import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {

	private IndexDao indexDao;
	private List<BooksVo> listBooks;

	public IndexDao getIndexDao() {
		return indexDao;
	}

	public void setIndexDao(IndexDao indexDao) {
		this.indexDao = indexDao;
	}

	public List<BooksVo> getListBooks() {
		return listBooks;
	}

	public void setListBooks(List<BooksVo> listBooks) {
		this.listBooks = listBooks;
	}

	public String index() {
		listBooks = indexDao.selectAllBooks();
		return SUCCESS;
	}

}
