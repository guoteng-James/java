<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<script src="${pageContext.request.contextPath }/js/logon/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/artDialog.source.js?skin=black"></script>
<script src="${pageContext.request.contextPath }/comm/artDialog4.1.7/plugins/iframeTools.source.js"></script>
<script src="${pageContext.request.contextPath }/js/global/NoRightClickAndSelectAndCopyUtil.js" type="text/javascript"></script>
<script type="text/javascript">
function getQueryString(name) { 
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
	var r = window.location.search.substr(1).match(reg); 
	if (r != null) return unescape(r[2]); return null; 
} 
art.dialog({
	drag: false,
	resize: false,
	cancel:false,
    icon: 'succeed',
    init: function () {
    	var that = this, i = 5;
        var fn = function () {
            that.title(i + '秒后关闭');
            that.content('修改成功!（'+i+'秒后关闭窗口）');
            !i && that.close();
            i --;
        };
        timer = setInterval(fn, 1000);
        fn();
    },
    close: function () {
    	clearInterval(timer);
    	var op=getQueryString("op");
		window.location.href="/ClassManage/addressBook.do?action=modify_photo&login_id="+getQueryString("id");
    }
}).lock();
</script>
</body>
</html>