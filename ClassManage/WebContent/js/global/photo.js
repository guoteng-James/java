function insertPhotoView(){
	
	
	art.dialog.open("/ClassManage/photo.do?action=addPhotoView",{
		id:'modify_photo',
		title:'修改图片',
		height:200,
		okVal:"关闭",
		ok:function(){
			this.close();
		},
		close:function(){
			var win = art.dialog.open.origin;
	    	win.location.reload();
		}
	}).lock();
}

function insertPhoto(){
	if($("#remarks").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入图片备注',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#remarks").focus();
		    }
		}).lock();
		return;
	}else{
		//"/ClassManage/photo.do?action=insertphoto
		$('.form-horizontal').attr("action","/ClassManage/photo.do?action=insertphoto&remarks="+$('#remarks').val());
		$('.form-horizontal').submit();
	}
}
function findPhotobyremarks(){
	window.location.href="/ClassManage/photo.do?action=selectPhotoByremarks&login_id="+$("#login_id").val()+"&remarks="+$('.input-xlarge').val().trim();
}
function deletePhoto(){
	var uuid = "";
	var chks = $("input[name='pid']:checked");
	var len = chks.length;
	for ( var i = 0; i < len; i++) {
		uuid += chks[i].value + ",";
	}
	
	if(uuid==""){
		art.dialog({
		    title: '错误',
		    content: '请选择需要删除的图片',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    }
		}).lock();
	}else{
		art.dialog({
		    title: '提问',
		    content: '是否删除？',
		    icon: 'question',
		    ok: function(){
		    	
		    	$.ajax({
		    		type: "post",
		    		data: {"xxx":""},
		    		dataType:"json",
		    		url:"/ClassManage/photo.do?action=deletePhoto&uuid="+uuid,
		    		success:function(result){
		    			if (result.result=="ok"){
		    				art.dialog({
		    					drag: false,
		    					resize: false,
		    					cancel:false,
		    				    icon: 'succeed',
		    				    content:"删除成功",
		    				    ok:function(){
		    				    	this.close();
		    				    },
		    				    close: function () {
		    				    	var win = art.dialog.open.origin;
		    				    	win.location.reload();
		    				    }
		    				}).lock();
		    				return;
		    			}else{
		    				art.dialog({
		    				    title: '错误',
		    				    content: '删除失败',
		    				    icon: 'error',
		    				    ok: function(){
		    				    	this.close();
		    				        return false;
		    				    }
		    				}).lock();
		    				return;
		    			}
		    		},
		    		error: function(result){
		    			alert("ajax loser");
		    			alert(result.result);
		    			window.location.href="/ClassManage/logon.do?action=error";
		    			return;
		    		}
		    		
		    	});
		    	
		    },
		    cancel: function(){
		    	this.close();
		        return false;
		    }
		}).lock();
	}
	
}