$(function(){
	$('#update_btn').click(function(){
		$('#update_btn').hide();
		$('.u_l').hide();
		$('.u_t').show();
		$('#update_sure_btn').show();
	});
	$('#update_sure_btn').click(function(){
		$.ajax({
			type : "POST",
			data : $('#login_information_form').serialize(),
			dataType : "json",
			url : "/ClassManage/logon.do?action=editSaveUser",
			success : function(result) {
				if (result.result == "succ") {
					art.dialog({icon: 'succeed',content:'修改成功', ok:function(){
						this.close;
						window.location.href="/ClassManage/main.do?action=login_information&login_id="+$('#id').val();
					}}).lock();
				} else {
					tipAlert('error','提示','编辑用户失败1');
				}
			},
			error : function(result) {
				tipAlert('error','提示','编辑用户2失败');
			}
		});	
	});
	

	$('#a_img').click(function(){
		art.dialog({
		    title: '提问',
		    content: '上传图片需刷新界面，不会保存已修改的学生信息，请问是否继续？',
		    icon: 'question',
		    ok: function(){
		    	
		art.dialog.open("/ClassManage/addressBook.do?action=modify_photo&login_id="+$('#id').val(),{
			id:'modify_photo',
			title:'修改图片',
			height:180,
			okVal:"关闭",
			ok:function(){
				this.close();
			},
			close:function(){
				var win = art.dialog.open.origin;
		    	win.location.reload();
			}
		}).lock();
		
		    },
		    cancel: function(){
		    	this.close();
		        return false;
		    }
		}).lock();
	});

});