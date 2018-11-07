<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS");  
java.util.Date currentTime = new java.util.Date();//得到当前系统时间  
String str_date1 = formatter.format(currentTime); //将日期时间格式化  
System.out.println("项目【公告】访问:"+str_date1); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>班级回忆录</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/global/notice.css">
</head>
<body>
<input type="hidden" id="login_id" value="${login_id}">
<c:if test="${manager<=2 }">
<div class="Add">
				<span></span>
				<div class="memu">
					<li class="add-cont" ><a href="javascript:void(0);" onclick="add(${login_id})">发布公告</a></li>
				</div>
</div>
</c:if>	
	<c:forEach items="${noticeList}" var="notice">
	<div class="cntl" style="color: #fff;" >
			<div class="cntl-state">
				<div class="cntl-content">
					<h4>${notice.title}</h4>
					<p>${notice.content}</p>
					<div style="float: right; ">
					发布时间：${notice.createTime}<br />
					<c:if test="${manager==1 }">
					<input type="button" value="修改" onclick="update_view(${notice.id});" >
					<input type="button" value="删除" onclick="delete_notice(${notice.id});">
					</c:if>
					</div>
				</div>
			</div>
	</div>
	</c:forEach>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath }/js/logon/checkLogin.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/global/jquery.cntl.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/global/notice.js"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/artDialog.source.js?skin=black"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/plugins/iframeTools.source.js"></script>
<script src="${pageContext.request.contextPath }/js/global/NoRightClickAndSelectAndCopyUtil.js" type="text/javascript"></script>
</body>
</html>
