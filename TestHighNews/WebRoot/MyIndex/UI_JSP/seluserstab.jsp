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
<title>查询用户</title>
</head>
<body >

 查询用户<br />
 用户等级为1是超级用户<br />
用户等级为0是普通用户<br /> 
 <c:forEach var="s" items="${Users}">


<br /><br />用户名称：<input type="text" name="typeid" size="20" value="${s.username} " /><br/>
用户编号：<input type="text" name="typename" size="20" value="${s.userid}" /><br/>
用户密码：<input type="text" name="typename" size="20" value="${s.userpwd}" /><br/>
用户等级：<input type="text" name="typename" size="20" value="${s.userleval}" /><br/>

<a href="${pageContext.request.contextPath}/servlet/SelUsersServlet?id=${s.userid}&dothing=renew"><input type="button" name="rs" value="修改" /></a>
<a href="${pageContext.request.contextPath}/servlet/SelUsersServlet?id=${s.userid}&dothing=del"><input  type="button" name="sm" value="删除" /></a><br /><br />
 </c:forEach> 

	
</body>
</html>