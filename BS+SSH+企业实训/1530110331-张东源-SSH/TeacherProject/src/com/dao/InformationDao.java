package com.dao;

import com.vo.Information;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class InformationDao{

    private HibernateTemplate hibernateTemplate;

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    /**
     * 查询
     */
    public List<Information> informationfindALL(){
      //  List<Information> listInformation= (List<Information>) this.hibernateTemplate.find("from Information order by informationdate desc");
        //return listInformation;
        return (List<Information>)this.hibernateTemplate.find("from Information order by informationdate desc");
    }
    /**
     * 添加
     * @param information
     */
    @Transactional(readOnly = false)
    public void informationAdd(Information information){
        this.hibernateTemplate.save(information);
    }

    /**
     * 删除
     * @param informationid
     */
    @Transactional(readOnly = false)
    public void informationDelete(int informationid){
        this.hibernateTemplate.bulkUpdate("delete Information where informationid = ?", new Object[]{informationid});
    }

    /**
     *修改:根据ID查值
     * @param informationid
     */
    @Transactional(readOnly = false)
    public Information FindById(int informationid){
        List<Information> listInformation = (List<Information>) this.hibernateTemplate.find("from Information where informationid = ?", new Object[]{informationid});
        return listInformation.get(0);
    }
    /**
     *修改：对数据进行修改
     * @param information
     */
    @Transactional(readOnly = false)
    public void informationUpdate(Information information){
        this.hibernateTemplate.bulkUpdate("update Information set informationname=? where informationid=?",new Object[]{information.getInformationname(),information.getInformationid()});
    }
}
