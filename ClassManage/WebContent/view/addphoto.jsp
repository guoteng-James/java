<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<%
String path = request.getContextPath();
%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/logon/bootstrap.css" />
<link rel="stylesheet" href="<%=path %>/css/global/photo-style.css">
<script src="${pageContext.request.contextPath }/js/logon/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path %>/js/global/photo.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path %>/js/global/testphoto.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/artDialog.source.js?skin=black"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/plugins/iframeTools.source.js"></script>
<script src="${pageContext.request.contextPath }/js/global/NoRightClickAndSelectAndCopyUtil.js" type="text/javascript"></script>
<title>Insert title here</title>
</head>
<body>
 <form name="addphoto" class="form-horizontal" action="" method="post" enctype="multipart/form-data">
  <fieldset>
  <div class="control-group">
          <label class="control-label">选择图片</label>
          <!-- File Upload -->
          <div class="controls">
            <input class="input-file" id="uploadFile" type="file" name="pname" >
          </div>
        </div>
    <div class="control-group" >
          <!-- Text input-->
          <label class="control-label" for="input01">图片备注</label>
          <div class="controls">
            <input type="text" placeholder="活动名" class="input-xlarge" name="remarks" id="remarks">
            <p class="help-block"></p>
          </div>
        </div>
        <input type="button" class="btn btn-success" id="upload" value="确认上传" style="display: none;" onclick="insertPhoto()">
        
        </fieldset>
</form>
</body>
</html>