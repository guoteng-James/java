<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改</title>
</head>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/global/notice.css">
<body>

<div class="full-modify">
	<div class="full-wrap">

		<div class="full-content">
				<div class="full-modi">
					<span>修改标题：</span>
					<input type="" name="" placeholder="">
				</div>
				<div class="full-modi">
					<div style="margin-top: -25px;">修改内容：</div>
					<textarea placeholder="" style="width: 100%"></textarea> 
				</div>
				<div class="full-modi" >
					<center>
					<botton>确认</botton>
					</center>
				</div>
		</div>
	</div>
</div>

</body>
</html>