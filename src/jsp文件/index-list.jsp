<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name='TTUNION_verify' content='b846c3c2b85efabc496d2a2b8399cd62'>
	<meta name="sogou_site_verification" content="gI1bINaJcL"/>
	<meta name="360-site-verification" content="37ae9186443cc6e270d8a52943cd3c5a"/>
	<meta name="baidu_union_verify" content="99203948fbfbb64534dbe0f030cbe817">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="apple-touch-fullscreen" content="yes">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE;chrome=1">
	<meta name="format-detection" content="telephone=no">
	<meta name="keywords" content="一点车 -  让您多懂一点车,一点车，让您多懂一点车的常识，在这里，您会看到汽车相关的知识，汽车日常保养，汽车多用小知识，汽车简单维修以及清洗保养等等。">
	<meta name="description" content="一点车 -  让您多懂一点车,一点车，让您多懂一点车的常识，在这里，您会看到汽车相关的知识，汽车日常保养，汽车多用小知识，汽车简单维修以及清洗保养等等。。">
	<meta name="author" content="AUI, a-ui.com">
	<meta name="baidu-site-verification" content="ZVPGgtpUfW"/>
	<title>海星网</title>
	<!--网站图标ico -->
	<link rel="icon" type="image/x-icon" href="images/favicon.ico">
	<!--css -->
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/icomoon.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/flexslider.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link href="iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">
	<link type="text/css" rel="stylesheet" href="admin/css/core.css">
	<link type="text/css" rel="stylesheet" href="admin/css/icon.css">
	<link type="text/css" rel="stylesheet" href="admin/css/home.css">
</head>
<script type="text/javascript">
function Search()
	{
		var search=document.getElementById("search").value;
		var type=document.getElementById("type").value;
		window.location.href="/ECTPrj/indexlist?pageNum=1&search="+search+"&type="+type;
	}
function sw()
	{
		var sw=document.getElementById("switch").value;
		if(sw==""){
			
		}
		else{
			window.location.href="/ECTPrj/indexlist?pageNum="+sw+"&search=${search}&type=${type}";
		}
	}
</script>
<body>

<!-- head YDC begin -->
	<%@include file="head.jsp" %>
<!-- head YDC end -->

<!-- content YDC begin -->
	<section>
		<div class="ydc-content-slide ydc-body">
			<div class="ydc-flex">
				<!-- left begin -->
				<div class="ydc-column ydc-column-2">
					<div class="ydc-menu">
						<ul>
							<li class="ydc-menu-item">
								<a href="release.jsp"><i class="ydc-icon ydc-icon-find fl"></i>发布</a>
							</li>
							<li class="ydc-menu-item">
								<span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-file fl"></i>分类
								</span>
								<ul>
									<li>
										<a href="Searchtype?searchtype=1">跑腿代购</a>
									</li>
									<li>
										<a href="Searchtype?searchtype=2">问题咨询</a>
									</li>
									<li>
										<a href="Searchtype?searchtype=3">代课替课</a>
									</li>
									<li>
										<a href="Searchtype?searchtype=4">物品租赁</a>
									</li>
									<li>
										<a href="Searchtype?searchtype=5">失物招领</a>
									</li>
									<li>
										<a href="Searchtype?searchtype=6">打工兼职</a>
									</li>
								</ul>
							</li>
							<li class="ydc-menu-item">
								<span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-set fl"></i>设置
								</span>
								<ul>
									<li>
										<a href="info">账号信息</a>
									</li>
								</ul>
							</li>
							<li class="ydc-menu-item">
								<span class="ydc-menu-sub-title">
									<i class="ydc-icon ydc-icon-customer fl"></i>客服
								</span>
								<ul>
									<li>
										<a href="customer.html">在线咨询</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<!-- left end -->
				<!-- right begin -->
				<div class="ydc-column ydc-column-8">
					<div class="ydc-entered-box">
						<div class="ydc-content-right">
							<div class="ydc-right-head">
								<div class="ydc-right-head-info">
									<dl>
										<a href="#">
											<dt>总订阅</dt>
											<dd>14</dd>
										</a>
									</dl>
									<dl>
										<a href="#">
											<dt>总阅读</dt>
											<dd>224</dd>
										</a>
									</dl>
									<dl>
										<a href="#">
											<dt>昨日阅读</dt>
											<dd>14</dd>
										</a>
									</dl>
									<dl>
										<a href="#">
											<dt>总数据指数</dt>
											<dd>158</dd>
										</a>
									</dl>
								</div>
								<button class="btn ydc-ne-carousel" onclick="javascript:window.location.href='release.html';">
									<i class="ydc-icon-shu"></i>
									<span>发布</span>
								</button>
							</div>
							
							<!-- gongGao begin -->
							<div class="ydc-panes">
								<div class="ydc-pane" style="display:block;">
									<div class="clearfix">
										<div class="fl ydc-group-sel">
					
											<select name="type"   id="type" >
												<option value="" >全部类型</option>
												<option value="求人" ${select.one}>求人</option>
												<option value="帮人" ${select.two}>帮人</option>
											</select>
										</div>
										<div class="fl ydc-group-sel">
											<select>
												<option>全部状态</option>
												<option>未通过</option>
												<option>已发布</option>
												<option>已完成</option>
											</select>
										</div>
										<div class="fl ydc-group-input">
											<input id="search" type="text" placeholder="请输入关键词进行搜索" value="${search}">
											<button class="ydc-group-button" onclick="Search()">搜 索</button>
										</div>
									</div>
									<div class="ydc-group-altogether">共<span>${count}</span>条内容</div>

									<c:forEach var="p" items="${publishall}">
									
									<div class="ydc-group-table">



										<div class="ydc-group-table-item">
											<div class="ydc-group-table-item-img">
												<img src="${p.pricture}"  alt="">
											</div>
											<div class="ydc-actions">
												<div>
													<button class="ydc-actions-trigger"></button>
												</div>
											</div>
											<div class="ydc-group-table-item-text">
												<span>
													<a href="onepublish?publishname=${p.publishId }">${p.title}</a>
												</span>
												<span class="ydc-group-table-item-tag"><a href="#">私聊</a></span>
											</div>
											<div class="ydc-group-table-item-info">
												<b style="color:#FF7F00;font-size:24px">价格：${p.price} ￥</b>
												<span>发布时间：${p.time}</span>
											</div>
										</div>
										


									</div>
								</c:forEach>
								
								</div>



								<div class="ydc-pagination">
									<ol>
										<li class="ydc-previous-item">
											<a href="indexlist?pageNum=${page.prePageNum}&search=${search}&type=${type}"><button class="ydc-previous-item-btn-medium">
												<span>上一页</span>
											</button>
											</a>
										</li>
										<c:forEach items="${totlecount}" var="i">
										<li>
											<c:choose>
											<c:when test="${i==page.currentPageNum}">
											<a href="indexlist?pageNum=${i}&search=${search}&type=${type}"><button class="ydc-previous-item-btn-medium cur">${i}</button></a>
											</c:when>
											<c:otherwise>
											<a href="indexlist?pageNum=${i}&search=${search}&type=${type}"><button class="ydc-previous-item-btn-medium">${i}</button></a>
											</c:otherwise>
											</c:choose>
										</li>
										</c:forEach>
										<li class="ydc-previous-item">
											<a href="indexlist?pageNum=${page.nextPageNum}&search=${search}&type=${type}"><button class="ydc-previous-item-btn-medium">
												<span>下一页</span>
											</button>
											</a>
										</li>
										<li class="ydc-item-quick">
											第<div class="ydc-item-quick-kun"><input type="text" aria-invalid="false" class="" 
											style="height: 20px;" id="switch"></div>页
											<button style="margin-left:5px;" class="ydc-previous-item-btn-medium" onclick="sw()">
												<span>跳转</span>
											</button>
										</li>
									</ol>
								</div>
								<div class="ydc-right-banner">
									<div class="slideshow-container">
										<a href="https://xihazahuopu.taobao.com/" target="_blank" class="mySlides fade">
											<img src="admin/images/ad/ad1.jpg" style="width:100%">
										</a>
										<a href="https://weibo.com/525135676" target="_blank" class="mySlides fade">
											<img src="admin/images/ad/ad2.jpg" style="width:100%">
										</a>
										<a href="http://www.a-ui.cn/" target="_blank" class="mySlides fade">
											<img src="admin/images/ad/ad3.jpg" style="width:100%">
										</a>
									</div>
								</div>
							</div>
						</div>








							<!-- gongGao End -->
						</div>
					</div>
				</div>
				<!-- right end -->
			</div>
		</div>

		<div class="ydc-footer">
			<div>
				<p>©2018 一点车版权所有About 公司简介  联系方法  招聘信息  客户服务  隐私政策  广告服务  网站地图  意见反馈  不良信息举报</p>
			</div>
		</div>
	</section>
<!-- content YDC end -->

	
</body>
</html>