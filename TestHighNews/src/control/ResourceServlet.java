package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResourceServlet extends HttpServlet {

	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		if("add".equals(method)){
			addNews(request,response);
		}
		if("renew".equals(method)){
			renew_news(request,response);
		}
		if("del".equals(method)){
			deletenews(request,response);
		}
		if("sel".equals(method)){
			selnews(request,response);
		}
		
	}

	private void selnews(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/MyIndex/UI_JSP/admintab.jsp").forward(request, response);
		
	}

	private void deletenews(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/MyIndex/UI_JSP/admintab.jsp").forward(request, response);
		
	}

	private void renew_news(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/MyIndex/UI_JSP/admintab.jsp").forward(request, response);	
		
	}

	private void addNews(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/MyIndex/UI_JSP/addtab.jsp").forward(request, response);	
		
	}

	
//-----------------------------------------------------------------------	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		
	}

}
