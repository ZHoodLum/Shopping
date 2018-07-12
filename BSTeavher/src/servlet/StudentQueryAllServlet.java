package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Student;
import factory.DAOFactory;

public class StudentQueryAllServlet extends HttpServlet {
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
		Student student = new Student();
		try {
			ArrayList<Student> allStudent = DAOFactory.GetStudentInstances()
					.findAllStudent(student);
			// 会话
			request.getSession().setAttribute("allStudent", allStudent);
			// 跳转
			response.sendRedirect("student_queryall.jsp");
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}
