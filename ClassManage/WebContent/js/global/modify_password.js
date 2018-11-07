$(function(){
	
	
	
	$('#modify_old_password').keyup(function(){
		old_pwd=$('#modify_old_password').val();
		$.ajax({
			type: "post",
			data: {"pwd":old_pwd,"id":$('#id').val()},
			dataType:"json",
			url:"/ClassManage/pwd.do?action=checkPwd",
			success:function(result){
				if (result.result=="ok"){
					$('#check').html("<font color=green>"+result.message+"</font>");
					return;
				}else{
					$('#check').html("<font color=red>"+result.message+"</font>");
					return;
				}
			},
			error: function(result){
				alert("ajax loser");
				window.location.href="/ClassManage/logon.do?action=error";
				return;
			}
			
		});
	});
	
	$('#modify_old_password').blur(function(){
		old_pwd=$('#modify_old_password').val();
		$.ajax({
			type: "post",
			data: {"pwd":old_pwd,"id":$('#id').val()},
			dataType:"json",
			url:"/ClassManage/pwd.do?action=checkPwd",
			success:function(result){
				if (result.result=="ok"){
					$('#check').html("<font color=green>"+result.message+"</font>");
					return;
				}else{
					$('#check').html("<font color=red>"+result.message+"</font>");
					return;
				}
			},
			error: function(result){
				alert("ajax loser");
				window.location.href="/ClassManage/logon.do?action=error";
				return;
			}
			
		});
	});
	
	$('#modify_password').on('click',function() {
		$c1=$('#check').text();
		$c2=$('#n_pwd_check2').text();
		n_p=$('#modify_new_password').val().trim();
		n_p1=$('#modify_confirm').val().trim();
		
		if($('#modify_old_password').val()==""){
			art.dialog({
			    title: '错误',
			    content: '请输入原密码!',
			    icon: 'error',
			    ok: function(){
			    	this.close();
			    	$("#modify_old_password").focus();
			    }
			}).lock();
			return;
		}
		if($('#modify_new_password').val()==""){
			art.dialog({
			    title: '错误',
			    content: '请输入密码!',
			    icon: 'error',
			    ok: function(){
			    	this.close();
			    	$("#modify_new_password").focus();
			    }
			}).lock();
			return;
		}
		if($('#modify_confirm').val()==""){
			art.dialog({
			    title: '错误',
			    content: '请再次输入密码!',
			    icon: 'error',
			    ok: function(){
			    	this.close();
			    	$("#modify_confirm").focus();
			    }
			}).lock();
			return;
		}
		
		if($c1=="√"){
			if(n_p==n_p1){
				$.ajax({
					type: "post",
					data: {"pwd":n_p,"id":$('#id').val()},
					dataType:"json",
					url:"/ClassManage/pwd.do?action=modify_pwd",
					success:function(result){
						if (result.result=="ok"){
							art.dialog(result.message, function(){
								this.close;
								window.location.href="/ClassManage";
							}).lock();
							return;
						}else{
							art.dialog({
							    title: '错误',
							    content: '密码修改失败!',
							    icon: 'error',
							    ok: function(){
							    	this.close();
							    	$("#modify_confirm").focus();
							    }
							}).lock();
							return;
						}
					},
					error: function(result){
						alert("ajax loser");
						window.location.href="/ClassManage/logon.do?action=error";
						return;
					}
					
				});
			}else{
				art.dialog({
				    title: '错误',
				    content: '两次密码不一致!',
				    icon: 'error',
				    ok: function(){
				    	this.close();
				    	$("#modify_new_password").focus();
				    }
				}).lock();
			}
		}else{
			art.dialog({
			    title: '错误',
			    content: '请输入正确信息!',
			    icon: 'error',
			    ok: function(){
			    	this.close();
			    	$("#modify_new_password").focus();
			    }
			}).lock();
		}
	});
	
});
