package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FrontControllerP1
 */
@WebServlet("/fc")
public class FrontControllerP1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontControllerP1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		RequestDispatcher rd;
		if(request.getParameter("type").equals("0")) {
			rd = request.getRequestDispatcher("./pages/AdminLogin.jsp"); 
			rd.forward(request, response);
//			response.sendRedirect("pages/AdminLogin.jsp")
		}
		else if(request.getParameter("type").equals("2")) {
			rd = request.getRequestDispatcher("./pages/vendor/Login.jsp");
			rd.forward(request, response);
		}
		else if(request.getParameter("type").equals("1")) {
			rd = request.getRequestDispatcher("./pages/vendor/SignUp.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
