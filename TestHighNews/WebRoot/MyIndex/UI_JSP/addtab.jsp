<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加新闻页面</title>
</head>
<body >
<!--enctype="multipart/form-data"  -->

发表新闻<br/><br/>
此处分为两步处理，先上传图片确认之后，再进行下面信息的操作。
<form method="post" action="${pageContext.request.contextPath}/servlet/uploadServlet" enctype="multipart/form-data">
     选择一个图片:
    <input type="file" name="uploadFile" />
   
     <input type="submit" value="上传" />
</form>

<form action="${pageContext.request.contextPath}/servlet/AddNewsServlet"  method="post">
已上传热图：<img src="<%=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() %>/<%=(String) session.getAttribute("picPath") %>"  style="width:50px;height:50px;"/> 
<br/>新闻作者：<input type="text" name="author" size="20" /><br/>
新闻题目：<input type="text" name="title" size="20" /><br/>
类别编号：<input type="text" name="typeid" size="20" /><br/><br/>
<textarea style="width:90%" id="container" name="content" type="text/plain">
 
</textarea><br/><br/>

    <!-- 配置文件 -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/utf8-jsp/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/utf8-jsp/ueditor.all.js"></script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
        var ue = UE.getEditor('container');
    </script>
<input type="reset" name="rs" value="重写新闻" />
<input type="submit" name="sm" value="添加新闻" />
</form>
	
</body>
</html>