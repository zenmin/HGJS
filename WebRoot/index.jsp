<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<jsp:include page="head.jsp"></jsp:include>
<script type="text/javascript" src="js/index.js"></script>

<div class="homepage">
	<div class="homepage_left">
		<ul>
			<li id="Gsxw"><span class="left">&nbsp;公司新闻</span> 
			<a href="news.jsp"><input type="image"
				src="Images/more.gif" /></a>
                <br>
				<div class="xian"></div>
				<span class="right msg">正在获取最新公司新闻中...</span>
				</li>
			
			<li id="Hyxw"><span class="left">&nbsp;行业新闻</span> 
			<a href="news.jsp"><input type="image"
				src="Images/more.gif" /></a>
				<div class="xian"></div> <span class="right msg">正在获取最新行业新闻中...</span></li>
			<li><span class="left">&nbsp;公司简介</span> <input type="image"
				src="Images/more.gif" />
				<div class="xian"></div> <span class="right">
				<br>
				 <img
					style="float: left;margin-left: -30px; " src="Images/company.jpg" />
					<span
					style="float: left; width: 200px; margin-left: 18px; color: #746f6f;font-size:12px; ">&nbsp;&nbsp;皇冠家具有限公司创立于1996年，是一家专业生产高档实木家具的企业，集设计、生产、销售、服务一体化的大型企业，企业坚持不懈的在创新开拓市场上下苦工；一直以来，企业以“优质、精益求精、真心、让利消费”的经营理念，使企业在2001年度获得消费者信得过企业，2003年获得产品信得过单位；2010年获得中国知名品牌，全国用户满意品牌，中国绿色环保产品，国家竹木产品质量检验合格；2011年被评为中国中部实木家具十大品牌，中国家具协会理事单位，市守合同重信用“AA”单位。</span>
			</span></li>
		</ul>
	</div>
	<hr />
	<div class="homepage_right">
		<ul class="right_ul1">
			<li class="right_top"><span class="left">&nbsp;精品展示</span> 
			<a href="cpxl.jsp"><input type="image" src="Images/more.gif" /></a>
				<div class="xian"></div></li>

		</ul>
		<ul class="right_ul2">
			<ul  id="pro" style="list-style-type: none; margin-left: -50px; float: left;margin-top: -40px;">
			</ul>
		</ul>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>