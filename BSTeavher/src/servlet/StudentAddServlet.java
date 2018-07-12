package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.Student;
import factory.DAOFactory;

public class StudentAddServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		request.setCharacterEncoding("gb18030");
		
		Student student=new Student();
		
		student.setStudentid(Integer.parseInt(request.getParameter("studentid")));
		student.setStudentname(request.getParameter("studentname"));
		student.setSex(request.getParameter("sex"));
		student.setPlace(request.getParameter("place"));
		student.setTel(request.getParameter("tel"));
		student.setSpecialtyid(Integer.parseInt(request.getParameter("specialtyname")));
		//score
		student.setSjjg(Integer.parseInt(request.getParameter("sjjg")));
		student.setJsjwl(Integer.parseInt(request.getParameter("jsjwl")));
		student.setCyy(Integer.parseInt(request.getParameter("cyy")));
		student.setJava(Integer.parseInt(request.getParameter("java")));
		student.setSsh(Integer.parseInt(request.getParameter("ssh")));
		
		try {
				DAOFactory.GetStudentInstances().doCreate(student);
				request.getSession().getAttribute("studentid");
				request.getSession().getAttribute("studentname");				
				request.getSession().getAttribute("sex");	
				request.getSession().getAttribute("place");
				request.getSession().getAttribute("tel");
				request.getSession().getAttribute("specialtyname");
				
				request.getSession().getAttribute("sjjg");
				request.getSession().getAttribute("jsjwl");
				request.getSession().getAttribute("cyy");
				request.getSession().getAttribute("java");
				request.getSession().getAttribute("ssh");
				
				
				request.getRequestDispatcher("StudentQueryAllServlet").forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
