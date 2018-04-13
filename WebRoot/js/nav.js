$(document).ready(function() {
	$(function(){
		$(".xdxl").hide();   
		$(".omxl").hide();   
		$(".cgxl").hide(); 
		$(".txl").hide(); 
		$(".tmxl").hide();
		$(".smxl").hide();
		$(".pxl").hide();
		$(".kxl").hide();
		$("#xdxl").click(function(){
			if($(".xdxl").css('display')=='none'){
				$(".xdxl_img").attr("src","Images/green2.gif");
				$(".xdxl").show(); 
			}
			else{
				$(".xdxl_img").attr("src","Images/list_green.gif");
				$(".xdxl").hide();  
			}
			return false;
		});

		$("#omxl").click(function(){
			if($(".omxl").css('display')=='none'){
				$(".omxl_img").attr("src","Images/green2.gif");
				$(".omxl").show(); 
			}
			else{
				$(".omxl_img").attr("src","Images/list_green.gif");
				$(".omxl").hide();  
			}
			return false; 
		});

		$("#cgxl").click(function(){
			if($(".cgxl").css('display')=='none'){
				$(".cgxl_img").attr("src","Images/green2.gif");
				$(".cgxl").show(); 
			}
			else{
				$(".cgxl_img").attr("src","Images/list_green.gif");
				$(".cgxl").hide();  
			}
			return false; 
		});

		$("#kxl").click(function(){
			if($(".kxl").css('display')=='none'){

				$(".kxl_img").attr("src","Images/green2.gif");
				$(".kxl").show(); 
			}
			else{
				$(".kxl_img").attr("src","Images/list_green.gif");
				$(".kxl").hide();  
			}
			return false; 
		});

		$("#tmxl").click(function(){
			if($(".tmxl").css('display')=='none'){
				$(".tmxl_img").attr("src","Images/green2.gif");
				$(".tmxl").show(); 
			}
			else{
				$(".tmxl_img").attr("src","Images/list_green.gif");
				$(".tmxl").hide();  
			}
			return false; 
		});

		$("#smxl").click(function(){
			if($(".smxl").css('display')=='none'){
				$(".smxl_img").attr("src","Images/green2.gif");
				$(".smxl").show(); 
			}
			else{
				$(".smxl_img").attr("src","Images/list_green.gif");
				$(".smxl").hide();  
			}
			return false; 
		});
		$("#pxl").click(function(){
			$(".pxl_img").attr("src","Images/green2.gif");
			if($(".pxl").css('display')=='none'){
				$(".pxl").show(); 
			}
			else{
				$(".pxl_img").attr("src","Images/list_green.gif");
				$(".pxl").hide();  
			}
			return false; 
		});

	});   

});
