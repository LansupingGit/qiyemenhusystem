<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@page import="qiye.util.Util"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Util.init(request);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${qiye.mingchen }</title>

<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/webmain.css" rel="stylesheet" type="text/css" />
<link href="css/ddsmoothmenu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="scripts/jquery.KinSlideshow-1.2.1.js"></script>
<script type="text/javascript" src="scripts/webtry_roll.js"></script>
<script type="text/javascript" src="scripts/ddsmoothmenu.js"></script>
<script type="text/javascript">
ddsmoothmenu.init({
	mainmenuid: "MainMenu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})
</script>
</head>
<body>
<div id="wrapper">
    <div class="top">
    <div class="logo">
    <img src="<%=basePath %>uploadfile/${qiye.logo}" width="180" height="120" />
    </div>
  </div>
  
  <div id="MainMenu" class="ddsmoothmenu">
    <ul>
      <li><a href="." title="公司主页" ><span>公司主页</span></a></li>
      <li><a href="indexmethod!single.action" title="关于我们" ><span>关于我们</span></a> </li>
      <li><a href="indexmethod!products.action" title="产品展示"><span>产品展示</span></a></li>
      <li><a href="indexmethod!xinwenlist.action" title="新闻中心"><span>新闻中心</span></a></li>
      <li><a href="indexmethod!zhaopinlist.action" title="招聘信息"><span>招聘信息</span></a></li>
        <li><a href="indexmethod!messagelist.action" title="留言反馈" id="menu_selected"><span>留言反馈</span></a></li>
      <li><a href="manage/login.jsp"  ><span>管理后台</span></a></li>
    </ul>
  </div>
  
<script type="text/javascript">
$(function(){
    $("#banner").KinSlideshow({
            moveStyle:"right",
            titleBar:{titleBar_height:32,titleBar_bgColor:"#000",titleBar_alpha:0.7},
            titleFont:{TitleFont_size:12,TitleFont_color:"#FFFFFF",TitleFont_weight:"normal"},
            btn:{btn_bgColor:"#2d2d2d",btn_bgHoverColor:"#1072aa",btn_fontColor:"#FFF",btn_fontHoverColor:"#FFF",btn_borderColor:"#4a4a4a",btn_borderHoverColor:"#1188c0",btn_borderWidth:1}
    });
})
</script>

<!-- js图片和图片得文字说明 -->
  <div id="banner">
  <c:forEach items="${piclist}" var="pic">
    <a href="."><img src="<%=basePath %>uploadfile/${pic.path }" alt="${pic.info }" width="950" height="300" /></a>
  </c:forEach>
  
    
  </div>
  
  
  
  <div id="page_main" class="clearfix">
    <div class="page-right">
      <div class="site-nav"><span>当前位置 : </span><a href=".">公司主页</a> &gt;&gt; <a href="indexmethod!messageadd.action" title="留言反馈">留言反馈</a></div>
      <div class="page-guestbook">
<script type="text/javascript">
function check()
{
	
	if((document.guestbook.Guest_Name.value=="")||(document.guestbook.Guest_Email.value=="")||(document.guestbook.Content.value=="")){
		alert("抱歉！留言提交失败，姓名、邮件地址和留言内容为必填项");
		document.guestbook.Guest_Name.focus();
		document.guestbook.Guest_Email.focus();
		document.guestbook.Content.focus();
		return false
	}
	
	/*if(document.guestbook.Guest_Name.value=="")
	{
		alert("请填写您的姓名");
		document.guestbook.Guest_Name.focus();
		return false
	}
	if(document.guestbook.Guest_Email.value=="")
	{
		alert("请填写邮件地址");
		document.guestbook.Guest_Email.focus();
		return false
	}
	if(document.guestbook.Content.value=="")
	{
		alert("请填写留言内容");
		document.guestbook.Content.focus();
		return false
	}
	
	 */
	return true;
}
</script>
      <form method="post" name="guestbook" id="guestbook" onSubmit="return check()" action="indexmethod!messageadd2.action">
      <dl class="clearfix">
      <dt>您的姓名：</dt>
      <dd><input name="Guest_Name" type="text" id="Guest_Name" /><span>*</span></dd>
      <dt>邮件地址：</dt>
      <dd><input name="Guest_Email" type="text" id="Guest_Email" /><span>*</span></dd>
      <dt>电话：</dt>
      <dd><input name="Guest_TEL" type="text" id="Guest_TEL" /></dd>
      <dt>传真：</dt>
      <dd><input name="Guest_FAX" type="text" id="Guest_FAX" /></dd>
      <dt>地址：</dt>
      <dd><input name="Guest_ADD" type="text" id="Guest_ADD" /></dd>
      <dt>邮编：</dt>
      <dd><input name="Guest_ZIP" type="text" id="Guest_ZIP" /></dd>
      <dt>留言内容：</dt>
      <dd><textarea name="Content" cols="" rows="" class="Content" id="Content"></textarea></dd>
     
      </dl>
      <p><input name="submit" type="submit" id="submit" value="提交信息" /></p>
      </form>
      </div>
    </div>
    <div class="page-left">
      <script type="text/javascript">
function fromfrom(){
var searchid = document.getElementById("searchid").value;

if("2"==searchid){

sitesearch.action="indexmethod!products.action";
sitesearch.submit();

}

if("3"==searchid){

sitesearch.action="indexmethod!xinwenlist.action";
sitesearch.submit();

}

if("4"==searchid){

sitesearch.action="indexmethod!zhaopinlist.action";
sitesearch.submit();

}

}

</script>
      
      <div class="index-search">
        <h2><span>站内搜索</span></h2>
        <form action="" method="post" id="sitesearch" name="sitesearch">
          <p>
            <select name="searchid" id="searchid">
            <option value="2">产品展示</option>
            <option value="3">新闻中心</option>
            <option value="4">招聘信息</option>
            </select>
          </p>
          <p>
            <input name="searchtext" value="${searchtext }" type="text" id="searchtext"/>
          </p>
          <p>
            <input name="searchbutton" type="submit" id="searchbutton" value="" onclick="fromfrom()" />
          </p>
        </form>
      </div>
      <div class="left-contact">
        <h2><span>联系我们</span></h2>
         <p><span>地址: </span>${qiye.dizhi }<br />
          <span>邮编: </span>${qiye.youbian }<br />
          <span>联系人: </span>${qiye.lianxiren }<br />
          <span>电话: </span>${qiye.dianhua }<br />
          <span>传真: </span>${qiye.chuanzhen }<br />
          <span>手机: </span>${qiye.shouji }<br />
          <span>邮箱: </span>${qiye.youxiang }</p>
      </div>

    </div>
  </div>
     <div id="copyright"> Copyright ©2019-0907&nbsp;<a href="http://www.gzgrand.com" >${qiye.mingchen }</a><br />
  	粤ICP备14088108号-1&nbsp&nbsp&nbsp&nbsp粤公网安备 22010202000132号 <br/>戈蓝得汽车配件有限公司 技术支持
  </div>
</div>
</body>
</html>
