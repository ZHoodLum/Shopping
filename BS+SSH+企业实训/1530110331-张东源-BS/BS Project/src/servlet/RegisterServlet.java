package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import factory.DAOFactory;
import vo.Users;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("gb18030");
		request.setCharacterEncoding("gb2312");

		// 获取表单,设置VO
		Users users = new Users();
		
		users.setUserid(Integer.parseInt(request.getParameter("userid")));
		users.setUname(request.getParameter("uname"));
		users.setUpwd(request.getParameter("pwd"));
		users.setLimit(Integer.parseInt(request.getParameter("limit")));
		// 执行DAO
		try {
			DAOFactory.getUsersInstances().doCreate(users);
			// 会话
			request.getSession().getAttribute("userid");
			request.getSession().getAttribute("uname");
			request.getSession().getAttribute("pwd");
			request.getSession().getAttribute("limit");
			// 跳转
			response.sendRedirect("login.jsp");
			//request.getRequestDispatcher("LoginServlet").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
