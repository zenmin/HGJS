<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("path", request.getContextPath());
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>皇冠家私</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/head.css">


<link rel="stylesheet" type="text/css" href="css/HGJS5.css">
<link rel="stylesheet" type="text/css" href="css/hgjs6.css">
<link rel="stylesheet" type="text/css" href="css/hgjs7.css">
<link rel="stylesheet" type="text/css" href="css/huangguan1.css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	setInterval("changeImg()", 1500);

	var arr = new Array();
	var a = 0;
	arr[0] = 'Images/pic_big3.jpg';
	arr[1] = 'Images/pic_big1.jpg';
	arr[2] = 'Images/pic_big2.jpg';
	arr[3] = 'Images/pic_big4.jpg';
	arr[4] = 'Images/pic_big5.jpg';
	$("#cen_top_img").attr("src", arr[0]);

	function changeImg() {
		if (a > 4) {
			a = 0;
		}
		$("#cen_top_img").attr("src", arr[a]);
		a++;
	}
</script>
</head>

<body style="margin: 0px;">
	<audio src="audio/Pianoboy - The truth that you leave.mp3"
		autoplay="autoplay" loop="loop"></audio>
	<div class="conten">
		<div class="cen">
			<div class="cen_top" style="margin-left: 1px;">
				<div class="cen_top_logo">
					<div class="cen_top_logo_img1">

						<img style="margin-top: 24px; margin-left: 13px;"
							src="Images/logo.jpg" width="" />
					</div>
					<div class="cen_top_logo_img2">
						<img style="margin-top:-13px; margin-left: 759px;"
							src="Images/phone_num.jpg" />
					</div>
				</div>
				<div class="cen_top_daohang">
					<ul>
						<li><a href="index.jsp">网站首页</a></li>
						<li><a href="news.jsp">新闻动态</a></li>
						<li><a href="cpxl.jsp">产品系列</a></li>
						<li><a href="productClick.jsp?id=1">门店展示</a></li>
						<li><a href="newsClick.jsp?id=1">品牌加盟</a></li>
						<li><a href="rczp.jsp">人才招聘</a></li>
						<li><a href="about.jsp">联系我们</a></li>
					</ul>
				</div>
				<div class="cen_top_img">
					<ul>
						<li style="margin-top: -18px;"><img id="cen_top_img"
							src="Images/pic_big3.jpg" width="972px" alt="正在加载图片"
							height="222px" /></li>
						<!-- 						<li><img src="Images/pic_big.jpg" width="972px" -->
						<!-- 							height="222px" /></li> -->
						<!-- 						<li><img src="Images/pic_big2.jpg" width="972px" -->
						<!-- 							height="222px" /></li> -->
						<!-- 						<li><img src="Images/pic_big22.jpg" width="972px" -->
						<!-- 							height="222px" /></li> -->
						<!-- 						<li><img src="Images/pic_bigd3.jpg" width="972px" -->
						<!-- 							height="222px" /></li> -->
					</ul>

				</div>
				<div class="cen_top_bottom"></div>
			</div>

		</div>
	</div>
</body>
</html>
