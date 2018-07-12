package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import factory.DAOFactory;
import vo.Users;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=gb2312");
		request.setCharacterEncoding("gb2312");
		// ��ȡ��
		Users users = new Users();
		users.setUserid(Integer.parseInt(request.getParameter("userid")));
		users.setUpwd(request.getParameter("upwd"));
		// ִ��DAO
		try {
			if (DAOFactory.getUsersInstances().findLogin(users)) {
				// �Ự
				request.getSession().setAttribute("uname", users.getUname());
				request.getSession().setAttribute("limits", users.getLimits());
				// ��ת
				//request.getRequestDispatcher("main.jsp").forward(request,
						//response);
				response.sendRedirect("my.jsp");
			} else {
				request.getRequestDispatcher("login.jsp").forward(request,
						response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
