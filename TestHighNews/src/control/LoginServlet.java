package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Businesses.LoginBusiness;
import Businesses.ManagerUsers;


import entity.UsersBean;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  int id = 0;
		  int userleval = 0;
         String admin = request.getParameter("admin"); 
         String password = request.getParameter("password");
         LoginBusiness ld = new LoginBusiness();
         UsersBean ub = new UsersBean();
          ub = ld.login(admin, password);
          
         //需要用过滤器处理？？？？？？待后期
         if(ub.getUserleval() != 0)
        	 request.getRequestDispatcher("/MyIndex/UI_JSP/adminmanager.jsp").forward(request, response);
         else 
        	 request.getRequestDispatcher("/MyIndex/UI_JSP/error.jsp").forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
