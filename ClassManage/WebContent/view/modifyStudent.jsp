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
<head>
<body >
<div class="student">
    <div class="login_image">
<%--      		<img id="modify_img" src="${pageContext.request.contextPath }/images/student_img/${student.sphoto}" /> --%>
	<img id="modify_img" src="${student.sphoto}" />
    </div>
    <center>
    <form id="modify_form">
    	<input type="hidden" name="id" id="modify_id" value="${student.id}"/>
        <table cellpadding="5" cellspacing="0" style="text-align: center;">
        	<tr>
        		<td>姓名：</td>
        		<td><input type="text" name="sname" id="modify_name" value="${student.sname}"/> </td>
        	</tr>
        	<tr>
        		<td>学号：</td>
        		<td><input type="number" name="number" id="modify_number" value="${student.number}"/></td>
        	</tr>
        	<tr>
        		<td>性别：</td>
        		<td>
        			<c:if test="${student.sex=='男' }">
        				<select name="sex" style="width: 100%">
  							<option value ="男" selected="selected">男</option>
  							<option value ="女">女</option>
						</select>
					</c:if>
					<c:if test="${student.sex=='女' }">
        				<select name="sex" style="width: 100%">
  							<option value ="男" >男</option>
  							<option value ="女" selected="selected">女</option>
						</select>
					</c:if>
        		</td>
        	</tr>
        	<tr>
        		<td>Tel：</td>
        		<td><input type="number" maxlength="11" name="telephone" id="modify_telephone" value="${student.telephone }"/></td>
        	</tr>
        	<tr>
        		<td>宿舍：</td>
        		<td><input type="text" name="dormitory" id="modify_dormitory" value="${student.dormitory }" /></td>
        	</tr>
        	<tr>
        		<td>地址：</td>
        		<td><input type="text" name="address" id="modify_address" value="${student.address }"/></td>
        	</tr>
        	<tr>
        		<td>密码：</td>
        		<td><input type="password" name="password" id="modify_password" value="${student.wjm_pwd }" placeholder="修改为初始密码：123123"/></td>
        	</tr>
        	<tr>
        		<td>Manager：</td>
        		<td>
        			<c:if test="${student.manager=='1' }">
        				<select name="manager" style="width: 100%" id="modify_manager">
  							<option value ="1" selected="selected">超级管理员</option>
  							<option value ="2">管理员</option>
  							<option value ="3">无</option>
						</select>
					</c:if>
					<c:if test="${student.manager=='2' }">
        				<select name="manager" style="width: 100%" id="modify_manager">
  							<option value ="1">超级管理员</option>
  							<option value ="2" selected="selected">管理员</option>
  							<option value ="3">无</option>
						</select>
					</c:if>
					<c:if test="${student.manager=='3' }">
        				<select name="manager" style="width: 100%" id="modify_manager">
  							<option value ="1">超级管理员</option>
  							<option value ="2">管理员</option>
  							<option value ="3" selected="selected">无</option>
						</select>
					</c:if>
				
        		</td>
        	</tr>
        </table>
        <a id="modify_btn" class="button pink" href="javascript:void(0);" onclick="modify()">确定</a>	
        <a id="modify_close_btn" class="button black" href="javascript:void(0);" onclick="modify_close()">关闭</a>	
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