package control;

import java.io.IOException;
import java.io.PrintWriter;
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

import util.ListNewsService;
import util.WebUtils;

import entity.PageBean;
import entity.QueryInfo;


public class ListNewsServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		QueryInfo info = WebUtils.request2Bean(request, QueryInfo.class);
		ListNewsService service = new ListNewsService();
		PageBean bean = service.pageQuery(info);
		request.setAttribute("pagebean", bean);
		
       //Ìø×ªÒ³Ãæ
      request.getRequestDispatcher("/MyIndex/UI_JSP/myindex2.jsp").forward(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
		
	}

}
