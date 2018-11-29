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
		<style>
			.b{padding:0px;border:1px solid:#ccc;border-radius:25px;}
		</style>
	</head>

	<body>
		<%@include file="head.jsp" %>

		<div class="header">
			<div class="user-info">
				<div class="w1200">
					<div class="user-headface">
						<img src="${user.icon }"/>
					</div>
					<div class="user-account">
						<p class="tip">Hi!</p>
						<p class="account">
							<span>欢迎来到我的主页！</span>
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
						<a href="userpublishs?publishname=${user.userName }">
							<i class="icon iconfont icon-jilu"></i>
							发布记录
						</a>
					</li>
					<li>
						<a href="user-wc.jsp">
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
											<label>${user.userName }</label>
										</div>
									</div>
									<div class="ydc-reg-form-group clearfix">
										<label>帐号简介</label>
										<div class="ydc-reg-form-input">
											<label>${user.introduction }</label>
										</div>
									</div>
									<div class="ydc-reg-form-group clearfix">
										<label>姓名</label>
										<div class="ydc-reg-form-input">
											<label>${user.name }</label>
										</div>
									</div>
									<div class="ydc-reg-form-group clearfix">
										<label>所在学院</label>
										<div class="ydc-reg-form-input">
											<label>${user.major }</label>
										</div>
									</div>
									<div class="ydc-reg-form-group clearfix">
										<label>邮箱</label>
										<div class="ydc-reg-form-input">
											<label>${user.email }</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				
						<div class="no-doc">
						<img src="statics/images/no_doc.jpg"/>
						<p>暂时没有更多资料了哦~</p>
					</div>
						
					</div>
				</div>
			</div>
		</div>
	</body>

</html>