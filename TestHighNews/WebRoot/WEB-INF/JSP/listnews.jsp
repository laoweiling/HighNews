<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>详细新闻列表</title>
</head>
<body style="text-align: center">
    
    <h1>新闻页面</h1>
    
    <table width="70%" border="1">
    	<tr>
    		<td>标题</td>
    		<td>操作</td>
    		
    	</tr>
    	<c:forEach var="entry" items="${map}">
    		<tr>	
    		   <td>${entry.value.title }</td>
	    		<td>
	    			<a href="${pageContext.request.contextPath }/servlet/FindNewsServlet?id=${entry.value.id}" target="_blank">阅读</a>
	    		</td>
    		</tr>
    	</c:forEach>
    </table>
    
  </body>
</html>