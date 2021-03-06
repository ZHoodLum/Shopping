package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import factory.DAOFactory;

public class SpecialtyDeleteServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");

		// 获取specialtyid,获取参数
		int specialtyid = Integer.parseInt(request.getParameter("specialtyid"));

		// 执行DAO
		try {
			DAOFactory.GetSpecialtyInstances().doDelete(specialtyid);
			request.getRequestDispatcher("SpecialtyQueryAllServlet").forward(
					request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
