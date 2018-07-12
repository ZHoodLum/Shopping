package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Specialty;
import factory.DAOFactory;

public class SpecialtyAddServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");

		// 获取表单 booktypeid_add.jsp,设置VO
		Specialty specialty = new Specialty();
		specialty.setSpecialtyid(Integer.parseInt(request.getParameter("specialtyid")));
		specialty.setSpecialtyname(request.getParameter("specialtyname"));
		specialty.setSpecialtycollege(request.getParameter("specialtycollege"));
		// 执行DAO
		try {
			DAOFactory.GetSpecialtyInstances().doCreate(specialty);
			// 会话
			request.getSession().getAttribute("specialtyid");
			request.getSession().getAttribute("specialtyname");
			request.getSession().getAttribute("specialtycollege");
			// 跳转
			request.getRequestDispatcher("SpecialtyQueryAllServlet").forward(
					request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
