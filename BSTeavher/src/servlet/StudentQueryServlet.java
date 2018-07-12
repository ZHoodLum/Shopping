package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.Student;
import factory.DAOFactory;

public class StudentQueryServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		request.setCharacterEncoding("gb18030");
		response.setCharacterEncoding("gb18030");

		// 执行DAO
		Student student = new Student();
		student.setStudentid(Integer.parseInt(request.getParameter("studentid")));
		
		
		try {
			ArrayList<Student> Student = DAOFactory.GetStudentInstances().findStudent(student);
			// 会话
			request.getSession().setAttribute("student", Student);
			// 跳转
			//response.sendRedirect("student_query.jsp");
			request.getRequestDispatcher("student_query.jsp").forward(request,response);


				
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
