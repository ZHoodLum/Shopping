package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import factory.DAOFactory;

public class CourseDeleteServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		request.setCharacterEncoding("gb2312");

		// 获取courseid,获取参数
		int courseid = Integer.parseInt(request.getParameter("courseid"));

		// 执行DAO
		try {
			DAOFactory.GetCourseInstances().doDelete(courseid);
			request.getRequestDispatcher("CourseQueryAllServlet").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
