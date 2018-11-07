<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS");  
java.util.Date currentTime = new java.util.Date();//得到当前系统时间  
String str_date1 = formatter.format(currentTime); //将日期时间格式化  
System.out.println("项目主页访问:"+str_date1); 
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>班级回忆录</title>
<meta charset="UTF-8">
<link href="images/logon/home.png" rel="shortcut icon">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/logon/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/logon/font-awesome.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/logon/b.tabs.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/logon/main_nav.css" />
</head>
<body>
<input type="hidden" id="id" value="${student.id}"/>
<div class="">
  <div class="row-fluid">
    <div class="col-md-2" style="padding-left: 0px;">
	<div class="mav">
        <ul id="menuSideBar" >
        	<li class="mav-top">
        		<ul>
        			<li>
        				 <a id="welcome" tabindex="-1" href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/logon/home1.png"/><span>首页</span></a>
        			</li>
        		</ul>
        	</li>
            <li class="mav-item">
                <a href="javascript:void(0);"><span>信息</span><i class="my-icon mav-more"></i></a>
                <ul>
                    <li mid="1" funurl="${pageContext.request.contextPath }/main.do?action=login_information&login_id=${student.id}"><a id="login_information" tabindex="-1" href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/logon/information.png"/><span>个人信息</span></a></li>
                    <li mid="2" funurl="${pageContext.request.contextPath }/main.do?action=addressBook&login_id=${student.id}"><a id="class_information" tabindex="-1" href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/logon/class_information.png"/><span>同学通讯录</span></a></li>
                </ul>
            </li>
            <li class="mav-item">
                <a href="javascript:void(0);"><span>活动</span><i class="my-icon mav-more"></i></a>
                <ul>
                    <li mid="3" funurl="${pageContext.request.contextPath }/notice.do?action=notice&login_id=${student.id}"><a id="gonggao" tabindex="-1" href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/logon/gonggao1.png"/><span>班级公告</span></a></li>
                    <li mid="4" funurl="${pageContext.request.contextPath }/photo.do?action=select_photo&login_id=${student.id}"><a id="photo" tabindex="-1" href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/logon/photo.png"/><span>班级相册</span></a></li>
                </ul>
            </li>
             <li class="mav-item">
                <a href="javascript:void(0);"><span>其他</span><i class="my-icon mav-more"></i></a>
                <ul>
                    <li><a id="modifypassword" href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/logon/modifypassword.png"/><span>修改密码</span></a></li>
                    <li><a href="javascript:void(0);" id="close"><img src="${pageContext.request.contextPath }/images/logon/close.png"/><span>退出/注销</span></a></li>
                </ul>
            </li>
        </ul>
    </div>
        
    </div>
    
    <div class="col-md-10" id="mainFrameTabs" style="padding : 0px;"> 
<!--       <a href="/ClassManage/logon.do?action=logout" onclick="return confirm('确认退出？')" style="float: right;text-decoration: none;cursor: pointer;font-size: 20px">退出</a> -->
      <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active noclose"><a id="home"  href="#bTabs_navTabsMainPage" data-toggle="tab">首页</a></li>
      </ul>
      
      <!-- Tab panes -->
      <div class="tab-content" style="background:#6C6C6C;width:auto;">
      <img src="${pageContext.request.contextPath }/images/logon/gonggao.png" /><span class="light_font" id="light_font">&nbsp;&nbsp;&nbsp;欢迎${student.sname}！！！</span>
        <div class="tab-pane active" id="bTabs_navTabsMainPage">
        	<!-- <font size="+6" style="text-shadow: 20 pink">请点击左侧导航</font> -->
        	
        	<div class="home_page">
        		<div class="home_link">
        			<table cellpadding="0" cellspacing="0" style="text-align: center;border-radius: 20px;background:black;height: 200;width: 300">
        				<tr>
        					<td width="70px"><a id="login_information_1" href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/logon/information.png"/><div>个人信息</div></a></td>
        					<td width="70px"><a id="class_information_1" href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/logon/class_information.png"/><div>同学通讯录</div></a></td>
        					<td width="70px"><a id="gonggao_1" href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/logon/gonggao1.png"/><div>班级公告</div></a></td>
        				</tr>
        				<tr>
        					<td width="70px"><a id="photo_1" href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/logon/photo.png"/><div>班级相册</div></a></td>
        					<td width="70px"><a id="modifypassword_1" href="javascript:void(0);"><img src="${pageContext.request.contextPath }/images/logon/modifypassword.png"/><div>修改密码</div></a></td>
        					<td width="70px"><a id="close_1" href="javascript:void(0)" "><img src="${pageContext.request.contextPath }/images/logon/close.png"/><div>退出/注销</div></a></td>
        				</tr>
        			</table>
        		</div>
        	
        		<div class="home_information">
        			<div class="login_image">
<%--        					<a href="javascript:void(0);" onclick="$('#login_information').click();"> <img id="img"  src="${pageContext.request.contextPath }/images/student_img/${student.sphoto}"/></a> --%>
					<a href="javascript:void(0);" onclick="$('#login_information').click();"> <img id="img"  src="${student.sphoto}"/></a>
        			</div><br/>
        			&nbsp;&nbsp;姓名：<span class="login_i">${student.sname}</span><br/>
        			&nbsp;&nbsp;学号：<span class="login_i">${student.number}</span>
        		</div>
        	</div>
        	
        </div>
      </div>
      
    </div>
    
  </div>
</div>
<script src="${pageContext.request.contextPath }/js/logon/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/logon/bootstrap.min.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/logon/b.tabs.js" ></script> 
<script src="${pageContext.request.contextPath }/js/logon/checkLogin.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/js/logon/main.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/artDialog.source.js?skin=black"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/plugins/iframeTools.source.js"></script>
<script src="${pageContext.request.contextPath }/js/global/NoRightClickAndSelectAndCopyUtil.js" type="text/javascript"></script>
<footer style="color: #227AD7;">
	<center>
		<p>copyright&copy;ABCD</p>
	</center>
</footer>

</body>
</html>