function Validate(){
	$("#loading").show();
	$("#login_btn").attr("disabled","disabled");
	$("#login_btn").val("请稍后！");
	debugger;//浏览器逐步测试
	if ($("#number").val() ==""){
		$("#loading").hide();
		art.dialog({
		    title: '错误',
		    content: '请输入学号!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#login_btn").removeAttr("disabled");
		    	$("#login_btn").val("登录");
		    	$("#number").focus();
		    }
		}).lock();
		return;
	}
		
	if ($("#password").val() ==""){
		$("#loading").hide();
		art.dialog({
		    title: '错误',
		    content: '请输入密码!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#login_btn").removeAttr("disabled");
		    	$("#login_btn").val("登录");
		    	$("#password").focus();
		    }
		}).lock();
		return;
	}
	
	$.ajax({
		type: "post",
		data: $("#frm_logon").serialize(),
		dataType:"json",
		url:"/ClassManage/logon.do?action=logon",
		success:function(result){
			if (result.result=="ok"){
				window.location.href="/ClassManage/logon.do?action=main";
				return;
			}else if(result.result=="error"){
				$("#loading").hide();
				art.dialog({
				    title: '错误',
				    content: '学号或密码错误!',
				    icon: 'error',
				    ok: function(){
				    	this.close();
				    	$("#login_btn").removeAttr("disabled");
				    	$("#login_btn").val("登录");
				        return false;
				    }
				}).lock();
				return;
			}else if(result.result=="codeError"){
				$("#loading").hide();
				art.dialog({
				    title: '错误',
				    content: '验证码输入错误!',
				    icon: 'error',
				    ok: function(){
				    	this.close();
				    	$("#login_btn").removeAttr("disabled");
				    	$("#login_btn").val("登录");
				        return false;
				    }
				}).lock();
				return;
			}
		},
		error: function(result){
			$("#loading").hide();
			alert("ajax loser");
			$("#login_btn").removeAttr("disabled");
	    	$("#login_btn").val("登录");
			window.location.href="/ClassManage/logon.do?action=error";
			return;
		}
		
	});
	
}