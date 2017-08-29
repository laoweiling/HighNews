<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>


     <%@ page import="java.util.*" %>
<%@ page import="control.*" %>
 <%@ page import="Businesses.*" %>
  <%@ page import="entity.*" %>
  <%@ page import="util.*" %>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <jsp:useBean id="findall" scope="page" class="Businesses.SelectNews">
  <jsp:setProperty name="findall" property="*" />   
 </jsp:useBean>
<html >
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>highNews</title>
<link href="<%=request.getContextPath()%>/MyIndex/1225/css/bootstrap.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/MyIndex/1225/css/bootstrap-theme.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/MyIndex/1225/css/style.css" rel="stylesheet">
<style><!--日历的样式-->
*{margin:0; padding:0;}
ul,li{list-style:none;}
body{font-weight:bold; font-family:"微软雅黑", "新宋体", serif, arial;}
#calendar{width:280px; overflow:hidden; border:1px solid #dadada; border-radius:3px;}
.c_header{width:100%; height:60px; background-color:#83d8e7; background-image:linear-gradient(to bottom, #abe5ef, #83d8e7); position:relative;}
.c_header h1{font-size:16px; height:30px; line-height:30px; text-align:center; color:#ffffff;}
.c_header span{width:20px; height:20px; line-height:20px; color:#ffffff; text-align:center; position:absolute; top:5px; border-radius:50%; background-image:linear-gradient(to bottom, #83d8e7, #abe5ef); cursor:pointer;}
.c_header span:hover{background:#83d8e7;}
.c_header span.pre{left:10px;}
.c_header span.next{right:10px;}
.c_header ol{position:absolute; left:0; top:30px; overflow:hidden;}
.c_header ol li{float:left; color:#ffffff; width:40px; height:30px; line-height:30px; text-align:center;}
.c_body{overflow:hidden;}
.c_body li{width:38px; height:38px; line-height:38px; font-size:16px; text-align:center; float:left; border:1px solid #ffffff; color:#333;}
.c_body li.active{border:1px solid #dadada; background-color:#83d8e7; color:#fff;}
.c_body li.grey{color:#999;}
.shenglue  a{
      padding-left:10px;
	  overflow:hidden;
	  text-overflow:ellipsis; /*实现省略号；*/
	  white-space:nowrap;
	  width:290px;
	  display:block;
	  color:black;
	 
     text-overflow:ellipsis;



	  }
</style><!--日历的样式-->
<script type="text/javascript" src="http://cms.iyuba.com/web/HtmlCreate/doc!randomGrab"></script><script type="text/javascript" src="http://cms.iyuba.com/web/HtmlCreate/doc!hardweight?essayids=52235,52209,52165,52134,52059,52050,51947,51748,51748,51717,51551,51411,51362,51333,51255,51237,"></script>
</head>
<body onLoad="loading_cookie()">
<div id="page_header"> 
  
  <!-- 全站导航 -->
  <div class="navbar navbar-default navbar-fixed-top global-navbar" role="navigation">
    <div class="container" style="position:relative;"> 
      <!-- 导航头 -->
      <div class="navbar-header"> <a href="<%=request.getContextPath()%>/MyIndex/UI_JSP/myindex2.jsp" ><span style=" vertical-align:middle; font-size:30px; margin-left:8px; margin-top:20px;">欢迎来highNews！</span></a>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".global-navbar-collapse"> <span class="sr-only">显示导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      </div>
      <!-- /导航头 --> 
      <!-- 登录信息 -->
      <div id="user_login" class="pull-right">
        <input id="useridcont" type="hidden" value="">
        <p id="userinfo" style="display:none"><span style="display:none" id="spa"></span><img src="" alt="..." style="position:relative;top:2px;width:25px;height:25px" id="imgsrc"><a id="toselfpage" href=""></a><span class="spliter">|</span><a id="zhuxiao" class="navbar-link" href="javascript:;" onClick="logout()">注销</a> <a href="" class="navbar-link" style="margin-left:20px;" target="_blank">后台 </p>
        <p id="logininfo"><span id="logreg" style="display: inline;"><a href="javascript:goLogin();" class="navbar-link">登录</a><span class="spliter">|</span><a href="" target="_blank" class="navbar-link">注册</a></span> <a href="<%=request.getContextPath()%>/MyIndex/UI_JSP/adminlogin.jsp" class="navbar-link" style="margin-left:20px;" target="_blank">后台 </p>
      </div>
      <!-- /登录信息 --> 
    </div>
  </div>
  <!-- /全站导航 -->
  <div id="divLogin" style="background-color:#ffffff;display:none;position:absolute;z-index:200;left:350px;top:150px;">
    <iframe id="friendframe" name="loginWindow" marginheight="0" marginwidth="0" frameborder="0" style="width:400px;height:300px;" src=""> </iframe>
  </div>
</div>
</div>
</div>
<!-- /招牌 --> 

<!-- 主导航 -->
<div class="navbar navbar-inverse main-navbar">
  <div class="container"> 
    <!-- 导航头 -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".main-navbar-collapse"> <span class="sr-only">显示导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="javascript:;" data-toggle="collapse" data-target=".main-navbar-collapse">网站导航</a> </div>
    <!-- /导航头 --> 
    <!-- 导航链接 -->
    <div class="navbar-collapse collapse main-navbar-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="">首&nbsp;页</a></li>
        <li class="xian"></li>
        <li><a href="">校园</a></li>
        <li class="xian"></li>
        <li><a href="">娱乐</a></li>
        <li class="xian"></li>
        <li><a href="">科技</a></li>
        <li class="xian"></li>
        <li><a href="">体育</a></li>
        <li class="xian"></li>
        <li><a href="">经济</a></li>
        <li class="xian"></li>
        <li><a href="">职场</a></li>
        <li class="xian"></li>
        <li><a href="">政治</a></li>
        <li class="xian"></li>
        <li><a href="">文化</a></li>
        <li class="xian"></li>
        
      </ul>
    </div>
    <!-- /导航链接 --> 
  </div>
</div>

<!-- /主导航 -->
</div>
<!-----主体开始------>
<div id="page_body">
  <div class="container">
    <div id="content" class="row"> 
   
      <!-----主体左边------------------------------------------------------------------------------------------------------------------------->
      <div class="col-md-8">
        <div class="c_left3"><a href="/essay/2016/12/23/52235.html" target="_blank" style="color:#fff">
<!-- JiaThis Button BEGIN -->
<div class="jiathis_style_32x32" style="float:right;margin-top:10px; margin-bottom:10px;">
	<a class="jiathis_button_qzone"></a>
	<a class="jiathis_button_tsina"></a>
	<a class="jiathis_button_tqq"></a>
	<a class="jiathis_button_weixin"></a>
	<a class="jiathis_button_renren"></a>
	<a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
	<a class="jiathis_counter_style"></a>
</div>
<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
<!-- JiaThis Button END -->
<hr size="5" color="#FFCC33">
<div class="padding">
<c:forEach var="entry" items="${map}">
    		
<h1>${entry.value.newstitle }</h1>
<div class="fff">【来源】highNews【发布时间】${entry.value.pubtime }【作者】${entry.value.author }</div>
<hr size="2" color="#CCCCCC">
  <p>${entry.value.content }</p>
</div>
<!-- UY BEGIN -->
</c:forEach>
<div id="uyan_frame"></div>
<script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js"></script> 
        </div>
      </div>
      <!-----主体右边---------------------------------------------------------------------------------------------------------------------------->
      <!-----主体右边------>
      <div class="col-md-4">
        <div class="c_right3">
          <div class="cr1_top">
            <div id="carousel-slider" class="carousel slide" data-ride="carousel"> 
              <!-- Wrapper for slides -->
              <div class="carousel-inner" id="pic">
                <div class="item"><a href="/essay/2016/01/26/44431.html" target="_blank" title="澳大利亚领导人们开始推动共和运动" alt="澳大利亚领导人们开始推动共和运动"></a></div>
              </div>
              
              <!-- Indicators -->
              <div class="slider_title">
                <ol class="carousel-indicators">
                  <li data-target="#carousel-slider" data-slide-to="0" class=""></li>
                  <li data-target="#carousel-slider" data-slide-to="1" class=""></li>
                  <li data-target="#carousel-slider" data-slide-to="2" class=""></li>
                  <li data-target="#carousel-slider" data-slide-to="3" class=""></li>
                </ol>
              </div>
            </div>
            <ul class="list-unstyled" id="img_title">
              <li><a href="/essay/2016/01/26/44431.html" target="_blank" title="澳大利亚领导人们开始推动共和运动" alt="澳大利亚领导人们开始推动共和运动"><img src="http://news.iyuba.com/images/dian.png">澳大利亚领导人们开始推动共和运动</a></li>
            </ul>
          </div>
          <div class="c_right4">
            <h5 class="ph"><span class="span_on">日榜</span><span>周榜</span></h5>
            <div class="cr4_bot">
              <ul class="list-unstyled" id="day">
              </ul>
              <ul class="list-unstyled" style="display:none;">
                <li class="odd li_on"><a href="/essay/2016/12/13/51728.html" target="_blank" title="Can’t Figure Out What You Feel Like Eating? There’s an App For That">
                  <p class="p1"><span class="sp1">01</span><span class="sp3">Can’t Figure Out What You Feel Like Eating? There’s an App For That</span><span class="sp2">12.19</span></p>
                  <strong>不知道吃什么？这款App可以帮忙！</strong></a></li>
              </ul>
            </div>
            <!--日历-->
   <div id="calendar" style="margin-left:5px;">
    <div class="c_header">
        <h1></h1>
            <span class="pre">&lt;</span>
        	<span class="next">&gt;</span>
            <ol>
            	<li>日</li>
            	<li>一</li>
            	<li>二</li>
            	<li>三</li>
            	<li>四</li>
            	<li>五</li>
            	<li>六</li>
            </ol>
        </div>
        <ul class="c_body">
        	<li></li><li></li><li></li><li></li><li></li><li></li><li></li>
        	<li></li><li></li><li></li><li></li><li></li><li></li><li></li>
        	<li></li><li></li><li></li><li></li><li></li><li></li><li></li>
        	<li></li><li></li><li></li><li></li><li></li><li></li><li></li>
        	<li></li><li></li><li></li><li></li><li></li><li></li><li></li>
        	<li></li><li></li><li></li><li></li><li></li><li></li><li></li>
        </ul>
    </div>
    <!--日历--> 
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="essayids" style="display:none;">52235,52209,52165,52134,52059,52050,51947,51748,51748,51717,51551,51411,51362,51333,51255,51237,</div>
<!--- ######## /网页底部 #########--> 

<script type="text/javascript" src="<%=request.getContextPath()%>/MyIndex/1225/js/jquery-1.11.0.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/MyIndex/1225/js/bootstrap.min.js"></script> 
<script type="text/javascript">
  function setHard(data){
  
  	var jsondata=eval('('+ data +')'); 
	for(var i=0;i<jsondata.length;i++){
  		$('#a'+jsondata[i].id).html(jsondata[i].n);
  	}
  }
  function randomGrab(data){
  	$('#pic').html(data.img);
  	$('#img_title').html(data.title);
  	$('#tag_').empty().html(data.tag);
  }
  function inithtml(){
  	var userId=$('#useridcont').val();
		if(userId!=''&&userId!=null){
			try{
			$.getJSON("http://cms.iyuba.com/web/HtmlCreate/doc!readInfo?callback=?",{'userid':userId},function(data){
				
				$('#wpm').html(data.wpm);
				$('#wc').html(data.wordcount);
				$('#ec').html(data.essaycount);
			});
			}catch (err) {
				
			}
		}
		
  }
	$(document).ready(function(e) {
		
		var url0="http://cms.iyuba.com/web/HtmlCreate/doc!randomGrab";
		var scr0=document.createElement("script");
		scr0.setAttribute('type','text/javascript');
		scr0.setAttribute('src',url0);
		document.getElementsByTagName('head')[0].appendChild(scr0);
		
		var essayids=$('#essayids').text();
		var url="http://cms.iyuba.com/web/HtmlCreate/doc!hardweight?essayids="+essayids;
		var scr=document.createElement("script");
		
		scr.setAttribute('type','text/javascript');
		scr.setAttribute('src',url);
		document.getElementsByTagName('head')[0].appendChild(scr);
		
		
		
		$.getJSON("http://cms.iyuba.com/web/HtmlCreate/doc!paihang?callback=?",{'time':'day'},function(data){
				$('#day').empty().html(data);
				$('.c_right4 ul li').hover(function(){
					$(this).addClass('li_on').siblings().removeClass('li_on');	
				});
		});
	$('.wx').hover(function(){
		$('#wx').show();
	},function(){
	$('#wx').hide();	
	});	
	$('.wb').hover(function(){
		$('#wb').show();
	},function(){
	$('#wb').hide();	
	});
	$('.ph span').click(function(){
	 $(this).addClass('span_on').siblings().removeClass('span_on');
	 var index=$(this).index();
	 $('.cr4_bot ul').eq(index).show().siblings('ul').hide();	
	});
	$('.c_right4 ul li').hover(function(){
	 $(this).addClass('li_on').siblings().removeClass('li_on');	
	})
  });
	</script>
    
    <script>
window.onload=function()
{
	var oCal=document.getElementById("calendar");
	var oTitle=oCal.getElementsByTagName("h1")[0];
	var oUl=oCal.getElementsByTagName("ul")[0];
	var aLi=oUl.getElementsByTagName("li");
	var oPre=oCal.getElementsByTagName("span")[0];
	var oNext=oCal.getElementsByTagName("span")[1];
	var oNow=new Date();
	var nowYear=oNow.getFullYear();
	var nowMonth=oNow.getMonth();
	var nowDate=oNow.getDate();
	var nowDay=oNow.getDay();
	var nowTime=oNow.getTime();
	var tMonth=nowMonth;//作为日历里更改的那个Month
	function createCalendar(tMonth)
	{
		//根据传入的月份重新算时间
		var oDate=new Date();
		oDate.setMonth(tMonth);
		oDate.setDate(1);
		var iYear=oDate.getFullYear();
		var iMonth=oDate.getMonth();
		var iDay=oDate.getDay();
		oTitle.innerHTML=iYear+"年"+(iMonth+1)+"月";
		//初始化一下
		for(var i=0;i<aLi.length;i++)
		{
			aLi[i].innerHTML="";
			aLi[i].style.height="40px";
			aLi[i].className="";
		}
		var iSum=0;	//存本月天数
		var bLeap=false;//是否是闰年
		if(iYear%4==0 && iYear%100!==0 || iYear%400==0) bLeap=true;
		switch(iMonth+1)
		{
			case 1:
			case 3:
			case 5:
			case 7:
			case 8:
			case 10:
			case 12:
				iSum=31;
				break;
			case 4:
			case 6:
			case 9:
			case 11:
				iSum=30;
				break;
			case 2:
				if(bLeap) iSum=29;
				else iSum=28;
				break;
		}
		for(var i=1;i<=iSum;i++)
		{
			aLi[iDay].innerHTML=i;
			iDay++;
		}
		
		for(var i=0;i<aLi.length;i++)
		{
			if(aLi[i].innerHTML==nowDate && iYear==nowYear && iMonth==nowMonth)
			{
				aLi[i].className="active";
			}
			else if((aLi[i].innerHTML<nowDate && iMonth==nowMonth && iYear==nowYear) ||
				iMonth<nowMonth && iYear==nowYear || 
				iYear<nowYear)
			{
				aLi[i].className="grey";
			}
		}
		
		//把没字的格子折叠起来
		for(var i=0;i<aLi.length;i++)
		{
			if(aLi[i].innerHTML=="")
			{
				aLi[i].style.height="0px";
			}
		}
	}
	createCalendar(tMonth);
	oPre.onclick=function()
	{
		createCalendar(--tMonth);
	};
	
	oNext.onclick=function()
	{
		createCalendar(++tMonth);
	};
};
</script>
</div>
</body>
</html>