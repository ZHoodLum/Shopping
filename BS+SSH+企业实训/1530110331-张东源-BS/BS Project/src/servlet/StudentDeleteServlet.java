package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import factory.DAOFactory;

public class StudentDeleteServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");
		// ��ȡStudentid,��ȡ����
		int studentid = Integer.parseInt(request.getParameter("studentid"));
		
		// ִ��DAO
		try {
			DAOFactory.GetStudentInstances().doDelete(studentid);
			request.getRequestDispatcher("StudentQueryAllServlet").forward(request, response);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
