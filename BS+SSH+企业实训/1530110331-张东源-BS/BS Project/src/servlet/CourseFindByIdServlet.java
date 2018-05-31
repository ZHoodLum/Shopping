package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Course;
import factory.DAOFactory;

public class CourseFindByIdServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");
		//获取courseid 的id
		int courseid = Integer.parseInt(request.getParameter("courseid"));
		//执行DAO
		try {
			
			Course course = DAOFactory.GetCourseInstances().findCourseById(courseid);
			
			request.getSession().setAttribute("course", course);
			request.getRequestDispatcher("course_update.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
