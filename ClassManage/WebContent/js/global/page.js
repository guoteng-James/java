/**
 * 分页导航控制函数
 * @param url
 * @param pageno
 */
function navigationPage(url,pageno,queryForm) {
	var form=document.getElementById(queryForm);
	form.action = url+"&curPage="+pageno+"&pageRows="+ page_per_num.value;
	form.submit();
}
