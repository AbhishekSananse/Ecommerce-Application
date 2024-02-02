package com.service.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.admin.Add_city_pin;
import com.bean.admin.add_details;
import com.bean.admin.edit_details;
import com.dal.admin.Details_DAL;

/**
 * Servlet implementation class Details_service
 */
@WebServlet("/ds")
public class Details_service extends HttpServlet {
	//properties
	add_details bean1;
	Add_city_pin bean2;
	edit_details bean3;
	Details_DAL dal;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Details_service() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		dal = new Details_DAL();//for optimization
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		// retrieve the bean from the session
		if(request.getParameter("type").equals("4")) {
			bean1 = (add_details)session.getAttribute("addata");
			int res = dal.addData(bean1);
			if(res > 0)
				out.println("success");
				session.removeAttribute("addata");
				response.sendRedirect("adminProfile.jsp?type=6");
		}
		else if(request.getParameter("type").equals("5")) {
			bean2=(Add_city_pin)session.getAttribute("cpdata");
			int res = dal.addCP(bean2);
			if(res>0)
				out.println("success");
				session.removeAttribute("cpdata");
				response.sendRedirect("adminProfile.jsp?type=6");
		}
		else if(request.getParameter("type").equals("7")) {
			String id =request.getParameter("id");
			bean3 = (edit_details)session.getAttribute("eddata");
			int res = dal.addedit(bean3,id);
			if(res>0)
				out.println("success");
				session.removeAttribute("eddata");
				response.sendRedirect("adminProfile.jsp?type=6");
		}
		else if(request.getParameter("type").equals("8")) {
			String id = request.getParameter("id");
			int res = dal.delpro(id);
			if(res>0)
				out.println("success");
				response.sendRedirect("./pages/admin/adminProfile.jsp?type=6");
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
