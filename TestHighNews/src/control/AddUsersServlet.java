package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Businesses.ManageNewsType;
import Businesses.ManagerUsers;

import entity.NewstypeBean;
import entity.UsersBean;

public class AddUsersServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String username =new String(request.getParameter("username").getBytes("ISO-8859-1"),"utf-8");
	    String userpwd = new String(request.getParameter("userpwd").getBytes("ISO-8859-1"),"utf-8");
	    String leval =  request.getParameter("userleval");
	    int userleval = Integer.valueOf(leval);
		UsersBean ub = new UsersBean(username, userpwd, userleval);
	    ManagerUsers mu = new ManagerUsers();
	    mu.insertUsers(ub);
	    request.getRequestDispatcher("/MyIndex/UI_JSP/addusertab.jsp").forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		
	}

}
