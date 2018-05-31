package com.dao;

import com.vo.Teacher;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class TeacherDao {
    private HibernateTemplate hibernateTemplate;

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    /**
     * 查询
     *
     */
    public List<Teacher> teacherfindALL(){
        //from teacher 'teacher'为VO包名
        List<Teacher> listTeacher = (List<Teacher>) this.hibernateTemplate.find("from Teacher");
        return listTeacher;
    }

    /**
     * 添加
     * @param teacher
     */
    @Transactional(readOnly = false)
    public void TeacherAdd(Teacher teacher){
        this.hibernateTemplate.save(teacher);
    }

    /**
     * 删除
     * @param teacherid
     */
    @Transactional(readOnly = false)
    public void teacherDelete(int teacherid){
        this.hibernateTemplate.bulkUpdate("delete Teacher where teacherid=?",new Object[]{ teacherid});
    }

    /**
     *修改 根据ID进行查询
     * @param teacherid
     */
    @Transactional(readOnly = false)
    public Teacher FindById(int teacherid){
        List<Teacher> listTeacher = (List<Teacher>) this.hibernateTemplate.find("from Teacher where teacherid = ?", new Object[]{teacherid});
        return listTeacher.get(0);
    }
    /**
     *修改 对查询的值进行修改
     * @param teacher
     */
    @Transactional(readOnly = false)
    public void teacherUpdate(Teacher teacher){
       this.hibernateTemplate.bulkUpdate("update Teacher set teachername=?,wage=?,workage=?,tel=? where teacherid=?",new Object[]{teacher.getTeachername(),teacher.getWage(),teacher.getWorkage(),teacher.getTel(), teacher.getTeacherid()});
    }

}
