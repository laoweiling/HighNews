<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 
    <%@ page import="java.util.*" %>
    <%@ page import="java.util.*" %>
<%@ page import="control.*" %>
 <%@ page import="Businesses.*" %>
  <%@ page import="entity.*" %>
  <%@ page import="util.*" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查询新闻类型</title>
</head>
<body >


<%
       Map map = new LinkedHashMap();
       ManageNewsType mnt = new ManageNewsType();
       Vector<NewstypeBean> rm = new Vector<NewstypeBean>();
       rm =  mnt.selectNewstype("2");
       for(int i = 0; i< rm.size();i++) 
       {
           map.put(rm.get(i).getTypeid(),rm.get(i));
        }
       request.setAttribute("NewsType", map);
       request.getAttribute("NewsType");
 %>
 查询新闻类别
 <c:forEach var="s" items="${NewsType}">


<br /><br />类别编号：<input type="text" name="typeid" size="20" value="${s.value.typeid} " /><br/>
类别名称：<input type="text" name="typename" size="20" value="${s.value.typename}" /><br/>

<a href="${pageContext.request.contextPath}/servlet/SelNewsTypeServlet?id=${s.value.typeid}&dothing=renew"><input type="button" name="rs" value="修改" /></a>
<a href="${pageContext.request.contextPath}/servlet/SelNewsTypeServlet?id=${s.value.typeid}&dothing=del"><input  type="button" name="sm" value="删除" /></a><br /><br />
 </c:forEach> 

	
</body>
</html>