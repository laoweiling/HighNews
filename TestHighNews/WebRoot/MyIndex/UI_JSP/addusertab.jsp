<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加用户</title>
</head>
<body >

<form action="${pageContext.request.contextPath}/servlet/AddUsersServlet" method="post">
增加用户<br/><br/>
用户名称：<input type="text" name="username" size="20" /><br/>
用户密码：<input type="text" name="userpwd" size="20" /><br/>
用户等级：<input type="text" name="userleval" size="20" /><br/><br/>

<input type="reset" name="rs" value="重写" />
<input type="submit" name="sm" value="添加" />
</form>
	
</body>
</html>