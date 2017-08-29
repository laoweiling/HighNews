package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Businesses.ManageNews;


import entity.NewsBean;

import util.JDBCUtils;

public class FindNewsServlet extends HttpServlet {
	Connection conn = null;
	 Statement stmt = null;
	 ResultSet rs = null;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
             
             String dothing = request.getParameter("dothing");
             String id1 = request.getParameter("id");
             int id = Integer.valueOf(id1);
	   
             Map map = new LinkedHashMap();
             ManageNews nb = new ManageNews();
             NewsBean n = new NewsBean();
             n = nb.selectNews(id);
             map.put(id, n);
            
             request.setAttribute("map", map);
             if("show".equals(dothing)){
            	//跳转页面
                 request.getRequestDispatcher("/MyIndex/UI_JSP/xiangxi.jsp").forward(request, response);
      		}
      		if("renew".equals(dothing)){
      		//跳转页面
                request.getRequestDispatcher("/MyIndex/UI_JSP/renewtab.jsp").forward(request, response);
      		}
      		
      		if("del".equals(dothing)){
          		//跳转页面
                    request.getRequestDispatcher("/MyIndex/UI_JSP/deletetab.jsp").forward(request, response);
          		}
      		
      		if("show1".equals(dothing)){
            	//跳转页面
                 request.getRequestDispatcher("/MyIndex/UI_JSP/xiangxi2.jsp").forward(request, response);
      		}
           
             
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		//request.getRequestDispatcher("news.jsp").forward(request, response);
		
		
	}

}
