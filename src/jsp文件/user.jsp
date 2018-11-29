<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

		<head>
		<meta charset="UTF-8">
		<title>后台用户中心</title>
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
		<link rel="stylesheet" type="text/css" href="statics/css/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="statics/css/style.css" />
		<link type="text/css" rel="stylesheet" href="admin/css/core.css">
		<link type="text/css" rel="stylesheet" href="admin/css/icon.css">
		<link type="text/css" rel="stylesheet" href="admin/css/home.css">
		
	</head>

	<body>
		<nav class="colorlib-nav" role="navigation">
			<!--<div class="top-menu" style="background:#f5fff5;">
				<div class="container">
					<div class="row">
						<div class="col-xs-2">
							<div id="colorlib-logo"><img src="images/logo.jpg">&nbsp;<a href="index.jsp">海星</a></div>
						</div>
						<div class="col-xs-10 text-right menu-1">
							<ul>
								<li class="active"><a href="index.jsp" target="_top">首页</a></li>

								<li class="has-dropdown">
									<a href="indexlist" target="_top">问题列表</a>
								</li>

								<li class="has-dropdown">
									<a href="blog.jsp" target="_top">客服服务</a>
								</li>
								<li class="active">
									<c:choose>
										<c:when test="${empty username }">
												<a href='login.jsp' target="_top">请登陆</a>
										</c:when>
										<c:otherwise>
											<img class='b' src="${username.icon}" width='30'  height='30'>&nbsp; ${username.userName} &nbsp;<a href='loginout' target="_top">退出登录</a>
										</c:otherwise>
									</c:choose>
							
								</li>


							</ul>
						</div>
					</div>
				</div>
			</div> -->
		</nav>

		<div class="header">
			<div class="user-info">
				<div class="w1200">
					<div class="user-headface">
						<img src="statics/images/user_face.jpg"/>
					</div>
					<div class="user-account">
						<p class="tip">Hi!下午好!</p>
						<p class="account">
							<span>帐户名：汪世昭</span>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="main w1200" >
			<div class="left">
				<ul>
					<li>
						<a href="#">
							<i class="icon iconfont icon-geren"></i>
							个人资料
						</a>
					</li>
					<li>
						<a href="user-fb.jsp">
							<i class="icon iconfont icon-jilu"></i>
							发布记录
						</a>
					</li>
					<li>
						<a href="#">
							<i class="icon iconfont icon-icon--"></i>
							完成记录
						</a>
					</li>
					<li>
						<a href="#">
							<i class="icon iconfont icon-pinglun"></i>
							私聊
						</a>
					</li>
				</ul>
			</div>
			<div class="right">
				<div class="tap">
					<span>个人资料</span>
				</div>
				<div class="container">
				
					<div class="ydc-release-content">
						<div class="ydc-tabPanel ydc-tabPanel-release">
						
							<div class="ydc-panes">
								<div class="ydc-pane ydc-pane-clear" style="display:block;">
									<div class="ydc-reg-form-group clearfix">
										<label>帐号名称</label>
										<div class="ydc-reg-form-input">
											<label>汪世昭</label>
										</div>
									</div>
									<div class="ydc-reg-form-group clearfix">
										<label>帐号简介</label>
										<div class="ydc-reg-form-input">
											<label>一点车，让您多懂一点车。</label>
										</div>
									</div>
									<div class="ydc-reg-form-group clearfix">
										<label>帐号详情</label>
										<div class="ydc-reg-form-input">
											<label></label>
										</div>
									</div>
									<div class="ydc-reg-form-group clearfix">
										<label>姓名</label>
										<div class="ydc-reg-form-input">
											<label>李嘉桦</label>
										</div>
									</div>
									<div class="ydc-reg-form-group clearfix">
										<label>所在学院</label>
										<div class="ydc-reg-form-input">
											<label>软件学院</label>
										</div>
									</div>
									<div class="ydc-reg-form-group clearfix">
										<label>邮箱</label>
										<div class="ydc-reg-form-input">
											<label>aui_cn@163.com</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				
						<div class="no-doc">
						<img src="statics/images/no_doc.jpg"/>
						<p>没有更多资料了哦~</p>
					</div>
						
					</div>
				</div>
			</div>
		</div>
	</body>

</html>