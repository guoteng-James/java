<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS");  
java.util.Date currentTime = new java.util.Date();//得到当前系统时间  
String str_date1 = formatter.format(currentTime); //将日期时间格式化  
System.out.println("项目【通讯录】访问:"+str_date1); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>通讯录</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/global/buttons.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/global/addressBook.css" type="text/css">
</head>
<body>
<input id="login_id" type="hidden" value="${login_id}" />
<div class="find" id="find">
		<select id="find_n" onchange="find_change()">
  			<option value ="Number" selected="selected">学号</option>
  			<option value ="Sname">姓名</option>
  			<option value ="Address">地址</option>
		</select>
	<input class="find_text" type="text" placeholder="请输入学号"/>
	<input type="button" class="find_btn" value="搜索" onclick="findStundent()"/>
</div>

<c:if test="${manager==1}">
	<div >
		<a id="insert_btn" class="button pink insert_btn" href="javascript:void(0);" onclick="insertStudent()">添加</a>
	</div>
</c:if>	
<div class="all">

	<c:forEach items="${studentList}" var="student">  
       <c:if test="${student.manager!=1}">
		<div class="student_page">
			<input type="hidden" id="id" value="${student.id}"/>
        	<div class="login_image">
        		<c:if test="${manager>=2}">
<%--        				<img id="img" src="${pageContext.request.contextPath }/images/student_img/${student.sphoto}" /><br> --%>
				<img id="img" src="${student.sphoto}" /><br>
				</c:if>
				<c:if test="${manager==1}">
       				<a href="javascript:void(0);" id="a_img" onclick="chooose_photo(${student.id})">
<%--      					<img id="modify_img" src="${pageContext.request.contextPath }/images/student_img/${student.sphoto}" /> --%>
     					<img id="modify_img" src="${student.sphoto}" />
     					<br/>
     					<span id="a_img_t">修改头像</span>
  					</a>
  				</c:if>
        	</div>
        	<center>
        	<table cellpadding="5" cellspacing="0" style="text-align: center;">
        		<tr>
        			<td>姓名：</td>
        			<td>${student.sname}</td>
        		</tr>
        		<tr>
        			<td>学号：</td>
        			<td>${student.number}</td>
        		</tr>
        	</table>
        	</center><br/><br/>
			<a id="information_btn" class="button blue" href="javascript:void(0);" onclick="getInformation(${student.id})">详情</a>
			<c:if test="${manager==1}">
				<a id="modify_btn" class="button orange" href="javascript:void(0);" onclick="modifyStudent(${student.id})">修改</a>
				<a id="delete_btn" class="button black" href="javascript:void(0);" onclick="delStudent(${student.id})">删除</a>	
			</c:if>	
		</div>
		</c:if>
	</c:forEach>
</div>
<script src="${pageContext.request.contextPath }/js/logon/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/js/logon/checkLogin.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/js/global/addressBook.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/artDialog.source.js?skin=black"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/plugins/iframeTools.source.js"></script>
<script src="${pageContext.request.contextPath }/js/global/NoRightClickAndSelectAndCopyUtil.js" type="text/javascript"></script>
</body>
</html>