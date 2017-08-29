package control;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import Businesses.ManageNews;
import Businesses.ManageNewsType;

import entity.NewsBean;
import entity.NewstypeBean;





public class AddNewsServlet extends HttpServlet {
	

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//File saveFileObj = new File(imgSavePath,"a.jgp"); //d:/img/a.jsp
		
		String author =new String(request.getParameter("author").getBytes("ISO-8859-1"),"utf-8");
	
		String id =request.getParameter("typeid");
		
		int typeid = Integer.valueOf(id);
		HttpSession session = request.getSession();
		String picPath = (String) session.getAttribute("picPath");
		
		String title =new String(request.getParameter("title").getBytes("ISO-8859-1"),"utf-8");
		String content =new String(request.getParameter("content").getBytes("ISO-8859-1"),"utf-8");
	    String pubtime = new SimpleDateFormat("yyyy-MM-dd HH:MM").format(Calendar.getInstance().getTime());
	    NewsBean nb = new NewsBean(title,author,
				content, pubtime,typeid,picPath);
	    ManageNews mnt = new ManageNews();
	    mnt.insertNews(nb);
	    request.getRequestDispatcher("/MyIndex/UI_JSP/addtab.jsp").forward(request, response);	

		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
