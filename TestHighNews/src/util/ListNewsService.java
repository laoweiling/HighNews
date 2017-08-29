package util;


import Businesses.SelectNews;
import entity.PageBean;
import entity.QueryInfo;
import entity.QueryResult;

public class ListNewsService {

public PageBean pageQuery(QueryInfo info) {
	SelectNews dao = new SelectNews();
	QueryResult qr = dao.pageQuery(info.getStartindex(), info.getPagesize());
	
	PageBean bean = new PageBean();
	bean.setCurrentpage(info.getCurrentpage());
	bean.setList(qr.getList());
	bean.setPagesize(info.getPagesize());
	bean.setTotalrecord(qr.getTotalrecord());
	
	
	return bean;
}
}
