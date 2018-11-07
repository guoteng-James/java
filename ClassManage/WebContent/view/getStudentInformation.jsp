<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/global/buttons.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/global/getStudentInformation.css" type="text/css">
<title>查看信息</title>
<head>
<body >
<div class="student">
	<input type="hidden" id="id" value="${student.id}"/>
    <div class="login_image">
<%--     	<img id="img" src="${pageContext.request.contextPath }/images/student_img/${student.sphoto}" /><br> --%>
<img id="img" src="${student.sphoto}" /><br>
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
        	<tr>
        		<td>性别：</td>
        		<td>${student.sex}</td>
        	</tr>
        	<tr>
        		<td>Tel：</td>
        		<td>${student.telephone}</td>
        	</tr>
        	<tr>
        		<td>宿舍：</td>
        		<td>${student.dormitory}</td>
        	</tr>
        	<tr>
        		<td>地址：</td>
        		<td>${student.address}</td>
        	</tr>
        </table>
        <a id="close_btn" class="button black" href="javascript:void(0);" onclick="look_close()">关闭</a>	
     </center>
</div>
<script src="${pageContext.request.contextPath }/js/logon/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/js/global/addressBook.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/artDialog.source.js?skin=black"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/plugins/iframeTools.source.js"></script>
<script src="${pageContext.request.contextPath }/js/global/NoRightClickAndSelectAndCopyUtil.js" type="text/javascript"></script>
</body>
</html>