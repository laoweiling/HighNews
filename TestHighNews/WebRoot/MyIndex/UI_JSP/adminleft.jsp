<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理界面左部</title>
</head>

<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.STYLE1 {
	font-size: 12px;
	color: #FFFFFF;
}
.STYLE3 {
	font-size: 12px;
	color: #033d61;
}
a{
  text-decoration:none;
  color: #033d61;
}
-->
</style>
<style type="text/css">
.menu_title SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #ffffff; POSITION: relative; TOP: 2px 
}
.menu_title2 SPAN {
	FONT-WEIGHT: bold; LEFT: 3px; COLOR: #FFCC00; POSITION: relative; TOP: 2px
}

</style>
<script>
var he=document.body.clientHeight-105
document.write("<div id=tt style=height:"+he+";overflow:hidden>")
</script>

<table width="165" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="28" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_40.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="19%">&nbsp;</td>
        <td width="81%" height="20"><span class="STYLE1">管理菜单</span></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top"><table width="151" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_47.gif" id="imgmenu1" class="menu_title" onMouseOver="this.className='menu_title2';" onClick="showsubmenu(1)" onMouseOut="this.className='menu_title';" style="cursor:pointer"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="18%">&nbsp;</td>
                <td width="82%" class="STYLE1">新闻管理中心</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_51.gif" id="submenu1">
			 <div class="sec_menu" >  
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="16%" height="25"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                    <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="${pageContext.request.contextPath }/servlet/ResourceServlet?method=add" target="I2"><span class="STYLE3"  >添加新闻</span></a></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="23"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                    <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="${pageContext.request.contextPath }/servlet/ResourceServlet?method=renew" target="I2"><span class="STYLE3" >更新新闻</span></a></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="23"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                    <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="${pageContext.request.contextPath }/servlet/ResourceServlet?method=del" target="I2"><span class="STYLE3" >删除新闻</span></a></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="23"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                    <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="${pageContext.request.contextPath }/servlet/ResourceServlet?method=sel" target="I2"><span class="STYLE3" >查询新闻</span></a></td>
                        </tr>
                    </table></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td height="5"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_52.gif" width="151" height="5" /></td>
              </tr>
            </table></div></td>
          </tr>
          
        </table></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_47.gif" id="imgmenu2" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(2)" onmouseout="this.className='menu_title';" style="cursor:pointer"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">新闻类别中心</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_51.gif" id="submenu2"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="${pageContext.request.contextPath }/servlet/ResourceNewsTypeServlet?method=add" target="I2"><span class="STYLE3">添加类别</span></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="${pageContext.request.contextPath }/servlet/ResourceNewsTypeServlet?method=renew" target="I2"><span class="STYLE3">更新类别</span></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="${pageContext.request.contextPath }/servlet/ResourceNewsTypeServlet?method=del" target="I2"><span class="STYLE3">删除类别</span></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="<%= request.getContextPath()%>/servlet/ResourceNewsTypeServlet?method=sel" target="I2"><span class="STYLE3">查询类别</span></td>
                              </tr>
                          </table></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_52.gif" width="151" height="5" /></td>
                  </tr>
                </table>
            </div></td>
          </tr>
        </table>          </td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="23" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_47.gif" id="imgmenu3" class="menu_title" onmouseover="this.className='menu_title2';" onclick="showsubmenu(3)" onmouseout="this.className='menu_title';" style="cursor:pointer"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="18%">&nbsp;</td>
                  <td width="82%" class="STYLE1">用户管理中心</td>
                </tr>
            </table></td>
          </tr>
          <tr>
            <td background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_51.gif" id="submenu3" style="DISPLAY: none"><div class="sec_menu" >
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="16%" height="25"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                          <td width="84%" height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="${pageContext.request.contextPath }/servlet/ResourceUsersServlet?method=add" target="I2"><span class="STYLE3">增加用户</span></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="${pageContext.request.contextPath }/servlet/ResourceUsersServlet?method=renew" target="I2"><span class="STYLE3">更新用户</span></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="${pageContext.request.contextPath }/servlet/ResourceUsersServlet?method=del" target="I2"><span class="STYLE3">删除用户</span></td>
                              </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td height="23"><div align="center"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/left.gif" width="10" height="10" /></div></td>
                          <td height="23"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                              <tr>
                                <td height="20" style="cursor:pointer" onmouseover="this.style.borderStyle='solid';this.style.borderWidth='1';borderColor='#7bc4d3'; "onmouseout="this.style.borderStyle='none'"><a href="${pageContext.request.contextPath }/servlet/ResourceUsersServlet?method=sel" target="I2"><span class="STYLE3">查询用户</span></td>
                              </tr>
                          </table></td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td height="5"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_52.gif" width="151" height="5" /></td>
                   </tr>
                </table>
            </div></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="18" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_58.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="18" valign="bottom"><div align="center" class="STYLE3">版本：2016V1.0</div></td>
      </tr>
    </table></td>
  </tr>
</table>
<script>




function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
imgmenu = eval("imgmenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
imgmenu.background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_47.gif";
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
imgmenu.background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_48.gif";
}
}

</script>



