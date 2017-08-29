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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>主要内容部分</title>
</head>
<body>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	
	font-size: 12px;
}
a{text-decoration:none;color: #03515d;}
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
-->
</style>

<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：</td>
        </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="60"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
                      <input type="checkbox" name="checkbox62" value="checkbox" />
                    </div></td>
                    <td class="STYLE1"><div align="center">全选</div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/22.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><a href="<%=request.getContextPath()%>/MyIndex/UI_JSP/addtab.jsp?">新增</a></div></td>
                  </tr>
                </table></td>
                <td width="60"><table width="90%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/33.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><a href="${pageContext.request.contextPath}/servlet/FindNewsServlet?id=${s.id }">修改</a></div></td>
                  </tr>
                </table></td>
                <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/11.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><div align="center"><a href="<%=request.getContextPath()%>/MyIndex/UI_JSP/deletetab.jsp?id=${s.id }">删除</a></div></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            <td width="3%" height="22" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/bg.gif" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox" value="checkbox" />
            </div></td>
            <td width="3%" height="22" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">序号</span></div></td>
            <td width="12%" height="22" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">题目</span></div></td>
            <td width="14%" height="22" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">作者</span></div></td>
            <td width="14%" height="22" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">发表时间</span></div></td>
            <td width="18%" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">类别编号</span></div></td>
            <!--  <td width="23%" height="22" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">内容</span></div></td>-->
            <td width="15%" height="22" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/bg.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
          </tr>
          
	        <% 
	        QueryInfo info = WebUtils.request2Bean(request, QueryInfo.class); 
			ListNewsService service = new ListNewsService();
			PageBean bean = service.pageQuery(info);
			request.setAttribute("pagebean", bean);
			request.getAttribute("pagebean");
	        %>  
	     <c:forEach var="s" items="${pagebean.list}">
  	        <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox2" value="checkbox" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
              <div align="center">${s.newsid } </div>
            </div></td>
            
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${s.newstitle}</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${s.author }</span></div></td>
            <td bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${s.pubtime }</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${s.typeid }</span></div></td>
             <!--<td height="20" bgcolor="#FFFFFF"><div align="center"><div  class="shenglue"><span class="STYLE1"><a href="#">${s.content }</a></span></div></div></td> -->
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"><img src="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/edt.gif" width="16" height="16" /><a href="${pageContext.request.contextPath}/servlet/FindNewsServlet?id=${s.newsid }&dothing=renew">编辑</a>&nbsp; &nbsp;<img src="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/del.gif" width="16" height="16" /><a href="${pageContext.request.contextPath}/servlet/FindNewsServlet?id=${s.newsid }&dothing=del">删除</a></span></div></td>
          </tr>
         </c:forEach> 
        </table></td>
        <td width="8" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="35" background="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
		            <td class="STYLE4">&nbsp;&nbsp;共有[${pagebean.totalrecord }] 条记录，当前第[${pagebean.currentpage }] 页， 共[${pagebean.totalpage }]页， 每页<input type="text" id="pagesize" value="${pagebean.pagesize }" onchange="gotopage(${pagebean.currentpage })" style="width: 30px" maxlength="2">条</td>
		            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
		                <tr>
		                     <script type="text/javascript">
		    	function gotopage(currentpage){  	
		    		var pagesize = document.getElementById("pagesize").value;
		    		window.location.href = '${pageContext.request.contextPath}/MyIndex/UI_JSP/admintab.jsp?currentpage=' + currentpage + '&pagesize=' + pagesize;
		    	}
		    </script>
		  
		    <a class="STYLE4" href="javascript:void(0)" onclick="gotopage(${pagebean.previouspage })">上一页</a>&nbsp;&nbsp;
			    <c:forEach var="pagenum" items="${pagebean.pagebar}">
			    	<c:if test="${pagenum==pagebean.currentpage}">
			    		<font class="STYLE4" color="red">${pagenum }</font>&nbsp;
			    	</c:if>
			    	
			    	<c:if test="${pagenum!=pagebean.currentpage}">
			    		<a class="STYLE4" href="javascript:void(0)" onclick="gotopage(${pagenum })">${pagenum }</a>&nbsp;
			    	</c:if>
			    </c:forEach>
		    <a class="STYLE4" href="javascript:void(0)" onclick="gotopage(${pagebean.nextpage })">下一页</a>&nbsp;&nbsp;
		    <input type="text" id="pagenum" style="width: 30px"> 
		    <input type="button" value=" GO " onclick="gotopage(document.getElementById('pagenum').value)"  />
           
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="<%=request.getContextPath()%>/MyIndex/img/admin_tabimages/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
