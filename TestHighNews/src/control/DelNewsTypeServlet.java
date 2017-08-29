package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Businesses.ManageNews;
import Businesses.ManageNewsType;


public class DelNewsTypeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id1 =request.getParameter("typeid");
		System.out.println(id1);
		int id = Integer.valueOf(id1);
     
		ManageNewsType mnt = new ManageNewsType();
		mnt.deletenewstype(id);
		
		
		request.getRequestDispatcher("/MyIndex/UI_JSP/selallnewstypetab.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
