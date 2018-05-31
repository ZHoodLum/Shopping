package com.dao;

import com.vo.Student;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class StudentDao {
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
    public List<Student> studentfindALL(){
        //from teacher 'teacher'为VO包名
        List<Student> listStudent = (List<Student>) this.hibernateTemplate.find("from Student ");
        return listStudent;
    }

    /**
     * 添加
     */
    @Transactional(readOnly = false)
    public void studentAdd(Student student){
        this.hibernateTemplate.save(student);
    }

    /**
     * 删除
     * @param studentid
     */
    @Transactional(readOnly = false)
    public void studentDelete(int studentid){
        this.hibernateTemplate.bulkUpdate("delete Student where studentid=?",new Object[]{ studentid});
    }

    /**
     *修改 根据ID进行查询
     * @param studentid
     */
    @Transactional(readOnly = false)
    public Student FindById(int studentid){
        List<Student> listStudent = (List<Student>) this.hibernateTemplate.find("from Student where studentid = ?", new Object[]{studentid});
        return listStudent.get(0);
    }
    /**
     *修改 对查询的值进行修改
     * @param student
     */
    @Transactional(readOnly = false)
    public void studentUpdate(Student student){
        this.hibernateTemplate.bulkUpdate("update Student set yu=?,shu=?,wai=?,zheng=?,shi=?,di=?,sheng=?,wu=?,hua=? where studentid=?",new Object[]{student.getYu(),student.getShu(),student.getWai(),student.getZheng(),student.getShi(),student.getDi(),student.getSheng(),student.getWu(),student.getHua(),student.getStudentid()});
    }

}
