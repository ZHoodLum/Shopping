package com.action;

import com.dao.InformationDao;
import com.opensymphony.xwork2.ActionSupport;
import com.vo.Information;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

public class InformationAction extends ActionSupport implements ServletRequestAware,SessionAware{
    private Information information;
    private int informationid;
    private InformationDao informationDao;
    private List<Information> listinformation;
    private HttpServletRequest request;
    private Map<String,Object> session;

    public Information getInformation() {
        return information;
    }

    public void setInformation(Information information) {
        this.information = information;
    }

    public InformationDao getInformationDao() {
        return informationDao;
    }

    public void setInformationDao(InformationDao informationDao) {
        this.informationDao = informationDao;
    }

    public List<Information> getListinformation() {
        return listinformation;
    }

    public void setListinformation(List<Information> listinformation) {
        this.listinformation = listinformation;
    }


    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }

    public void setSession(Map<String, Object> session) {
        this.session=session;

    }
    public Map<String, Object> getSession() {
        return session;
    }

    /**
     * 查询全部
     * @return
     */
    public String informationfindall() {
        listinformation = informationDao.informationfindALL();
        return SUCCESS;
    }
   /* public void setRequest(Map<String, Object> request) {
        request.put("listinformation", listinformation);

    }*/
    /**
     * 添加
     */
    public String informationadd(){
        informationDao.informationAdd(information);
        return SUCCESS;
    }
    /**
     * 删除
     */
    public String informationdelete()  {
        informationid = Integer.parseInt(request.getParameter("informationid"));
        informationDao.informationDelete(informationid);
        return SUCCESS;
    }

    /**
     * 修改
     */
    public String findById(){
        informationid=Integer.parseInt(request.getParameter("informationid"));
        Information listinformations= informationDao.FindById(informationid);
        session.put("listinformation", listinformations);
        return SUCCESS;
    }

    public String informationupdate(){
        informationDao.informationUpdate(information);
        return SUCCESS;

    }


}
