function insertStudent() {
	var dialog=art.dialog({
		id : 'insert',
		width:'230px',
		height:'370px',
		padding: 0,
		title : false,
		cancel:false
	}).lock();
	// jQuery ajax   
	$.ajax({
	    url: "/ClassManage/addressBook.do?action=addStudentView&login_id="+$('#login_id').val(),
	    success: function (data) {
	        dialog.content(data);
	    },
	    cache: false
	});
	
}
function add_close(){
	art.dialog.list['insert'].close();
}

function findStundent() {
	window.location.href="/ClassManage/addressBook.do?action=findSomeStudent&find_name="+$('#find_n').val()+"&find="+$('.find_text').val().trim()+"&login_id="+$('#login_id').val();
}

function find_change(){
	var text=$('#find_n').val();
	if(text=="Number")
		$('.find_text').attr("placeholder","请输入学号");
	else if(text=="Sname")
		$('.find_text').attr("placeholder","请输入姓名");
	else if(text=="Address")
		$('.find_text').attr("placeholder","请输入地址");
}

function getInformation(id) {
	var dialog=art.dialog({
		id : 'look',
		width:'230px',
		height:'370px',
		padding: 0,
		title : false,
		cancel:false
	}).lock();
	// jQuery ajax   
	$.ajax({
	    url: "/ClassManage/addressBook.do?action=getStudentInformation&id="+id,
	    success: function (data) {
	        dialog.content(data);
	    },
	    cache: false
	});
}

function look_close(){
	art.dialog.list['look'].close();
}

function modifyStudent(id) {
	var dialog=art.dialog({
		id : 'modify',
		width:'230px',
		height:'370px',
		padding: 0,
		title : false,
		cancel:false
	}).lock();
	// jQuery ajax   
	$.ajax({
	    url: "/ClassManage/addressBook.do?action=modifyStudentView&id="+id,
	    success: function (data) {
	        dialog.content(data);
	    },
	    cache: false
	});
}
function modify_close(){
	art.dialog.list['modify'].close();
}
function delStudent(id) {
	art.dialog({
	    title: '提问',
	    content: '是否删除该学生账号？',
	    icon: 'question',
	    ok: function(){
	    	
	    	$.ajax({
	    		type: "post",
	    		data: {"id":id},
	    		dataType:"json",
	    		url:"/ClassManage/addressBook.do?action=delOne",
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

function choosePhoto(){
	 $('#uploadFile').click();
}

function insert(){
	if($("#insert_name").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入姓名!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#insert_name").focus();
		    }
		}).lock();
		return;
	}
	if($("#insert_number").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入学号!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#insert_number").focus();
		    }
		}).lock();
		return;
	}
	if($("#insert_telephone").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入Tel!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#insert_telephone").focus();
		    }
		}).lock();
		return;
	}
	if($("#insert_dormitory").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入宿舍!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#insert_dormitory").focus();
		    }
		}).lock();
		return;
	}
	if($("#insert_address").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入地址!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#insert_address").focus();
		    }
		}).lock();
		return;
	}
	if($("#insert_password").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入密码!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#insert_password").focus();
		    }
		}).lock();
		return;
	}
	
	$.ajax({
		type: "post",
		data: $("#insert_form").serialize(),
		dataType:"json",
		url:"/ClassManage/addressBook.do?action=addOneStudent",
		success:function(result){
			if (result.result=="ok"){
				art.dialog({
					drag: false,
					resize: false,
					cancel:false,
					title: '成功',
				    icon: 'succeed',
				    content:"添加成功",
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
				    content: '添加失败',
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
	
}

function modify(){
	if($("#modify_name").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入姓名!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#modify_name").focus();
		    }
		}).lock();
		return;
	}
	if($("#modify_number").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入学号!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#modify_number").focus();
		    }
		}).lock();
		return;
	}
	if($("#modify_telephone").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入Tel!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#modify_telephone").focus();
		    }
		}).lock();
		return;
	}
	if($("#modify_dormitory").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入宿舍!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#modify_dormitory").focus();
		    }
		}).lock();
		return;
	}
	if($("#modify_address").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入地址!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#modify_address").focus();
		    }
		}).lock();
		return;
	}
	if($("#modify_password").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入密码!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#modify_password").focus();
		    }
		}).lock();
		return;
	}
	
	$.ajax({
		type: "post",
		data: $("#modify_form").serialize(),
		dataType:"json",
		url:"/ClassManage/addressBook.do?action=modifyOne",
		success:function(result){
			if (result.result=="ok"){
				art.dialog({
					drag: false,
					resize: false,
					cancel:false,
					title: '成功',
				    icon: 'succeed',
				    content:"修改成功",
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
				    content: '修改失败',
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
	
}

function chooose_photo(id){
	art.dialog.open("/ClassManage/addressBook.do?action=modify_photo&login_id="+id,{
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
}

