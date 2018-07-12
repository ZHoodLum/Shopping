package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vo.Teacher;
import factory.DAOFactory;

public class TeacherFindByIdServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb18030");
		//获取teacherid 的id
		int teacherid = Integer.parseInt(request.getParameter("teacherid"));
		//执行DAO
		try {
			
			Teacher teacher = DAOFactory.GetTeacherInstances().findTeacherById(teacherid);
			
			request.getSession().setAttribute("teacher", teacher);
			request.getRequestDispatcher("teacher_update.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
