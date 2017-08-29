package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import util.ListNewsService;
import util.WebUtils;
import entity.NewsBean;
import entity.PageBean;
import entity.QueryInfo;

public class GetJasonMServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		QueryInfo info = WebUtils.request2Bean(request, QueryInfo.class);
		ListNewsService service = new ListNewsService();

		PageBean bean = service.pageQuery(info);
		request.setAttribute("pagebean", bean);
		request.getAttribute("pagebean");
		PageBean bean1 = (PageBean) request.getAttribute("pagebean");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out1 = response.getWriter();

		Gson gson = new Gson();
		Map map = new HashMap();
		map.put("lists", bean1.getList());
		String str = gson.toJson(map);

		/*
		List newsList = new ArrayList();
		for (int i = 0; i < bean1.getList().size(); i++) {

			NewsBean nb = new NewsBean();
			nb = (NewsBean) bean1.getList().get(i);
			NewsBean n = new NewsBean(nb.getNewstitle(), nb.getNewspic(),
					nb.getNewsid(), nb.getPubtime());
			newsList.add(n);
			map.put("lists", newsList);
			mapJson = gson.toJson(map);
			System.out.println(mapJson);

			// list
			// +="{\"title\":\""+newstitle+"\",\"pic\":\""+pic+"\",\"link\":\""+id+"\",\"date\":\""+date+"\"},";
			// //传参数

		}*/
		// arrayList.add( list);
		// list += "]}";
		try {
			response.getWriter().write(str);
			response.getWriter().flush();
			response.getWriter().close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// ------------------------------------------------------
		 //System.out.println(str);
		request.getRequestDispatcher("/MyIndex/UI_JSP/m1227_1.jsp").forward(
				request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

		/* ---------上面是取出数据到整个pagebean,想把里边的数据取出放到jason格式 */

		// PageBean bean1 = (PageBean) request.getAttribute("pagebean");
		// response.setContentType("text/html;charset=utf-8");
		// PrintWriter out = response.getWriter();
		// for(int i = 0 ; i<= bean1.getList().size();i++ )
		// {
		//
		// String
		// resultJson="{\"title\":\"\",\"pic\":\"\",\"link\":\"\",\"date\":\"\"}";
		// //传参数
		//
		// out.println(resultJson);
		// }
		// out.flush();
		// out.close();

	}

}
