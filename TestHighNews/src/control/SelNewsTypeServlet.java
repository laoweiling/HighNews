package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Businesses.ManageNewsType;


import util.JDBCUtils;
import entity.NewsBean;
import entity.NewstypeBean;

public class SelNewsTypeServlet extends HttpServlet {
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 
        String dothing = request.getParameter("dothing");
        String id1 = request.getParameter("id");
        int id = Integer.valueOf(id1); 
        System.out.println("id =" + id);
        Map map = new LinkedHashMap();
        ManageNewsType mnt = new ManageNewsType();
        NewstypeBean NT = new NewstypeBean();
        NT =  mnt.selectNewstype(id);
        map.put(id, NT);
       
        request.setAttribute("map", map);
        if("show".equals(dothing)){
       	//跳转页面
            request.getRequestDispatcher("/WEB-INF/JSP/selallnewstypetab.jsp").forward(request, response);
 		}
 		if("renew".equals(dothing)){
 		//跳转页面
           request.getRequestDispatcher("/MyIndex/UI_JSP/renewNewstypetab.jsp").forward(request, response);
 		}
 		
 		if("del".equals(dothing)){
     		//跳转页面
               request.getRequestDispatcher("/MyIndex/UI_JSP/delNewsTypetab.jsp").forward(request, response);
     		}
      

	
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		
	}

}
