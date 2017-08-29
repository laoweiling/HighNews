<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>详细新闻页面</title>
</head>
<body >
      <table width="70%" border="1">
    	<tr>
    		<td>内容</td>
    		
    		
    		
    	</tr>
    	<c:forEach var="entry" items="${map}">
    		<tr>	
    		   <td>${entry.value.content }</td>
	    
    		</tr>
    	</c:forEach>
    	
    </table>
   
  </body>
</html>