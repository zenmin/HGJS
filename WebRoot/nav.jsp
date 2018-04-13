<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<link rel="stylesheet" type="text/css" href="css/huangguan4.css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>

<script type="text/javascript" src="js/nav.js"></script>

<style>
<!--

-->

.ul2{
}


</style>


<div class="product_left">
	<ul class="ul1">
		<li><span class="left">产品系列</span>
			<div class="xian"></div></li>
	</ul>

	<ul class="ul2">
		<li><a href="#" style="text-decoration: none;"  class="xl"  id="xdxl">
		<img class="xdxl_img" src="Images/list_green.gif" /><span
				style="font-size: 12px; margin-left: 13px; color: #9e875e; font-weight: bold;">现代系列</span></a></li>
		<ul>
			<li class="xdxl" style="margin-left: -23px;">
			<img
				src="Images/lsit_orange.gif" /><span
				style="font-size: 12px; margin-left: 13px; color: #b17628;">自由自然</span></li>
			<li class="xdxl" style="margin-left: -23px;">
			<img
				src="Images/lsit_orange.gif" /><span
				style="font-size: 12px; margin-left: 13px; color: #b17628;">完美的一天</span></li>
			<li class="xdxl" style="margin-left: -23px;">
			<img
				src="Images/lsit_orange.gif" /><span
				style="font-size: 12px; margin-left: 13px; color: #b17628;">单身贵族</span></li>
		</ul>
	</ul>

	<ul class="ul2">
		<li><a href="#" style="text-decoration: none;"  class="xl"  id="omxl"><img  class="omxl_img"
				src="Images/list_green.gif" /><span
				style="font-size: 12px; margin-left: 13px; color: #9e875e; font-weight: bold;">欧美系列</span></a></li>
		<ul>
			<li class="omxl" style="margin-left: -23px;"><img
				src="Images/lsit_orange.gif" /><span
				style="font-size: 12px; margin-left: 13px; color: #b17628;">自由自然</span></li>
			<li class="omxl" style="margin-left: -23px;"><img
				src="Images/lsit_orange.gif" /><span
				style="font-size: 12px; margin-left: 13px; color: #b17628;">完美的一天</span></li>
			<li class="omxl" style="margin-left: -23px;"><img
				src="Images/lsit_orange.gif" /><span
				style="font-size: 12px; margin-left: 13px; color: #b17628;">单身贵族</span></li>
		</ul>
	</ul>

	<ul class="ul2">
        <li><a href="#" style="text-decoration: none;"  class="xl"  id="cgxl"><img  class="cgxl_img"
                src="Images/list_green.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #9e875e; font-weight: bold;">橱柜系列</span></a></li>
        <ul>
            <li class="cgxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">自由自然</span></li>
            <li class="cgxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">完美的一天</span></li>
            <li class="cgxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">单身贵族</span></li>
        </ul>
    </ul>


	<ul class="ul2">
        <li><a href="#" style="text-decoration: none;"  class="xl"  id="kxl"><img  class="kxl_img"
                src="Images/list_green.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #9e875e; font-weight: bold;">KTV专用系列</span></a></li>
        <ul>
            <li class="kxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">自由自然</span></li>
            <li class="kxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">完美的一天</span></li>
            <li class="kxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">单身贵族</span></li>
        </ul>
    </ul>


	<ul class="ul2">
        <li><a href="#" style="text-decoration: none;"  class="xl"  id="tmxl"><img  class="tmxl_img"
                src="Images/list_green.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #9e875e; font-weight: bold;">藤木系列</span></a></li>
        <ul>
            <li class="tmxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">自由自然</span></li>
            <li class="tmxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">完美的一天</span></li>
            <li class="tmxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">单身贵族</span></li>
        </ul>
    </ul>

	<ul class="ul2">
        <li><a href="#" style="text-decoration: none;"  class="xl"  id="smxl"><img  class="smxl_img"
                src="Images/list_green.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #9e875e; font-weight: bold;">实木系列</span></a></li>
        <ul>
            <li class="smxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">自由自然</span></li>
            <li class="smxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">完美的一天</span></li>
            <li class="smxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">单身贵族</span></li>
        </ul>
    </ul>

	<ul class="ul2">
        <li><a href="#" style="text-decoration: none;" class="xl" id="pxl"><img  class="pxl_img"
                src="Images/list_green.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #9e875e; font-weight: bold;">品牌系列</span></a></li>
        <ul>
            <li class="pxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">自由自然</span></li>
            <li class="pxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">完美的一天</span></li>
            <li class="pxl" style="margin-left: -23px;"><img
                src="Images/lsit_orange.gif" /><span
                style="font-size: 12px; margin-left: 13px; color: #b17628;">单身贵族</span></li>
        </ul>
    </ul>
</div>

<div></div>

