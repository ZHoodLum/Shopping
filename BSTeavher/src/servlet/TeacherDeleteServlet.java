package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import factory.DAOFactory;

public class TeacherDeleteServlet extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");



		int teacherid = Integer.parseInt(request.getParameter("teacherid"));
		// Ö´ÐÐDAO
		try {
			DAOFactory.GetTeacherInstances().doDelete(teacherid);
			request.getRequestDispatcher("TeacherQueryAllServlet").forward(request, response);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}
