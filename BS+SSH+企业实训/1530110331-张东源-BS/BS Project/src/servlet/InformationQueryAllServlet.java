package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.Information;
import factory.DAOFactory;

public class InformationQueryAllServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("gb18030");
		response.setCharacterEncoding("gb18030");

		// ִ��DAO
		Information information = new Information();
		try {
			ArrayList<Information> allInformation = DAOFactory.GetInformationInstances()
					.findAllInformation(information);
			// �Ự
			request.getSession().setAttribute("allInformation", allInformation);
			// ��ת
			response.sendRedirect("information_queryall.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
