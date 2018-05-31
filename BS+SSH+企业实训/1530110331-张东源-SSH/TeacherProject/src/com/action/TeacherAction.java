package com.action;

import com.dao.TeacherDao;
import com.opensymphony.xwork2.ActionSupport;
import com.vo.Teacher;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

import static com.opensymphony.xwork2.Action.SUCCESS;

public class TeacherAction extends ActionSupport implements ServletRequestAware,SessionAware {
    //封装teacherDao List<Teacher>
    private TeacherDao teacherDao;
    private Teacher teacher;
    private int teacherid;
    private List<Teacher> listteacher;
    private HttpServletRequest request;
    private Map<String,Object> session;

    public int getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(int teacherid) {
        this.teacherid = teacherid;
    }

    public TeacherDao getTeacherDao() {
        return teacherDao;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public void setTeacherDao(TeacherDao teacherDao) {
        this.teacherDao = teacherDao;
    }

    public List<Teacher> getListteacher() {
        return listteacher;
    }

    public void setListteacher(List<Teacher> listteacher) {
        this.listteacher = listteacher;
    }

    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }

    public void setSession(Map<String, Object> session) {
        this.session=session;
    }
    /**
     * 查询全部
     * @return
     */
    public String teacherfindall(){
        listteacher = teacherDao.teacherfindALL();
        return SUCCESS;
    }
    /**
     * 添加
     */
    public String teacheradd()  {
        teacherDao.TeacherAdd(teacher);
        return SUCCESS;
    }
    /**
     * 删除
     */
    public String teacherdelete()  {
        teacherid = Integer.parseInt(request.getParameter("teacherid"));
        teacherDao.teacherDelete(teacherid);
        return SUCCESS;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    /**
     * 修改
     */
    public String findById(){
        teacherid=Integer.parseInt(request.getParameter("teacherid"));
        Teacher listteachers= teacherDao.FindById(teacherid);
        session.put("listteacher", listteachers);
        return SUCCESS;
    }

    public String teacherupdate(){
        teacherDao.teacherUpdate(teacher);
        return SUCCESS;

    }

}
