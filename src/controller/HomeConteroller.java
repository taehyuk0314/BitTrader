package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.EmployeeDTO;

@WebServlet("/home.do")
public class HomeConteroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("context", request.getContextPath());
		request.getRequestDispatcher("/WEB-INF/view/home/main.jsp").forward(request, response);
		EmployeeDTO e = (EmployeeDTO)session.getAttribute("admin");
		if(e==null) {
			request.setAttribute("compo","pre");
		}else {
			request.setAttribute("compo","post");
		}

		
	
	}

}
