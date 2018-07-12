package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Student;
import vo.Teacher;
import factory.DAOFactory;

public class Teacher1QueryAllServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");
		// 执行DAO
		Teacher teacher = new Teacher();
		try {
			ArrayList<Teacher> allTeacher = DAOFactory.GetTeacherInstances()
					.findAllTeacher(teacher);
			
			// 会话
			request.getSession().setAttribute("allTeacher", allTeacher);
			
			// 跳转
			response.sendRedirect("teacher_queryall.jsp");
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}
