package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Specialty;
import factory.DAOFactory;

public class SpecialtyFindByIdServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");
		//获取specialty的id
		int specialtyid = Integer.parseInt(request.getParameter("specialtyid"));
		
		//执行dao
		try{
			Specialty specialty = DAOFactory.GetSpecialtyInstances().findSpecialtyById(specialtyid);
			//请求跳转
			request.getSession().setAttribute("specialty", specialty);
			request.getRequestDispatcher("specialty_update.jsp").forward(request, response);
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
