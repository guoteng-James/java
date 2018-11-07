/**
 * 禁止右键点击、copy与选择
 */
$(function(){
	//禁止右击
	$(document).bind("contextmenu",
		function(e){
			//layer.msg('禁止右击！', {time: 2000 });
			return false;
	});
	//禁止选择
	$(document).bind("selectstart",function(){return false;});
	//禁止copy
	$(document).keydown(function(){return key(arguments[0])}); 
	//方法
	function key(e){
		var keynum;
		if(window.event) // IE
		{
			keynum = e.keyCode;
		}
		else if(e.which) // Netscape/Firefox/Opera
		{
			keynum = e.which;
		}
		if(keynum == 17){ 
			//layer.msg('禁止复制！', {time: 2000});
			return false;
		}
	}
});