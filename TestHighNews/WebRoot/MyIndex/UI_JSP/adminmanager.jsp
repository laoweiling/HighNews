<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新闻管理界面</title>


</head>

<frameset rows="98,*,8" frameborder="no" border="0" framespacing="0">
  <frame src="<%=request.getContextPath()%>/MyIndex/UI_JSP/admintop.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" />
  <frame src="<%=request.getContextPath()%>/MyIndex/UI_JSP/adminmiddle.jsp" name="mainFrame" id="mainFrame"  />
   <frame src="<%=request.getContextPath()%>/MyIndex/UI_JSP/admindown.jsp" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" />
 
</frameset>
<noframes><body>
</body>
</noframes></html>

