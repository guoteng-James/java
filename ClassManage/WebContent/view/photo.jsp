<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS");  
java.util.Date currentTime = new java.util.Date();//得到当前系统时间  
String str_date1 = formatter.format(currentTime); //将日期时间格式化  
System.out.println("项目【相册】访问:"+str_date1); 
String path = request.getContextPath();
%>

	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>班级回忆录</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />

	
	<!-- Animate.css -->
	<link rel="stylesheet" href="<%=path %>/css/global/photo-animate.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="<%=path %>/css/global/photo-magnific-popup.css">
	<!-- Salvattore -->
	<link rel="stylesheet" href="<%=path %>/css/global/photo-salvattore.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="<%=path %>/css/global/photo-style.css">
	<!-- Modernizr JS -->
	<script src="<%=path %>/js/global/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
<input type="hidden" id="login_id" value="${login_id}"/>
	<div id="fh5co-main">
	<input type="hidden" id="id" value="${student.id}"/>
	
		<div class="container">
		<form action="" id="photo" method="post" name="photo">
		<input type="button" class="btn btn-success" id="upload_btn" value="上传图片" onclick="insertPhotoView()">
		<c:if test="${manager==1}">
		<input type="button" id="delete" class="btn btn-danger" value="删除图片" onclick="deletePhoto()">
		</c:if>
		<input type="text" placeholder="备注" class="input-xlarge">
		<input type="button" class="btn btn-warning" value="搜索图片" onclick="findPhotobyremarks()"> 	
			<div class="row" >
        <div id="fh5co-board" data-columns>
        </form>
        <c:forEach items="${photolist}" var="photo">
       <div class="item">
        		<div class="animate-box">
	        		<a href="<%=path %>/images/classimg/${photo.pname}" class="image-popup fh5co-board-img">
<%-- 	        		<img src="<%=path %>/images/classimg/${photo.pname}" alt="Free HTML5 Bootstrap template"> --%>
						<img src="${photo.pname}" alt="Free HTML5 Bootstrap template">
	        		</a>
	        		<div class="fh5co-desc"><input type="checkbox" id="pid" name="pid" value="${photo.pid}">${photo.remarks}</div>
        		</div>
        	</div>
        	</c:forEach>
        	
        </div>
        </div>
       </div>
	</div>
	<!-- jQuery -->
	<script src="<%=path %>/js/logon/jquery-1.11.3.min.js"></script>
	<!-- jQuery Easing -->
	<script src="<%=path %>/js/global/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="<%=path %>/js/logon/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="<%=path %>/js/global/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="<%=path %>/js/global/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="<%=path %>/js/global/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="<%=path %>/js/global/photo-main.js"></script>
	<script src="<%=path %>/js/global/photo.js" type="text/javascript" charset="utf-8"></script>
	<script src="<%=path %>/js/global/testphoto.js" type="text/javascript" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/artDialog.source.js?skin=black"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/plugins/iframeTools.source.js"></script>
<script src="${pageContext.request.contextPath }/js/global/NoRightClickAndSelectAndCopyUtil.js" type="text/javascript"></script>
	
	</body>
</html>
