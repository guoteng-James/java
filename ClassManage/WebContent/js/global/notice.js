
function add(id) {
	art.dialog.open("/ClassManage/notice.do?action=toAdd&login_id="+id,{
		title:"添加",
		id : 'insert',
		width:430,
		height:330,
		padding: 0
	}).lock();
}
function insert() {
	if($("#insert_title").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入标题!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#insert_title").focus();
		    }
		}).lock();
		return;
	}
	if($("#insert_content").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入内容！',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#insert_content").focus();
		    }
		}).lock();
		return;
	}
	
	$.ajax({
		type: "post",
		data: $("#insert_form").serialize(),
		dataType:"json",
		url:"/ClassManage/notice.do?action=addOneNotice",
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

function update_view(id) {
	art.dialog.open("/ClassManage/notice.do?action=toModify&login_id="+id,{
		title:"修改",
		id : 'modify',
		width:430,
		height:330,
		padding: 0
	}).lock();
}

function modify() {
	if($("#modify_title").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入标题!',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#modify_title").focus();
		    }
		}).lock();
		return;
	}
	if($("#modify_content").val()==""){
		art.dialog({
		    title: '错误',
		    content: '请输入内容！',
		    icon: 'error',
		    ok: function(){
		    	this.close();
		    	$("#modify_content").focus();
		    }
		}).lock();
		return;
	}
	
	$.ajax({
		type: "post",
		data: $("#modify_form").serialize(),
		dataType:"json",
		url:"/ClassManage/notice.do?action=modifyNotice",
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

///ClassManage/notice.do?action=deleteNotice
function delete_notice(id) {
	art.dialog({
	    title: '提问',
	    content: '是否删除该公告？',
	    icon: 'question',
	    ok: function(){
	    	
	    	$.ajax({
	    		type: "post",
	    		data: {"xx":""},
	    		dataType:"json",
	    		url:"/ClassManage/notice.do?action=deleteNotice&id="+id,
	    		success:function(result){
	    			if (result.substr(11,2)=="ok"){
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