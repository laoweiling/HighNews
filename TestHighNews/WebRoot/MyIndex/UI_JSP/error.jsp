<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en-US"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>404ERROR</title>
    <style>
    html,body,head,div,p,a{margin: 0;padding: 0;}
.body-bg{background-color: #dff1f4;}
.main{width:700px;overflow:hidden;height:542px;margin:20px auto;background:url('<%=basePath %>MyIndex/img/errorimg/error-bg.png') no-repeat 0 0;}
.title{font-size: 14px;font-weight: bold;margin: 254px 0 0 218px;color: #d3d3d3;}
.btn{
	display:block;
	background:url('<%=basePath %>MyIndex/img/errorimg/error-btn.png') no-repeat 0 0;
	width: 145px;
	height: 45px;
	font-size: 14px;
	margin: 95px 0 0 270px;
	line-height: 43px;
	color: #fff;
	font-weight: bold;
	text-align: center;
	text-decoration: none;}
    
    </style>
   
</head>
<body class="body-bg" >
<div class="main">
    <p class="title">非常抱歉，您要查看的页面没有办法找到</p>
    <a href="<%=request.getContextPath()%>/MyIndex/UI_JSP/adminlogin.jsp"  class="btn">返回登录界面</a>
</div>
</body></html>