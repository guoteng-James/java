<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS");  
java.util.Date currentTime = new java.util.Date();//得到当前系统时间  
String str_date1 = formatter.format(currentTime); //将日期时间格式化  
System.out.println("项目【修改密码】访问:"+str_date1); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/global/normalize.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/global/modify_password.css">

 <title>修改密码</title>
</head>
<body>
<input type="hidden" id="id" value="${login_id}"/>
  <div class="modify_div"  style="background: #333;">
    <p style="text-align: center;color: white;">修改密码</p>
    <div class="hr"></div>
    <ul class="modify_ul">
      <li>
          <span>原密码：</span>
          <input type="password" name="" value="" placeholder="请输入原密码" id="modify_old_password" class="modify_old_password">
          <span class="tip user_hint" id="check"></span>
      </li>
      <li>
          <span>新密码：</span>
          <input type="password" name="" value="" placeholder="请输入新密码 " id="modify_new_password" class="modify_new_password">
          <span class="tip password_hint" id="n_pwd_check1"></span>
      </li>
      <li>
          <span>确认密码：</span>
          <input type="password" name="" value="" placeholder="确认密码" id="modify_confirm" class="modify_confirm">
          <span class="tip confirm_hint" id="n_pwd_check2"></span>
      </li>
      <li>
        <div align="center">
        <button  type="button" name="button" class="red_button" id="modify_password">确认</button>
        <button  type="button" name="button" onclick="window.history.go(-1)">返回</button>
        </div>
      </li>
    </ul>
  </div>
  
  <script src="${pageContext.request.contextPath }/js/logon/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
  <script src="${pageContext.request.contextPath }/js/logon/checkLogin.js" type="text/javascript" charset="utf-8"></script>
  <script src="${pageContext.request.contextPath }/js/global/modify_password.js" type="text/javascript" charset="utf-8"></script>
  <script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/artDialog.source.js?skin=black"></script>
  <script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/plugins/iframeTools.source.js"></script>
  <script src="${pageContext.request.contextPath }/js/global/NoRightClickAndSelectAndCopyUtil.js" type="text/javascript"></script>
</body>
</html>

