$(function(){
    // mav收缩展开
    $('.mav-item>a').on('click',function(){
        if (!$('.mav').hasClass('mav-mini')) {
            if ($(this).next().css('display') == "none") {
                //展开未展开
                $('.mav-item').children('ul').slideUp(300);
                $(this).next('ul').slideDown(300);
                $(this).parent('li').addClass('mav-show').siblings('li').removeClass('mav-show');
            }else{
                //收缩已展开
                $(this).next('ul').slideUp(300);
                $('.mav-item.mav-show').removeClass('mav-show');
            }
        }
    });
    //mav-mini切换
    $('#mini').on('click',function(){
        if (!$('.mav').hasClass('mav-mini')) {
            $('.mav-item.mav-show').removeClass('mav-show');
            $('.mav-item').children('ul').removeAttr('style');
            $('.mav').addClass('mav-mini');
        }else{
            $('.mav').removeClass('mav-mini');
        }
    });
    
    	//计算内容区域高度
	var calcHeight = function(){
		var browserHeight = $(window).innerHeight();
		var topHeight = $('#mainFrameHeadBar').outerHeight(true);
		var tabMarginTop = parseInt($('#mainFrameTabs').css('margin-top'));//获取间距
		var tabHeadHeight = $('ul.nav-tabs',$('#mainFrameTabs')).outerHeight(true) + tabMarginTop;
		var contentMarginTop = parseInt($('div.tab-content',$('#mainFrameTabs')).css('margin-top'));//获取内容区间距
		var contentHeight = browserHeight - topHeight - tabHeadHeight - contentMarginTop;
		$('div.tab-content',$('#mainFrameTabs')).height(contentHeight);
	};
	//菜单点击
	$('a',$('#menuSideBar')).on('click', function(e) {
		e.stopPropagation();
		var li = $(this).closest('li');
		var menuId = $(li).attr('mid');
		var url = $(li).attr('funurl');
		var title = $(this).text();
		$('#mainFrameTabs').bTabsAdd(menuId,title,url);
		
		//计算Tab可用区域高度
		calcHeight();
	});
	
	$('#modifypassword').on('click',function(){
		window.location.href="/ClassManage/main.do?action=modify_password&login_id="+$('#id').val();
	});
	
	$('#close').on('click',function(){
		 art.dialog({
			    title: '提问',
			    content: '是否注销账号？',
			    icon: 'question',
			    ok: function(){
			    	window.location.href="/ClassManage/logon.do?action=logout";
			    },
			    cancel: function(){
			    	this.close();
			        return false;
			    }
			}).lock();
	});
	
	$('#welcome').on('click',function(){
      $('#home').click();
    });
	
	$('#login_information_1').on('click',function(){
	  $('#login_information').click();
    });
	
	$('#class_information_1').on('click',function(){
		  $('#class_information').click();
	});
	
	$('#gonggao_1').on('click',function(){
		  $('#gonggao').click();
	});
	
	$('#photo_1').on('click',function(){
		  $('#photo').click();
	});
	
	$('#close_1').on('click',function(){
		  $('#close').click();
	});
	
	$('#modifypassword_1').on('click',function(){
		$('#modifypassword').click();
	});
	
	//初始化
	$('#mainFrameTabs').bTabs();
	
});