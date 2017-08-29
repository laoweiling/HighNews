package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Businesses.ManageNews;
import Businesses.ManageNewsType;


import entity.NewsBean;
import entity.NewstypeBean;

public class AddNewsTypeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id =request.getParameter("typeid");
		
		int typeid = Integer.valueOf(id);
		String typename =new String(request.getParameter("typename").getBytes("ISO-8859-1"),"utf-8");
	    NewstypeBean ntb = new NewstypeBean(typeid, typename);
	    ManageNewsType mnt = new ManageNewsType();
	    mnt.insertnewstype(ntb);
	    request.getRequestDispatcher("/MyIndex/UI_JSP/addnewstypetab.jsp").forward(request, response);	
	
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
