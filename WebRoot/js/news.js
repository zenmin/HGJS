/*获取URL参数值的方法
var getParam = function(name){  
    var search = document.location.search;  
    var pattern = new RegExp("[?&]"+name+"\=([^&]+)", "g");  
    var matcher = pattern.exec(search);  
    var items = null;  
    if(null != matcher){  
            try{  
                    items = decodeURIComponent(decodeURIComponent(matcher[1]));  
            }catch(e){  
                    try{  
                            items = decodeURIComponent(matcher[1]);  
                    }catch(e){  
                            items = matcher[1];  
                    }  
            }  
    }  
    return items;  
};  
*/

//  获取参数值
var getParam = function(name){  
    var search = document.location.search;  
    var pattern = new RegExp("[?&]"+name+"\=([^&]+)", "g");  
    var matcher = pattern.exec(search);  
    var items = null;  
    if(null != matcher){  
            try{  
                    items = decodeURIComponent(decodeURIComponent(matcher[1]));  
            }catch(e){  
                    try{  
                            items = decodeURIComponent(matcher[1]);  
                    }catch(e){  
                            items = matcher[1];  
                    }  
            }  
    }  
    return items;  

};

$(document).ready(function() {
	showNewsById();
	getTitle();
	getTitle2();
});

function showNewsById(){
	var id = getParam('id');
	$.ajax({
		cache: false,
		url:"findNewsById",            
		method:"post",
		dataType:"json",
		data:{"id":id},
		success:function(result){
			var dataObj = result, //返回json
			con = "";
			$.each(dataObj, function(index, item){
				con =  "<div class='right_block2'><font size='+2'><strong>" + 
				item.title +
				"</strong></font></div><div class='right_block3'> <font size='1' style='line-height: 24px;'>" +
				"类别：" + item.class_ + 
				"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; " +
				"发布日期："  + item.date +
				"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"发布者：" + item.author +
				"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				"点击次数：" + item.click +
				"</font></div><div class='right_block4'><font size='1' face='微软雅黑'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
				item.content + 
				"</div>";

				$("#content").append(con);
			});
		}
	});
}

function getTitle(){
	var id = getParam('id');
	var id1 = parseInt(id)-1;
	$.ajax({
		cache: false,
		url:"findNewsById",            
		method:"post",
		dataType:"json",
		data:{"id":id1},
		success:function(result){
			var dataObj = result, //返回json
			con = "";
			$.each(dataObj, function(index, item){
				con = "上一篇：<a  style='text-decoration:none;color:#661A00;' href='newsClick.jsp?id=" + 
					item.id +
					"'>" + 
					item.title +
					
						"</a>";

				$("#getTitle").append(con);
			});
		}
	});
}

function getTitle2(){
	var id = getParam('id');
	var id1 = parseInt(id)+1;
	$.ajax({
		cache: false,
		url:"findNewsById",            
		method:"post",
		dataType:"json",
		data:{"id":id1},
		success:function(result){
			var dataObj = result, //返回json
			con = "";
			$.each(dataObj, function(index, item){
				con = "<span class='span_title'>下一篇：<a style='text-decoration:none;color:#661A00;' href='newsClick.jsp?id=" + 
				item.id +
				"'>" + 
				item.title +
				"</span>";
				$("#getTitle").append(con);
			});
		}
	});
}