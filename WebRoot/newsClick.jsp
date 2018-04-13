<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<link rel="stylesheet" type="text/css" href="css/hgjs3.css">
<jsp:include page="head.jsp"></jsp:include>

<script type="text/javascript" src="js/news.js"  charset="UTF-8" ></script>


<div class="all">
	<jsp:include page="nav2.jsp"></jsp:include>
	<hr id="news_hr" />
	<div class="right">
		<div class="right_block1">
			<font  size="2" style="float:left;"> <strong>新闻动态</strong></font> <font
				style="float:right;color: black;font-size:12px;line-height: 20px;">当前位置：首页>新闻动态</font>
		</div>

		<!-- 			<div class="right_block1_1"></div> -->
		<div class="right_line1"></div>
		<div id="content"></div>
		<div class="right_block5" style="font-size:12px;" id="getTitle">

		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
