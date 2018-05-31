package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Student;
import factory.DAOFactory;

public class StudentUpdateServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		request.setCharacterEncoding("gb18030");

		Student student=new Student();
		
		student.setStudentid(Integer.parseInt(request.getParameter("studentid")));
		student.setStudentname(request.getParameter("studentname"));
		student.setCourseid(Integer.parseInt(request.getParameter("coursename")));
		student.setSex(request.getParameter("sex"));
		
		student.setScore(Integer.parseInt(request.getParameter("score")));
		student.setPlace(request.getParameter("place"));
		student.setSpecialtyid(Integer.parseInt(request.getParameter("specialtyname")));
		
		try {
			DAOFactory.GetStudentInstances().doUpdate(student);
			request.getRequestDispatcher("StudentQueryAllServlet").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
