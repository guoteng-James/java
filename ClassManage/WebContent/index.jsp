<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS");  
java.util.Date currentTime = new java.util.Date();//得到当前系统时间  
String str_date1 = formatter.format(currentTime); //将日期时间格式化  
System.out.println("项目访问:"+str_date1); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>班级回忆录</title>
<link href="images/logon/home.png" rel="shortcut icon">
<link rel="stylesheet" href="css/logon/index_style.css" />
<script type="text/javascript" src="js/logon/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/logon/index.js"></script>
<script src="comm/artDialog4.1.7/artDialog.source.js?skin=black"></script>
<script src="comm/artDialog4.1.7/plugins/iframeTools.source.js"></script>
<script type="text/javascript">
// $(function() {
// 	art.dialog({
// 	    title: '提示',
// 	    content: '超级管理员： 学号：000 密码：123123<br>管理员: 学号：001 密码：123123<br>非管理员：学号：004 密码：123123',
// 	    ok: function(){
// 	    	this.close();
// 	        return false;
// 	    }
// 	});
// });
</script>
<%
boolean auto = false;
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(int i=0; i<cookies.length; i++) {
   		Cookie cookie = cookies[i];
   		if("autoLogin".equals(cookie.getName())){
   			auto = true;
   			break;
   		}
	}
}
if(auto){
	response.sendRedirect("/ClassManage/logon.do?action=auto");
}
%>
<script type="text/javascript">
	function loadimage() {
		document.getElementById("randImage").src = "${pageContext.request.contextPath}/getRandImage.jsp?t=" + Math.random();
	}
	
</script>
</head>

<body>

<c:if test="${not empty error}">
	<script type="text/javascript">
	$(function(){
			art.dialog({
			    title: '错误',
			    content: '您还没有登陆，请先登陆!',
			    icon: 'error',
			    ok: function(){
			    	this.close();
			    	$("#login_btn").removeAttr("disabled");
			    	$("#login_btn").val("登录");
			    	$("#number").focus();
			    }
			}).lock();
			return;
	})
	</script>
</c:if>
<div id="loading" style="width:100%;position:absolute;z-index:1;margin-top: 50px;display: none;">
    <center>
 	<img alt="加载中" src="images/logon/loading.gif"/>
 	</center>
  </div>
<form id="frm_logon" method="post" name="frm_logon">
	<div class="login_div">
		<div style="width:100%;text-align: center;padding: 3px 0px 0px 0px;opacity: 0.8;">
			<font size="+3" color="#FFFFFF">登录</font>
			<hr width="100%" style="color: #CCCCCC;" />
		</div>
		<div style="width:100%;padding: 20px 0px 0px 40px;">
			<input required='' type='text' name="number" id="number"/>
			<label alt='请输入学号' placeholder='学号'></label>
			<input required="required" type="password" name="password" id="password"/>
			<label alt='请输入密码' placeholder='密码'></label>
			<input type="text"  placeholder="验证码" required="required" value="${imageCode }" name="imageCode"
					id="imageCode" onkeydown="if(event.keyCode==13)Validate()"/><br>
			<a href="login.htm" style="text-decoration: none"><small>忘记密码了？</small></a> | <input type="checkbox" name="auto" id="auto" >记住我 | <img onclick="javascript:loadimage();" title="换一张试试"
						name="randImage" id="randImage" src="${pageContext.request.contextPath }/getRandImage.jsp" height="20" border="1">
			<div align="center" style="width:80%;margin-top: 8px">
				<input type="button" id="login_btn" class="button" name="login_btn" value="登录"  onClick="Validate()"/>&nbsp;&nbsp;&nbsp;
				<input type="reset" class="button" value="重置" />
			</div><!-- frm_logon.submit() -->
		</div>
	</div>
</form>
</body>
</html>