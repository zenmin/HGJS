//获取参数值
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
	showProByid();
});

function showProByid(){
	var id = getParam('id');
	$.ajax({
		cache: false,
		url:"getClassById",            
		method:"post",
		dataType:"json",
		data:{"id":id},
		success:function(result){
			var dataObj = result, //返回json
			con = "";
			con1 = "";
			$.each(dataObj, function(index, item){
				con = "<img alt='' class='showimg' src='Images/" +
				item.classImg +
				"' width='400px' height='300px' />" ;
				con1 =  "<span> " +
				item.classTitle +
				"</span>";
				$("#classTitle").append(con1);
				$("#classImg").append(con);

			});
		}
	});
}

$(function(){
	//向上的按钮
	$("#up").click(function(){
		
		// 图片UL的css样式的TOP属性
		sl = parseInt($('.img_ul').css('top'));
		$('.img_ul').animate({top: sl - 110 + 'px'},'slow');//交换图片滚动
		if(sl<=-300){                              
            $('.img_ul').animate({top: '0px'},'slow');//默认图片滚动
        }
		return false;
	});
	
	// 向下的按钮
	$("#down").click(function(){
		 sl = parseInt($('.img_ul').css('top'));
	     $('.img_ul').animate({top: sl + 110 + 'px'},'slow');//交换图片滚动
	     if(sl>=90){
	    	  $('.img_ul').animate({top: '0px'},'slow');//默认图片滚动
	     }
	        return false;
    });
	$("#climg1").click(function (){
		$(".showimg").attr("src",$("#climg1")[0].src);
	});
	$("#climg2").click(function (){
        $(".showimg").attr("src",$("#climg2")[0].src);
    });
	$("#climg3").click(function (){
        $(".showimg").attr("src",$("#climg3")[0].src);
    });
	$("#climg4").click(function (){
        $(".showimg").attr("src",$("#climg4")[0].src);
    });
	$("#climg5").click(function (){
        $(".showimg").attr("src",$("#climg5")[0].src);
    });
	$("#climg6").click(function (){
        $(".showimg").attr("src",$("#climg6")[0].src);
    });
	$("#climg7").click(function (){
        $(".showimg").attr("src",$("#climg7")[0].src);
    });
	
	
});
