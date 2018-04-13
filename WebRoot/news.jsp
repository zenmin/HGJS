<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<link rel="stylesheet" type="text/css" href="css/hgjs2.css">
<jsp:include page="head.jsp"></jsp:include>
<script type="text/javascript">
    $(document).ready(function() {
    	showNewstitle();
    });
var nowPage = 1;
  function showNewstitle(){
      $.ajax({
            cache: true,
            url:"showTitle",            
            method:"get",
            dataType:"json",
            data:{"page":nowPage},
            success:function(result){
                var dataObj = result, //返回json
                con = "";
                $("#contentUl").empty();
                
                if(dataObj==""||dataObj==null){
                	alert("没有下一页啦！");
                	nowPage--;
                	 $("#nowPage").text(nowPage);
                	showNewstitle();
                }
                
                $.each(dataObj, function(index, item){
                    con = "<li><span class='span_title'><a href='newsClick.jsp?id=" + 
                    item.id + 
                    "'>"+ 
                    item.title + 
                    "</a></span><span class='span_time'><font color='#000000'>[" + 
                    item.date + 
                    "]</font></span></li>";
                    
                    $("#contentUl").append(con);
                    
                });
            }
        });
  }

  $(function(){
	  $("#nextpage").click(function(){
		  nowPage++;
		  showNewstitle();
		  $("#nowPage").text(nowPage);
		  return false;
	  });
	  
	  $("#toppage").click(function(){
          nowPage--;
          if(nowPage==0){
        	  alert("没有上一页啦！");
        	  nowPage=1;
        	  $("#nowPage").text(nowPage);
          }
          showNewstitle();
          $("#nowPage").text(nowPage);
          return false;
      });
  })
  
</script>


    <div class="all">
        <div class="left">
            <div class="left_block1">
                <font color="#660D13" size="2">产品系列</font>
            </div>
            <div class="left_line1"></div>
            <div class="left_block2">
                <ul style="margin-top: 15px;">
                    <li style="margin-bottom:7px"><strong>现代系列</strong></li>
                    <li style="margin-bottom:7px"><strong>欧美系列</strong></li>
                    <li style="margin-bottom:7px"><strong>橱柜系列</strong></li>
                    <li style="margin-bottom:7px"><strong>KTV专用系列</strong></li>
                    <li style="margin-bottom:7px"><strong>藤木系列</strong></li>
                    <li style="margin-bottom:7px"><strong>实木系列</strong></li>
                    <li style="margin-bottom:7px"><strong>品牌系列</strong></li>
                </ul>
            </div>
            <div class="left_block3">
                <font color="#660D13" size="2">联系我们</font>
            </div>
            <div class="left_line2"></div>

            <div class="left_block4">
                <pre>
                    <font color="#856101" face="宋体" size="1" style="line-height: 20px;">
  公司名称:成都皇冠家具有限
  公司
  联系人:张先生 李先生
  联系电话:028_8348588
  联系电话:028_8348588
  联系手机:13683482469
  传真号码:028_8348588
  QQ号码:153428585
  邮箱地
  址:153428585@qq.com
  网址:www.huangguan.com
  公司地址:成都市武侯区红牌
  路32号
  工厂地址:成都市温江区179
  号
                    </font>
                </pre>


            </div>
        </div>
        <hr id="news_hr" />
        <div class="right">
            <div class="right_block1">
                <font color="#660D13" size="2">新闻动态</font>
            </div>
            <div class="right_line1"></div>
            <div class="right_block2">
                <ul style="margin-top:30px;font-size: 14px;">
                    <font color="#661A00"  id="contentUl">
                    </font>

                </ul>
            </div>
            <div class="page"> 
            <input type="hidden" id="page" value="1">
                  <ul style="list-style: none;float:right;">
                    <a  href="#" id="toppage"><li style="float:left;margin-left: 10px;">上页 </li></a>
                    <li style="float:left;margin-left: 10px;"><span id="nowPage"> 1 </span></li>
                    <a href="#" id="nextpage" ><li style="float:left;margin-left: 10px;">下页</li></a>
                  </ul></div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>

