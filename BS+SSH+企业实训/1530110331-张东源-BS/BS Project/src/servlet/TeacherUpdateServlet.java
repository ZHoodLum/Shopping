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

public class TeacherUpdateServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");

		Teacher teacher = new Teacher();
		
		teacher.setTeachername(request.getParameter("teachername"));
		teacher.setTeacherid(Integer.parseInt(request.getParameter("teacherid")));
		teacher.setWage(Integer.parseInt(request.getParameter("wage")));
		teacher.setWorkage(Integer.parseInt(request.getParameter("workage")));
		teacher.setTel(request.getParameter("tel"));
		
		try {
			DAOFactory.GetTeacherInstances().doUpdate(teacher);
			request.getRequestDispatcher("TeacherQueryAllServlet").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
