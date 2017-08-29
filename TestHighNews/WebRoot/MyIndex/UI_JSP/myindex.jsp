<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

    <%@ page import="java.util.*" %>


 <%@ page import="control.*" %>
 <%@ page import="Businesses.*" %>
  <%@ page import="entity.*" %>
  <%@ page import="util.*" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <jsp:useBean id="findall" scope="page" class="Businesses.SelectNews">
  <jsp:setProperty name="findall" property="*" />   
 </jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<link href="<%=request.getContextPath()%>/MyIndex/css/style.css" rel="stylesheet" type="text/css" /> 
<head>
<title>主页面</title>

</head>


 <title>交流空间</title>

 <script type="text/javascript">
 window.onload=function(){
 var banner=document.getElementById('banner'),
  pic=document.getElementById('pic').getElementsByTagName("li"),
  list=document.getElementById('list').getElementsByTagName('li'),
  index=0,
  timer=null;
 
  // 定义并调用自动播放函数
 timer = setInterval(autoPlay, 4000);
 
  // 鼠标划过整个容器时停止自动播放
 banner.onmouseover = function () {
  clearInterval(timer);
 }
 
  // 鼠标离开整个容器时继续播放至下一张
 banner.onmouseout = function () {
  timer = setInterval(autoPlay, 4000);
 }
  // 遍历所有数字导航实现划过切换至对应的图片
 for (var i = 0; i < list.length; i++) {
  list[i].onmouseover = function () {
  clearInterval(timer);
  index = this.innerText - 1;
  changePic(index);
  };
 };
 
 function autoPlay () {
  if (++index >= pic.length) index = 0;
  changePic(index);
 }
 
  // 定义图片切换函数
 function changePic (curIndex) {
  for (var i = 0; i < pic.length; ++i) {
  pic[i].style.display = "none";
  list[i].className = "";
  }
  pic[curIndex].style.display = "block";
  list[curIndex].className = "on";
 }
 
 };
 
 </script>
 </head>

 <body>
<div class="all">
<div class="top">
<ul>
<li><a href="<%=request.getContextPath()%>/MyIndex/UI_JSP/adminlogin.jsp">服务后台</a></li>
<li><a href="#">趣味问答</a></li>
<li><a href="#">真情反馈</a></li>
<li><a href="#">更多资源</a></li>
</div>
<div class="clear"></div>
<div class="header">
   <div class="logo"> <img src="<%=request.getContextPath()%>/MyIndex/img/mainimages/logo.jpg" alt="logo" /> </div>
   <div class="menu">
    <ul>
       <li class="li_line"></li>
       <li> <a href="#" class="menua_hover">热点</a></li>
       <li class="li_line"></li>
       <li><a href="#" class="menua_hover">体育</a></li>
       <li class="li_line"></li>
       <li><a href="#" class="menua_hover">科技</a></li>
       <li class="li_line"></li>
       <li><a href="#" class="menua_hover">社会</a></li>
       <li class="li_line"></li>
       <li><a href="#" class="menua_hover">搞笑</a></li>
       <li class="li_line"></li>
       <li><a href="#" class="menua_hover">更多</a></li>
       <li class="li_line"></li>
     </ul>
  </div>
 </div>
<div class="clear"></div>

<div class="banner" id='banner'>
   <ul id="pic">
    <li><img src="<%=request.getContextPath()%>/MyIndex/img/mainimages/news_banner4.jpg" alt=""></li>
    <li><img src="<%=request.getContextPath()%>/MyIndex/img/mainimages/news_banner5.jpg" alt=""></li>
    <li><img src="<%=request.getContextPath()%>/MyIndex/img/mainimages/news_banner6.jpg" alt=""></li>
  </ul>
   <ol id="list">
    <li class="on">1</li>
    <li>2</li>
    <li>3</li>
  </ol>
 </div>
<div class="clear"></div>
<div class="content">
<div class="news">
   <dl>
    <dd>NEWS</dd>
    <dt>more</dt>
  </dl>
   <div class="clear"></div>
   <ul>
   <li>
   <c:if test="${empty pagebean }">
   <% 
        QueryInfo info = WebUtils.request2Bean(request, QueryInfo.class); 
		ListNewsService service = new ListNewsService();
		PageBean bean = service.pageQuery(info);
		request.setAttribute("pagebean", bean);
		request.getAttribute("pagebean");
    %>  
   </c:if>
   <c:forEach var="s" items="${pagebean.list}">
  	<a class="news_a" href="${pageContext.request.contextPath}/servlet/FindNewsServlet?id=${s.newsid}&dothing=show"><img style="border:5px solid black" src="<%=request.getContextPath() %>${s.newspic }" alt="" />${s.newstitle } ${s.content } </a><br/>
  	</c:forEach>
  
  	
     <script type="text/javascript">
    	function gotopage(currentpage){  	
    		var pagesize = document.getElementById("pagesize").value;
    		window.location.href = '${pageContext.request.contextPath}/servlet/ListNewsServlet?currentpage=' + currentpage + '&pagesize=' + pagesize;
    	}
    </script>
    
    共[${pagebean.totalrecord }]条记录,
    每页<input type="text" id="pagesize" value="${pagebean.pagesize }" onchange="gotopage(${pagebean.currentpage })" style="width: 30px" maxlength="2">条,
    共[${pagebean.totalpage }]页,
    当前[${pagebean.currentpage }]页
    &nbsp;&nbsp;&nbsp;
    <a href="javascript:void(0)" onclick="gotopage(${pagebean.previouspage })">上一页</a>
	    <c:forEach var="pagenum" items="${pagebean.pagebar}">
	    	<c:if test="${pagenum==pagebean.currentpage}">
	    		<font color="red">${pagenum }</font>
	    	</c:if>
	    	
	    	<c:if test="${pagenum!=pagebean.currentpage}">
	    		<a href="javascript:void(0)" onclick="gotopage(${pagenum })">${pagenum }</a>
	    	</c:if>
	    </c:forEach>
    <a href="javascript:void(0)" onclick="gotopage(${pagebean.nextpage })">下一页</a>
    <input type="text" id="pagenum" style="width: 30px" />
    <input type="button" value=" GO " onclick="gotopage(document.getElementById('pagenum').value)"  />
   </li>
   <%--要列出5条新闻 ，是有ListNewsServlet处理列出来，而点击链接时就交由FindNewsServlet来处理，跳转到页面listnews.jsp--%>
  </ul>
 </div>
</div>
</body>
</html>