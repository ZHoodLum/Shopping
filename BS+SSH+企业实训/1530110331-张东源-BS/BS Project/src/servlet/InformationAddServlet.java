package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.Information;
import factory.DAOFactory;

public class InformationAddServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb2312");

		// ��ȡ��,����VO
		Information information = new Information();
		information.setInformationid(Integer.parseInt(request.getParameter("informationid")));
		information.setInformationname(request.getParameter("informationname"));
		// ִ��DAO
		try {
			DAOFactory.GetInformationInstances().doCreate(information);
			// �Ự
			request.getSession().getAttribute("informationid");
			request.getSession().getAttribute("informationname");
			// ��ת

			request.getRequestDispatcher("InformationQueryAllServlet").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
