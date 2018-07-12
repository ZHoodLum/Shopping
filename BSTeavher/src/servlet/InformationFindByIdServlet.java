package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Course;
import vo.Information;
import factory.DAOFactory;

public class InformationFindByIdServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");
		//获取id 的id
		int informationid = Integer.parseInt(request.getParameter("informationid"));
		//执行DAO
		try {
			
			Information information = DAOFactory.GetInformationInstances().findInformationById(informationid);
			
			request.getSession().setAttribute("information", information);
			request.getRequestDispatcher("information_update.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
