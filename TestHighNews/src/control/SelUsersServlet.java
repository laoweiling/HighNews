package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Businesses.ManageNewsType;
import Businesses.ManagerUsers;

import entity.NewstypeBean;
import entity.UsersBean;

public class SelUsersServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String dothing = request.getParameter("dothing");
        String id1 = request.getParameter("id");
        int id = Integer.valueOf(id1); 
        
        Map map = new LinkedHashMap();
        ManagerUsers mnt = new ManagerUsers();
        UsersBean NT = new UsersBean();
        NT =  mnt.selectUsers(id);
        map.put(id, NT);
       
        request.setAttribute("map", map);
        if("show".equals(dothing)){
       	//跳转页面
            request.getRequestDispatcher("/WEB-INF/JSP/selalluserstab.jsp").forward(request, response);
 		}
 		if("renew".equals(dothing)){
 		//跳转页面
           request.getRequestDispatcher("/MyIndex/UI_JSP/renewuserstab.jsp").forward(request, response);
 		}
 		
 		if("del".equals(dothing)){
     		//跳转页面
               request.getRequestDispatcher("/MyIndex/UI_JSP/deluserstab.jsp").forward(request, response);
     		}
      

	
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		
	}

}
