package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Course;
import factory.DAOFactory;

public class CourseUpdateServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");

		Course course = new Course();
		
		course.setCoursename(request.getParameter("coursename"));
		course.setCourseid(Integer.parseInt(request.getParameter("courseid")));

		try {
			DAOFactory.GetCourseInstances().doUpdate(course);
			request.getRequestDispatcher("CourseQueryAllServlet").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
