<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS");  
java.util.Date currentTime = new java.util.Date();//得到当前系统时间  
String str_date1 = formatter.format(currentTime); //将日期时间格式化  
System.out.println("项目【个人信息】访问:"+str_date1);
System.out.println(request.getRemoteAddr());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/global/login_information.css" type="text/css">
<title>个人信息</title>
</head>
<body>
<hr color="#fff">
<div class="information">
<form id="login_information_form" action="" method="post">
<input type="hidden" name="id" id="id" value="${student.id}" /><br/>
<table cellpadding="20" cellspacing="10" class="t">
<tr>
	<td>姓名：</td>
	<td>
		<label class='u_l'>${student.sname}</label>
		<input type="text" name="sname" id="sex" value="${student.sname}" class="u_t"/>
	</td>
</tr>
<tr>
	<td>学号：</td>
	<td>
		<label class='u_l'>${student.number}</label>
		<input type="text" name="number" id="sex" value="${student.number}" class="u_t"/>
	</td>
</tr>
<tr>
	<td>性别：</td>
	<td>
		<label class='u_l'>${student.sex}</label>
		<input type="text" name="sex" id="sex" value="${student.sex}" class="u_t"/>
	</td>
</tr>
<tr>
	<td>手机：</td>
	<td>
	<label class='u_l'>${student.telephone}</label>
		<input type="number" name="telephone" id="telephone" value="${student.telephone}" class="u_t"/>
	</td>
</tr>
<tr>
	<td>地址：</td>
	<td>
		<label class='u_l'>${student.address}</label>
		<input type="text" name="address" id="address" value="${student.address}" class="u_t"/>
	</td>
</tr>
<tr>
	<td>宿舍：</td>
	<td>
		<label class='u_l'>${student.dormitory}</label>
		<input type="text" name="dormitory" id="dormitory" value="${student.dormitory}" class="u_t"/>
	</td>
</tr>
<tr>
	<td colspan='2' align="center">
		<input type="button" id="update_btn" class="button" value="修改信息" />
		<input type="button" id="update_sure_btn" class="button" value="确定修改" style="display: none;"/>
	</td>
</tr>
</table>
</form>
</div>
<div class="login_image">
  	<a href="javascript:void(0);" id="a_img">
<%--      		<img id="modify_img" src="${pageContext.request.contextPath }/images/student_img/${student.sphoto}" /> --%>
			<img id="modify_img" src="${student.sphoto}" />
     		<br/>
     		<span id="a_img_t">修改头像</span>
  	</a>
</div>


<script src="${pageContext.request.contextPath }/js/logon/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/js/logon/checkLogin.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/js/global/login_information.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/artDialog.source.js?skin=black"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/plugins/iframeTools.source.js"></script>
<script src="${pageContext.request.contextPath }/js/global/NoRightClickAndSelectAndCopyUtil.js" type="text/javascript"></script>
</body>
</html>