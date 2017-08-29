package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Businesses.ManageNews;




public class DelNewsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		String id1 =request.getParameter("id");
		System.out.println(id1);
		int id = Integer.valueOf(id1);

		ManageNews mannews = new ManageNews();
		
		mannews.deleteNews(id);
		request.getRequestDispatcher("/MyIndex/UI_JSP/admintab.jsp").forward(request, response);	
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		
	}

}
