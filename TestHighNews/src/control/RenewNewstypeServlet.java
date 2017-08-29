package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Businesses.ManageNewsType;

import entity.NewstypeBean;


public class RenewNewstypeServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id1 =request.getParameter("typeid");
		String typename = new String(request.getParameter("typename").getBytes("ISO-8859-1"),"utf-8");
		
		int id = Integer.valueOf(id1);
     
		ManageNewsType mnt = new ManageNewsType();
		NewstypeBean n = new NewstypeBean(id,typename);
		mnt.updatenewstype(n);
		request.getRequestDispatcher("/MyIndex/UI_JSP/selallnewstypetab.jsp").forward(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
