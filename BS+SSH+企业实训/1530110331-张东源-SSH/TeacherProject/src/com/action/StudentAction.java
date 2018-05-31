package com.action;

import com.dao.StudentDao;
import com.opensymphony.xwork2.ActionSupport;
import com.vo.Student;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class StudentAction extends ActionSupport implements ServletRequestAware,SessionAware {

    private StudentDao studentDao;
    private Student student;
    private int studentid;
    private List<Student> liststudent;
    private HttpServletRequest request;
    private Map<String,Object> session;

    public int getStudentid() {
        return studentid;
    }

    public void setStudentid(int studentid) {
        this.studentid = studentid;
    }

    public StudentDao getStudentDao() {
        return studentDao;
    }

    public void setStudentDao(StudentDao studentDao) {
        this.studentDao = studentDao;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public List<Student> getListstudent() {
        return liststudent;
    }

    public void setListstudent(List<Student> liststudent) {
        this.liststudent = liststudent;
    }

    @Override
    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session=session;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    /**
     * 查询全部
     * @return
     */
    public String studentfindall(){
        liststudent = studentDao.studentfindALL();
        return SUCCESS;
    }

    /**
     * 添加
     */
    public String studentadd(){
        studentDao.studentAdd(student);
        return SUCCESS;
    }

    /**
     * 删除
     */
    public String studentdelete()  {
        studentid = Integer.parseInt(request.getParameter("studentid"));
        studentDao.studentDelete(studentid);
        return SUCCESS;
    }

    /**
     * 修改
     */
    public String findById(){
        studentid=Integer.parseInt(request.getParameter("studentid"));
        Student liststudents= studentDao.FindById(studentid);
        session.put("liststudent", liststudents);
        return SUCCESS;
    }

    public String studentupdate(){
        studentDao.studentUpdate(student);
        return SUCCESS;

    }

}
