<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除用户</title>
</head>
<body >
<%
request.getAttribute("map");
 %>
 删除用户<br/>
<c:forEach var="entry" items="${map}">
<form action="${pageContext.request.contextPath}/servlet/DelUsersServlet" method="post">
用户编号：<input type="text" name="typeid" size="20" readonly="readonly" value="${entry.value.userid }" /><br/>
用户名称：<input type="text" name="typename" size="20" value="${entry.value.username }"/><br/>
用户密码：<input type="text" name="typename" size="20" value="${entry.value.userpwd }"/><br/>
用户等级：<input type="text" name="typename" size="20" value="${entry.value.userleval }"/><br/>
<button type="reset" >重写</button>
<button type="submit" onclick="delsuccess();" >删除</button>
</form>
</c:forEach>
</body>
<script type="text/javascript">
    function delsuccess()
    {
        alert("删除成功！");
    }
</script>
</html>