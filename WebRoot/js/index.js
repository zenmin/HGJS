$(document).ready(function() {
	showGsxw(); 
	showHyxw();
	showPro();
	

});	

// 显示公司新闻的Ajax请求
function showGsxw(){
	$.ajax({
		cache: true,		//  是否缓存
		url:"showTitleGs",    //  请求地址        
		method:"get",		// 请求方式
		dataType:"json",	// 返回结果类型
		success:function(result){	//  发送Ajax请求
			var dataObj = result, //返回json
			con = "";
			$(".msg").remove();	 // 移除无关内容
			$.each(dataObj, function(index, item){
				con =  "<span class='right'><a href='newsClick.jsp?id=" +
				item.id + 
				"'>" +
				item.title + 
				"</a><span style='float: right;'>" +
				item.date + 
				"</span></span> ";

				$("#Gsxw").append(con);	// 追加节点内容
			});
		}
	});
}

function showHyxw(){
	$.ajax({
		cache: true,
		url:"showTitleHy",            
		method:"get",
		dataType:"json",
		success:function(result){
			var dataObj = result, //返回json
			con = "";
			$(".msg").remove();
			$.each(dataObj, function(index, item){
				con =  "<span class='right'><a href='newsClick.jsp?id=" +
				item.id + 
				"'>" +
				item.title + 
				"</a><span style='float: right;'>" +
				item.date + 
				"</span></span> ";

				$("#Hyxw").append(con);
			});
		}
	});
}

function showPro(){
	$.ajax({
		cache: true,
		url:"showClassIndex",            
		method:"get",
		dataType:"json",
		success:function(result){
			var dataObj = result, //返回json
			con = "";
			$.each(dataObj, function(index, item){
				con = "<li class='right_bottom'><a href='productClick.jsp?id=" +
						item.id +
						"'><img src='Images/" +
				item.classImg + 
				"' width='190px' height='126px' /></a><br /> <span style='margin-left:65px;font-size:12px;'>" +
				item.classTitle + 
				"</span></li>";

				$("#pro").append(con);
			});
		}
	});
}
