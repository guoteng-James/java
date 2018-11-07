$(function(){
	
	$("#uploadFile").change(function(e) { 
		 var obj_file= document.getElementById("uploadFile").files;
		 var filesize = obj_file[0].size;
		 var up_filename=$('#uploadFile').val();
		 var ed=up_filename.split(".").pop();
		 var pattern = /^jpg|JPG|png|PNG|bmp|BMP|gif|GIF|jpeg|JPEG$/; 
		 if(pattern.test(ed)==true){
			 if(filesize<=10485760){//十兆
				 for (var i = 0; i < e.target.files.length; i++) {  
					 var file = e.target.files.item(i);            
					 var freader = new FileReader();  
					 freader.readAsDataURL(file);  
					 freader.onload = function(e) {  
						 var src = e.target.result; 
						 $("#img").attr("src",src);
						 $("#photo_src").attr("value",src);
						 $("#a_img_t").hide();
						 $("#up_img").show();
						 art.dialog({
							    title: '提醒',
							    content: '不要忘记点【确定上传】哦!!',
							    ok: function(){
							    	this.close();
							    }
							}).lock();
					 }  
				 }
			 }else{
				 art.dialog({
					    title: '错误',
					    content: '图片最大大小不可超过10M!',
					    icon: 'error',
					    ok: function(){
					    	this.close();
					    }
					}).lock();
			 }  
		  }else{
			  art.dialog({
				    title: '错误',
				    content: '请使用正确格式的图片!',
				    icon: 'error',
				    ok: function(){
				    	this.close();
				    }
				}).lock();
		  } 
       });
	 
	 
	 $('#a_img').on('click',function(){
	      $('#uploadFile').click();
	  });
	 
	 $('#up_img').on('click',function(){
		 $('#upload_btn').click();
	  });
	 
	 $("#upload_btn").hide();
	 
	 
});