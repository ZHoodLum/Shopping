package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Course;
import factory.DAOFactory;

public class CourseQueryServlet extends HttpServlet {
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
		Course course = new Course();
		course.setCourseid(Integer.parseInt(request.getParameter("courseid")));
		
		
		try {
			ArrayList<Course> Course = DAOFactory.GetCourseInstances().findCourse(course);
			// 会话
			request.getSession().setAttribute("course", Course);
			// 跳转
			//response.sendRedirect("course_queryall.jsp");
			request.getRequestDispatcher("course_query.jsp").forward(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
