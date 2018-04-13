<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<jsp:include page="head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="css/huangguan4.css">

<script type="text/javascript" src="js/cpxl.js">
	
</script>
<script type="text/javascript" src="js/jquery.mousewheel.js"></script>
<script type="text/javascript">
	var height = $(window).height();

	$(function() {
		var px = $("#help").css("top");

		//  初始化图片位置
		$('#help').animate({top : height / 8 + 'px'}, 'slow');//交换图片滚动
	})

	//  设置图片根据屏幕上下滚动
	 $(document).ready(function () {  
		 
            var menuYloc = $("#help").offset().top;    // 获得位移高度
            
            // scroll  监听文档的滚动
            $(window).scroll(function () {  
            	//  把div的偏移量加上滑的PX  就是他新的top值
                var offsetTop = menuYloc + $(window).scrollTop()+200 + "px";  
            	
            	// animate自定义动画效果   给DIV赋值上新的top值 并且让他滑动  slow：滑动快慢
                $("#help").animate({ top: offsetTop }, { duration: 600, queue: false }, 'slow');  
            	
            });  
        });   

</script>
<div class="product">
	<jsp:include page="nav.jsp"></jsp:include>
	<hr />
	<div class="product_right">
		<ul class="ul1">
			<li><span class="left">产品系列</span>
				<div class="xian"></div></li>
		</ul>
		<div class="right_search">
			<div style="line-height: 10px;">
				<span
					style="margin-top: 12px; font-size: 12px; width: 55px; height: 12px; float: left;">查找产品:</span>
				<input class="inp1" id="input_pro" type="text"
					src="Images/search_input.jpg" /> <a href="#" id="search"> <a
					onclick="showProByName()"><input class="inp2" type="image"
						src="Images/search.gif" /></input> </a>
				</a>
			</div>
		</div>

		<div>
			<ul id="cpxl"
				style="list-style-type: none; margin-left: -40px; float: left;margin-top: -10px;">

			</ul>
		</div>
		<br>
	</div>



	<div
		style="font-size:12px;float:right;color:#660D13;margin-top:180px;margin-right: 20px;">首页
		1 2 后页 尾页</div>
</div>

<div
	style="height: 36px;width: 983px;margin-left:auto;margin-right: auto;">
	<jsp:include page="footer.jsp"></jsp:include>
</div>
<br>
<a href="http://qq.com" target="_blank">
<div id="help">
	<img alt="" src="Images/goodsList/kefu.png">
</div>
</a>
