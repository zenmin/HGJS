$(document).ready(function() {
	showGsxw(); 
	showHyxw();
	showPro();
	

});	

// ��ʾ��˾���ŵ�Ajax����
function showGsxw(){
	$.ajax({
		cache: true,		//  �Ƿ񻺴�
		url:"showTitleGs",    //  �����ַ        
		method:"get",		// ����ʽ
		dataType:"json",	// ���ؽ������
		success:function(result){	//  ����Ajax����
			var dataObj = result, //����json
			con = "";
			$(".msg").remove();	 // �Ƴ��޹�����
			$.each(dataObj, function(index, item){
				con =  "<span class='right'><a href='newsClick.jsp?id=" +
				item.id + 
				"'>" +
				item.title + 
				"</a><span style='float: right;'>" +
				item.date + 
				"</span></span> ";

				$("#Gsxw").append(con);	// ׷�ӽڵ�����
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
			var dataObj = result, //����json
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
			var dataObj = result, //����json
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
