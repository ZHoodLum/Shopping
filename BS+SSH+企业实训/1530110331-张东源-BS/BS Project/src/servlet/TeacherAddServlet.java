package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Course;
import vo.Teacher;
import factory.DAOFactory;

public class TeacherAddServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb2312");

		// 获取表单,设置VO
		Teacher teacher = new Teacher();
		teacher.setTeacherid(Integer.parseInt(request.getParameter("teacherid")));
		teacher.setTeachername(request.getParameter("teachername"));
		teacher.setWage(Integer.parseInt(request.getParameter("wage")));
		teacher.setWorkage(Integer.parseInt(request.getParameter("workage")));
		teacher.setTel(request.getParameter("tel"));
		// 执行DAO
		try {
			DAOFactory.GetTeacherInstances().doCreate(teacher);
			// 会话
			request.getSession().getAttribute("teacherid");
			request.getSession().getAttribute("teachername");
			request.getSession().getAttribute("wage");
			request.getSession().getAttribute("workage");
			request.getSession().getAttribute("tel");
			// 跳转

			request.getRequestDispatcher("TeacherQueryAllServlet").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
