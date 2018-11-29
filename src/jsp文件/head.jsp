<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<!--JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<title>Insert title here</title>
	<style>
	.b{padding:0px;border:1px solid:#ccc;border-radius:25px;}
	</style>
</head>
<body>
	<nav class="colorlib-nav" role="navigation">
			<div class="top-menu" style="background:#f5fff5;">
				<div class="container">
					<div class="row">
						<div class="col-xs-2">
							<div id="colorlib-logo"><img src="images/logo.jpg">&nbsp;<a href="index.jsp">海星</a></div>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li class="active"><a href="index.jsp" target="_top">首页</a></li>

								<li class="has-dropdown">
									<a href="indexlist?pageNum=1&search=&type=" target="_top">问题列表</a>
								</li>

								<li class="has-dropdown">
									<a href="index.jsp" target="_top">客服服务</a>
								</li>
								<li class="active">
									<c:choose>
										<c:when test="${empty username }">
												<a href='login.jsp' target="_top">请登陆</a>
										</c:when>
										<c:otherwise>
											<a href="Personal_information.jsp"><img class='b' src="${username.icon}" width='30'  height='30'></a>&nbsp; ${username.userName} &nbsp;<a href='loginout' target="_top">退出登录</a>
										</c:otherwise>
									</c:choose>
							
								</li>


							</ul>
						</div>
					</div>
				</div>
			</div>
		</nav>
</body>
</html>