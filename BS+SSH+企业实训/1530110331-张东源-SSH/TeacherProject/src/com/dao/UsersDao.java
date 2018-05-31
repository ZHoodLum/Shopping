package com.dao;

import com.vo.Users;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class UsersDao{

    private HibernateTemplate hibernateTemplate;

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    public Users login(Users users){
        List<Users> listUser = (List<Users>)this.hibernateTemplate.find("from Users");

        for(Users uv :listUser){
            if (uv.getUserid() == users.getUserid() && uv.getUpwd().equals(users.getUpwd())){
                return uv;
            }
        }
        return null;
    }
    @Transactional(readOnly = false)
    public void registe(Users uv){
        this.hibernateTemplate.save(uv);
    }



}

    /**
     * 登陆
     * @param users
     * @return
     */
/*
public class UsersDao extends HibernateDaoSupport {
    public boolean login(Users users) {
        String hql = "from users where userid =? and upwd = ?";
        List<Users> list = (List<Users>)this.getHibernateTemplate().find(hql, users.getUserid(),users.getUpwd());
        for (Users us : list) {
            users.setUname((us.getUname()));
            users.setUlimit(us.getUlimit());
        }

        if (list.size() > 0) {
            return true;
        } else {
            return false;
        }
    }
    }*/
