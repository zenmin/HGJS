<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<jsp:include page="head.jsp"></jsp:include>
<script type="text/javascript" src="js/productClick.js">
</script>
<script type="text/javascript">

</script>
<div class="div_center">
	<jsp:include page="nav.jsp"></jsp:include>
	<hr class="hr" />

	<div class="div_center_right">
		<!--右边中间顶部-->
		<div class="center_right_top">
			<span>产品展示</span>
		</div>
		<!--右边中间分割线-->
		<div class="center_right_cut-off"></div>
		<!--右边中间查找框-->
		<br><br>
		  <div class="right_search" style="margin-left: 20px; margin-top: 10px;">
            <div style="line-height: 10px;">
                <span
                    style="margin-top: 12px; font-size: 12px; width: 55px; height: 12px; float: left;">查找产品:</span>
                <input class="inp1" id="input_pro" type="text"
                    src="Images/search_input.jpg" /> <a href="#" id="search"> <a
                    onclick="javascript:window.location.href='cpxl.jsp'"><input class="inp2" type="image"
                        src="Images/search.gif" /></input> </a>
                </a>
            </div>
        </div>
		<!--右边中间左边图案-->
		<div class="center_right_lpicture">
			<ul>
				<li class="closed1" id="classTitle"></li>
				<div class="center_right_lpicture1" id="classImg">
				
				</div>
				<li class="closed2"><span>市场价：</span><span class="closed3">￥1350</span></li>
				<li class="closed4"><span>查看详情</span></li>
			</ul>
		</div>
		<!--右边中间左边底部-->
		<div class="center_right_bottom"></div>
		<!--右边中间右边-->
		<div class="center_right_rpicture">
			<a href="#" id="up"><div class="center_right_rpicture1"></div></a>
			<div id="out_ul">
				<ul class="img_ul">
					<li class="center_right_rpicture2 imgli"><img alt="" id="climg1"
						src="Images/goodsShow/pic_small_01.jpg"></li>
					<li class="center_right_rpicture3 imgli"><img alt="" id="climg2"
						src="Images/goodsShow/pic_small_02.jpg"></li> 
					<li class="center_right_rpicture4 imgli"><img alt="" id="climg3"
						src="Images/goodsShow/pic_small_03.jpg"></li>
					<li class="center_right_rpicture5 imgli"><img alt="" id="climg4"
						src="Images/goodsShow/pic_small_04.jpg"></li>
					<li class="center_right_rpicture7 imgli"><img alt="" id="climg5"
						src="Images/goodsShow/pic_small_05.jpg"></li>
					<li class="center_right_rpicture8 imgli"><img alt="" id="climg6"
						src="Images/goodsShow/pic_small_06.jpg" width="150px"
						height="92px"></li>

					<li class="center_right_rpicture8 imgli"><img alt="" id="climg7"
						src="Images/goodsShow/ktv_03.jpg" width="150px" height="92px"></li>



				</ul>
			</div>
			<a href="#" id="down"><div class="center_right_rpicture6"></div></a>
		</div>
	</div>
</div>
<div style="width: 984px;height: 36px;margin: auto;">
	<jsp:include page="footer.jsp"></jsp:include>
</div>

