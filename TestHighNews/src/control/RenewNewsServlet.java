package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Businesses.ManageNews;

import entity.NewsBean;

public class RenewNewsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id1 = request.getParameter("id");
        //request.setCharacterEncoding("utf-8");
		int id = Integer.valueOf(id1);
		String author = new String(request.getParameter("author").getBytes(
				"ISO-8859-1"), "utf-8");

		String id2 = request.getParameter("typeid");
		int typeid = Integer.valueOf(id2);
		String newpic = request.getParameter("newpic");
		String title = new String(request.getParameter("title").getBytes(
				"ISO-8859-1"), "utf-8");
		String content = new String(request.getParameter("content").getBytes(
				"ISO-8859-1"), "utf-8");
		String pubtime = new SimpleDateFormat("yyyy-MM-dd HH:MM")
				.format(Calendar.getInstance().getTime());
		NewsBean nb = new NewsBean(id, title, author, content, pubtime, typeid,
				newpic);
		
		ManageNews mannews = new ManageNews();
		mannews.updateNews(nb);

		request.getRequestDispatcher("/MyIndex/UI_JSP/admintab.jsp").forward(
				request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
