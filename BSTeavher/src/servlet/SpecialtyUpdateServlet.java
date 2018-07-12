package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Specialty;
import factory.DAOFactory;

public class SpecialtyUpdateServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");
		
		
		Specialty specialty = new Specialty();
		
		specialty.setSpecialtyname(request.getParameter("specialtyname"));
		specialty.setSpecialtycollege(request.getParameter("specialtycollege"));
		specialty.setSpecialtyid(Integer.parseInt(request.getParameter("specialtyid")));

		try {
			DAOFactory.GetSpecialtyInstances().doUpdate(specialty);
			request.getRequestDispatcher("SpecialtyQueryAllServlet").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
