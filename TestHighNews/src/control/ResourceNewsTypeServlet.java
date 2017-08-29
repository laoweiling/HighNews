package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Businesses.ManageNewsType;


import entity.NewstypeBean;

public class ResourceNewsTypeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if("add".equals(method)){
			addNewstype(request,response);
		}
		if("renew".equals(method)){
			renew_newstype(request,response);
		}
		if("del".equals(method)){
			deletenewstype(request,response);
		}
		if("sel".equals(method)){
			selnewstype(request,response);
		}
		
	}

	private void selnewstype(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		ManageNewsType mnt = new ManageNewsType();
		
		Vector<NewstypeBean> rm = new Vector<NewstypeBean>();
		rm = mnt.selectNewstype("2");
		request.setAttribute("NewsType", rm);
		request.getRequestDispatcher("/MyIndex/UI_JSP/selnewstypetab.jsp").forward(request, response);
		
	}

	private void deletenewstype(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/MyIndex/UI_JSP/selallnewstypetab.jsp").forward(request, response);
		
	}

	private void renew_newstype(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/MyIndex/UI_JSP/selallnewstypetab.jsp").forward(request, response);	
		
	}

	private void addNewstype(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/MyIndex/UI_JSP/addnewstypetab.jsp").forward(request, response);	
		
	}

		
	

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
