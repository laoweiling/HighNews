<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1, user-scalable=0, minimal-ui" charset="UTF-8">
<link href="${pageContext.request.contextPath}/M1227/mystyle.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/M1227/dropload.css" />
<style>
    .content{
        max-width: 100%;
        margin: 0 auto;
        background-color: #fff;
    }
    .content .item{
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-align:center;
        -webkit-box-align:center;
        box-align:center;
        -webkit-align-items:center;
        align-items:center;
        padding:3.125%;
        border-bottom: 1px solid #ddd;
        color: #333;
        text-decoration: none;
    }
    .content .item img{
        display: block;
        width: 40px;
        height: 40px;
        border:1px solid #ddd;
    }
    .content .item h3{
        display: block;
        -webkit-box-flex: 1;
        -webkit-flex: 1;
        -ms-flex: 1;
        flex: 1;
        width: 100%;
        max-height: 40px;
        overflow: hidden;
        line-height: 20px;
        margin: 0 10px;
        font-size: 1.2rem;
    }
    .content .item .date{
        display: block;
        height: 20px;
        line-height: 20px;
        color: #999;
    }
    .opacity{
        -webkit-animation: opacity 0.3s linear;
        animation: opacity 0.3s linear;
    }
    @-webkit-keyframes opacity {
        0% {
            opacity:0;
        }
        100% {
            opacity:1;
        }
    }
    @keyframes opacity {
        0% {
            opacity:0;
        }
        100% {
            opacity:1;
        }
    }
    </style>
<script type="text/javascript" src="${pageContext.request.contextPath}/M1227/mystyle.js" ></script>
<title>topsearch Demo</title>

</head>

<body>
<div id="fixed_header">
  <div id="navi">
    <ul>
      <li>热点</li>
      <li>体育</li>
      <li>科技</li>
      <li>社会</li>
      <li>搞笑</li>
      <li>更多</li>
    </ul>
  </div>
</div>
<div id="real_header">
  <div id="entry">
    <div id="Head">
      <div class="biaoti">
        <h2 align="center"  style="color:#a2e0ed">highNews</h2>
      </div>
      <span class="icon-search"> </span> </div>
  </div>
  <div id="navi">
    <ul>
      <li>热点</li>
      <li>体育</li>
      <li>科技</li>
      <li>社会</li>
      <li>搞笑</li>
      <li>更多</li>
    </ul>
  </div>
</div>
<div id="tab"> <img class="lunbo" src="${pageContext.request.contextPath}/M1227/img/news_banner1.jpg"/> <img class="lunbo" src="${pageContext.request.contextPath}/M1227/img/news_banner2.jpg"/> <img class="lunbo" src="img/news_banner3.jpg" /> <img class="lunbo" src="img/news_banner4.jpg" /> <img class="lunbo" src="img/news_banner5.jpg"/> <img class="lunbo" src="img/news_banner6.jpg"/> </div>
<div class="imgw"> <img src="${pageContext.request.contextPath}/M1227/img/news_banner1.jpg" alt= "" > </div>
<div class="imgw"> <img src="${pageContext.request.contextPath}/M1227/img/news_banner2.jpg" alt= "" > </div>
<div class="imgw"> <img src="${pageContext.request.contextPath}/M1227/img/news_banner3.jpg" alt= "" > </div>
<div class="imgw"> <img src="${pageContext.request.contextPath}/M1227/img/news_banner4.jpg" alt= "" > </div>
<div class="myline" ></div>
<!--  -------------------------------------------------------------------- -->

<div class="content">
    <div class="lists"></div>
</div>
<!--  -------------------------------------------------------------------- -->
<div class="footer">
  <div class="nav_item"> <span class="icon-home"> </span>
    <p>首页</p>
  </div>
  <div class="nav_item"> <span class="icon-play2"></span>
    <p>播放</p>
  </div>
  <div class="nav_item"> <span class="icon-heart"></span>
    <p>关注</p>
  </div>
  <div class="nav_item"> <span class="icon-user-tie"></span>
    <p>未登录</p>
  </div>
</div>
</body>

<script src="${pageContext.request.contextPath}/M1227/zepto.min.js"></script>
<script src="${pageContext.request.contextPath}/M1227/dropload.js"></script>
<script>

$(function(){
    // 页数
    var page = 0;
    // 每页展示5个
    var size = 5;
    // dropload
    $('.content').dropload({
        scrollArea : window,
        loadDownFn : function(me){
            page++;
            // 拼接HTML
            var result = '';
            $.ajax({
                type: 'GET',
                //url: 'http://ons.me/tools/dropload/json.php?page='+page+'&size='+size,
				//url: '${pageContext.request.contextPath}/M1227/json/more.json',
				//url: '${pageContext.request.contextPath}/MyIndex/UI_JSP/setnewsjason.jsp',
				url:'${pageContext.request.contextPath}/servlet/GetJasonMServlet',
                dataType: 'json',
                success: function(data){
                	console.info(data);
                	data =data.lists;
					console.info(data);
                    var arrLen = data.length;
                    console.info(arrLen);
                    if(arrLen > 0){
                        for(var i=0; i<arrLen; i++){  
                            result +=   '<a class="item opacity" href="${pageContext.request.contextPath}/servlet/FindNewsServlet?id='+data[i].newsid+'&dothing=show1">'
                                            +'<img src="/'+data[i].newspic+'" alt="">'
                                            +'<h3>'+data[i].newstitle+'</h3>'
                                            +'<span class="date">'+data[i].pubtime+'</span>'
                                        +'</a>';
                        }
                        console.info(result);
                    // 如果没有数据
                    }else{
                        // 锁定
                        me.lock();
                        // 无数据
                        me.noData();
                    }
                    // 为了测试，延迟1秒加载
                    setTimeout(function(){
                        // 插入数据到页面，放到最后面
                        $('.lists').append(result);
                        // 每次数据插入，必须重置
                        me.resetload();
                    },1000);
                },
                error: function(xhr, type){
                    alert('Ajax error!');
                    
                    // 即使加载出错，也得重置
                    me.resetload();
                }
            });
        }
    });
});

</script>
</html>
