<%@ page language="java" import="java.util.*,entity.*,java.io.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'setnewsjason.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 <%--<c:forEach var="s" items="${pagebean.list}">  	
  	<%  String resultJson = null; %> 
  	   
  	${s.newstitle}
  	out.print();
 
  
  	</c:forEach> --%>
  	<% request.getAttribute("pagebean");
  	PageBean bean1 = (PageBean) request.getAttribute("pagebean");
		response.setContentType("text/html;charset=utf-8");  
        PrintWriter out1 = response.getWriter(); 
         ArrayList arrayList = new ArrayList();
         String list = "{\"lists\":[";
         
        for(int i = 0 ; i< bean1.getList().size();i++ )
        { 
            System.out.println("bean.getList().get(i)="+bean1.getList().get(i));
            NewsBean nb = new NewsBean();
            nb =(NewsBean) bean1.getList().get(i);
            String newstitle = nb.getNewstitle();
            String pic = nb.getNewspic();
            String date = nb.getPubtime();
           int id = nb.getNewsid();
         
            
           System.out.println("newstitle"+newstitle); 
            
        	list +="{\"title\":\""+newstitle+"\",\"pic\":"+pic+",\"link\":\""+id+"\",\"date\":\""+date+"\"},"; //传参数  
           
      //     arrayList.add( resultJson);
       //    System.out.println("resultJson"+resultJson);
        }
        arrayList.add( list);
        list += "]}";
       try{
         response.getWriter().write(list);
         response.getWriter().flush();
         response.getWriter().close();
         }catch(Exception e) {
            e.printStackTrace();
         }
     System.out.println("list===>"+list); 
     
  %> 
  </body>
</html>
