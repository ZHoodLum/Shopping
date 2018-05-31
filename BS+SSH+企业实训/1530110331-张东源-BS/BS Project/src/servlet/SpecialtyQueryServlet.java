package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Course;
import vo.Specialty;
import factory.DAOFactory;

public class SpecialtyQueryServlet extends HttpServlet {
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
		Specialty specialty = new Specialty();
		specialty.setSpecialtyid(Integer.parseInt(request.getParameter("specialtyid")));
		
		
		try {
			ArrayList<Specialty> Specialty = DAOFactory.GetSpecialtyInstances().findSpecialty(specialty);
			// 会话
			request.getSession().setAttribute("specialty", Specialty);
			// 跳转
			//response.sendRedirect("course_queryall.jsp");
			request.getRequestDispatcher("specialty_query.jsp").forward(request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
