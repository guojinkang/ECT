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
						<a href="user.jsp">
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
					<span>完成记录</span>
				</div>
				<div class="container">
				
						<div class="ydc-panes">
								<div class="ydc-pane" style="display:block;">
									<div class="clearfix">
										<div class="fl ydc-group-sel">
											<select>
												<option>全部类型</option>
												<option>求人</option>
												<option>求物</option>
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
											<input type="text" placeholder="请输入关键词进行搜索">
											<button class="ydc-group-button">搜 索</button>
										</div>
									</div>
								<div class="ydc-group-altogether">共<span>9</span>条内容</div>
									<div class="ydc-group-table">



										<div class="ydc-group-table-item">
											<div class="ydc-group-table-item-img">
												<img src="admin/images/ad/Cache_66110aad98cfb41e.gif" alt="">
											</div>
											<div class="ydc-actions">
												<div>
													<button class="ydc-actions-trigger"></button>
												</div>
											</div>
											<div class="ydc-group-table-item-text">
												<span>
													<a href="#">惊！河北师范大学软件学院抓到一只吃汉堡的海星</a>
												</span>
	
											</div>
											<div class="ydc-group-table-item-info">
												<b style="color:#FF7F00;font-size:24px">价格：999￥</b>
												<span>发布时间：2018-05-15</span>
											</div>
										</div>
										
										


									</div>


								</div>



								<div class="ydc-pagination">
									<ol>
										<li class="ydc-previous-item">
											<button class="ydc-previous-item-btn-medium ydc-disabled">
												<span>上一页</span>
											</button>
										</li>
										<li>
											<button class="ydc-previous-item-btn-medium cur">1</button>
										</li>
										<li>
											<button class="ydc-previous-item-btn-medium">2</button>
										</li>
										<li>
											<button class="ydc-previous-item-btn-medium">3</button>
										</li>
										<li class="ydc-previous-item">
											<button class="ydc-previous-item-btn-medium">
												<span>下一页</span>
											</button>
										</li>
										<li class="ydc-item-quick">
											第<div class="ydc-item-quick-kun"><input type="number" aria-invalid="false" class=""></div>页
											<button style="margin-left:5px;" class="ydc-previous-item-btn-medium">
												<span>跳转</span>
											</button>
										</li>
									</ol>
								</div>
								
								</div>
							
						</div>
						
						
					</div>
				</div>
			</div>
		</div>
	</body>

</html>