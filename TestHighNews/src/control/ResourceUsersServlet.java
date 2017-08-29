package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Businesses.ManageNewsType;
import Businesses.ManagerUsers;

import entity.NewstypeBean;
import entity.UsersBean;

public class ResourceUsersServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if("add".equals(method)){
			addUsers(request,response);
		}
		if("renew".equals(method)){
			renew_Users(request,response);
		}
		if("del".equals(method)){
			deleteUsers(request,response);
		}
		if("sel".equals(method)){
			selUsers(request,response);
		}
		
	}

	private void selUsers(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {


			ManagerUsers mnu = new ManagerUsers();
			
			Vector<UsersBean> rm = new Vector<UsersBean>();
			rm = mnu.selectUsers("2");
			request.setAttribute("Users", rm);
		
		request.getRequestDispatcher("/MyIndex/UI_JSP/seluserstab.jsp").forward(request, response);
		
	}

	private void deleteUsers(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/MyIndex/UI_JSP/selalluserstab.jsp").forward(request, response);
		
	}

	private void renew_Users(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/MyIndex/UI_JSP/selalluserstab.jsp").forward(request, response);	
		
	}

	private void addUsers(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/MyIndex/UI_JSP/addusertab.jsp").forward(request, response);	
		
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		
	}

}
