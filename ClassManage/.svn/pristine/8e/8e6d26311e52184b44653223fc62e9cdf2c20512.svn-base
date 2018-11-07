<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/global/buttons.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/global/addStudent.css" type="text/css">
<title>查看信息</title>
<style type="text/css">
	input{
		width: 150px
	}
</style>
<head>
<body>
<div class="student">
    <div class="login_image">
     	<img id="insert_img" src="${pageContext.request.contextPath }/images/student_img/withoutphoto.png" />
    </div>
    <center>
    <form id="insert_form">
        <table cellpadding="5" cellspacing="0" style="text-align: center;">
        	<tr>
        		<td>姓名：</td>
        		<td><input type="text" name="sname" id="insert_name"/> </td>
        	</tr>
        	<tr>
        		<td>学号：</td>
        		<td><input type="number" name="number" id="insert_number" /></td>
        	</tr>
        	<tr>
        		<td>性别：</td>
        		<td>
        			<select name="sex" style="width: 100%">
  						<option value ="男">男</option>
  						<option value ="女">女</option>
					</select>
        		</td>
        	</tr>
        	<tr>
        		<td>Tel：</td>
        		<td><input type="number" maxlength="11" name="telephone" id="insert_telephone" /></td>
        	</tr>
        	<tr>
        		<td>宿舍：</td>
        		<td><input type="text" name="dormitory" id="insert_dormitory" /></td>
        	</tr>
        	<tr>
        		<td>地址：</td>
        		<td><input type="text" name="address" id="insert_address" /></td>
        	</tr>
        	<tr>
        		<td>密码：</td>
        		<td>
        			<input type="text" name="password" id="insert_password" value="123123" readonly="readonly"/>
        		</td>
        	</tr>
        	<tr>
        		<td>Manager：</td>
        		<td>
        			<select name="manager" style="width: 100%">
  						<option value ="1">超级管理员</option>
  						<option value ="2">管理员</option>
  						<option value ="3" selected="selected">无</option>
					</select>
        		</td>
        	</tr>
        </table>
        <a id="insert_btn" class="button pink" href="javascript:void(0);" onclick="insert()">确定</a>	
        <a id="insert_close_btn" class="button black" href="javascript:void(0);" onclick="add_close()">关闭</a>	
        </form>
     </center>
</div>
<script src="${pageContext.request.contextPath }/js/logon/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/js/global/addressBook.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/artDialog.source.js?skin=black"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/plugins/iframeTools.source.js"></script>
<script src="${pageContext.request.contextPath }/js/global/NoRightClickAndSelectAndCopyUtil.js" type="text/javascript"></script>
</body>
</html>