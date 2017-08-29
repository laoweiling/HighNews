package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Businesses.ManagerUsers;

import entity.UsersBean;

public class RenewUsersServlet extends HttpServlet {

	                         
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username =new String(request.getParameter("username").getBytes("ISO-8859-1"),"utf-8");
		String userid = request.getParameter("typeid");
		int uid = Integer.valueOf(userid);
		System.out.println("uid:"+uid);
	    String userpwd = new String(request.getParameter("userpwd").getBytes("ISO-8859-1"),"utf-8");
	    String leval =  request.getParameter("userleval");
	    int userleval = Integer.valueOf(leval);
		UsersBean ub = new UsersBean(uid,username, userpwd, userleval);
	    ManagerUsers mu = new ManagerUsers();
	    mu.updateUsers(ub);
	    request.getRequestDispatcher("/MyIndex/UI_JSP/selalluserstab.jsp").forward(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		String userid = request.getParameter("typeid");
//		System.out.println(userid);
		doGet(request,response);
		
	}

}
