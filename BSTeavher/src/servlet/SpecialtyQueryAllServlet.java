package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Specialty;
import factory.DAOFactory;

public class SpecialtyQueryAllServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");

		// Ö´ÐÐDAO
		Specialty specialty = new Specialty();
		try{
			ArrayList<Specialty> allSpecialty = DAOFactory.GetSpecialtyInstances()
					.findAllSpecialty(specialty);
			request.getSession().setAttribute("allSpecialty", allSpecialty);
	
			response.sendRedirect("specialty_queryall.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
