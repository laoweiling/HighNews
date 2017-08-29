<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理界面的头部</title>
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
.STYLE2 {font-size: 9px}
.STYLE3 {
	color: #033d61;
	font-size: 12px;
}
-->
</style></head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="70" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="24"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="24" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_03.gif">&nbsp;</td>
            <td width="505" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_04.gif">&nbsp;</td>
            <td>&nbsp;</td>
            <td width="21"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_07.gif" width="21" height="24"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="38"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" height="38" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/newsmain.gif">&nbsp;</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="77%" height="25" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                 
                </table></td>
                <td width="220" valign="bottom"  nowrap="nowrap"><div align="right"><span class="STYLE1"><span class="STYLE2">■</span> 今天是：<%=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) %></span></div></td>
              </tr>
            </table></td>
            <td width="21"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_11.gif" width="21" height="38"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="8" style=" line-height:8px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="270" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_29.gif" style=" line-height:8px;">&nbsp;</td>
            <td width="505" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_30.gif" style=" line-height:8px;">&nbsp;</td>
            <td style=" line-height:8px;">&nbsp;</td>
            <td width="21" style=" line-height:8px;"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_31.gif" width="21" height="8"></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="28" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_36.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="177" height="28" background="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_32.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="20%"  height="22">&nbsp;</td>
            <td width="59%" valign="bottom"><div align="center" class="STYLE1">当前用户：admin</div></td>
            <td width="21%">&nbsp;</td>
          </tr>
        </table></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="65" height="28"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="23" valign="bottom"><table width="58" border="0" align="center" cellpadding="0" cellspacing="0">
                 
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="21"><img src="<%=request.getContextPath()%>/MyIndex/img/adminimages/main_37.gif" width="21" height="28"></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>