<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆界面</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/MyIndex/css/adminlogin.css"/>

</head>

<html>
<body>
		<div id="container">
			<div id="image">
					<form action="${pageContext.request.contextPath }/servlet/LoginServlet" method="post">
						<div class="input">
							用户：<input class="inputtext" type="text" name="admin" />
						</div>
						<div class="input">
							密码：<input class="inputtext" type="password" name="password" />
						</div>
						<div id="btn">
							
							<input class="btn" type="submit" value="登陆" />
						</div>
					</form>
			
			</div>
		</div>
	

</body>
</html>