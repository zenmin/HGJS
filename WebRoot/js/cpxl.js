$(document).ready(function() {
	showPro();
});


function showPro(){
	$.ajax({
		cache: true,
		url:"showClassTitle",            
		method:"get",
		dataType:"json",
		success:function(result){
			var dataObj = result, //返回json
			con = "";
			$.each(dataObj, function(index, item){
				con ="<li class='right_bottom'><a href='productClick.jsp?id=" +
						item.id +
						"'><img alt='' src='Images/" +
				item.classImg + 
				"' width='174px' height='117px'></a> <span class='right_bottom_span'>" +
				item.classTitle +
				"</span></li>";

				$("#cpxl").append(con);
			});
		}
	});
}

function showProByName(){
	var name= $("#input_pro").val();
	$.ajax({
		cache: true,
		url:"showClassByName",            
		method:"get",
		dataType:"json",
		data:{"name":name},
		success:function(result){
			var dataObj = result, //返回json
			con = "";
			$("#cpxl").empty();
			
			if(dataObj==""||dataObj==null){
				con ="<li style='width:350px;height: 20px;margin-top: 30px;color: red;'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;没有查询结果！</li>";
				$("#cpxl").append(con);
			}
			
			$.each(dataObj, function(index, item){
				con ="<li class='right_bottom'><a href='productClick.jsp?id=" +
						item.id +
						"'><img alt='' src='Images/" +
				item.classImg + 
				"' width='174px' height='117px'></a> <span class='right_bottom_span'>" +
				item.classTitle +
				"</span></li>";

				$("#cpxl").append(con);
			});
		}
	});
	
}