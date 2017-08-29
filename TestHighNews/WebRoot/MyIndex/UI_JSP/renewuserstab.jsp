<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新用户</title>
</head>
<body >
<%
request.getAttribute("map");
 %>

<form action="${pageContext.request.contextPath}/servlet/RenewUsersServlet" method="post">

<c:forEach var="entry" items="${map}">    		
    	
更新用户<br/><br/> <!--  readonly="readonly"-->
用户编号：<input type="text" name="typeid" size="20" value="${entry.value.userid }" /><br/>
用户名称：<input type="text" name="username" size="20" value="${entry.value.username }"/><br/>
用户密码：<input type="text" name="userpwd" size="20" value="${entry.value.userpwd }"/><br/>
用户等级：<input type="text" name="userleval" size="20" value="${entry.value.userleval }"/><br/>

</c:forEach>

<button type="reset" >重写</button>
<button type="submit" >更新</button>

</form>

</body>
</html>