package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.Information;
import factory.DAOFactory;

public class InformationUpdateServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");

		Information information = new Information();
		
		information.setInformationname(request.getParameter("informationname"));
		information.setInformationid(Integer.parseInt(request.getParameter("informationid")));

		try {
			DAOFactory.GetInformationInstances().doUpdate(information);
			request.getRequestDispatcher("InformationQueryAllServlet").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
