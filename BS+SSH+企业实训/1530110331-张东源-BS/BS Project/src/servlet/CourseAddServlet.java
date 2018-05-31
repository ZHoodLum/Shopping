package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Course;
import factory.DAOFactory;

public class CourseAddServlet extends HttpServlet {
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
		Course course = new Course();
		course.setCourseid(Integer.parseInt(request.getParameter("courseid")));
		course.setCoursename(request.getParameter("coursename"));
		// 执行DAO
		try {
			DAOFactory.GetCourseInstances().doCreate(course);
			// 会话
			request.getSession().getAttribute("courseid");
			request.getSession().getAttribute("coursename");
			// 跳转

			request.getRequestDispatcher("CourseQueryAllServlet").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
