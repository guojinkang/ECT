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
					<span>发布记录</span>
				</div>
				<div class="container">
				
								
								<div class="ydc-group-altogether">共<span>${count }</span>条内容</div>
								<div class="ydc-pane" style="display:block;">
									<c:forEach var="p" items="${page.list}"> 
									<div class="ydc-group-table">
										<div class="ydc-group-table-item">
											<div class="ydc-group-table-item-img">
												<img src="${p.pricture}" width="133px" height="95px">
											</div>
											<div class="ydc-actions">
												<div>
													<button class="ydc-actions-trigger"></button>
												</div>
											</div>
											<div class="ydc-group-table-item-text">
												<span>
													<a href="#">${p.title}</a>
												</span>
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
											<button class="ydc-previous-item-btn-medium">
												<span><a href="userpublishsbypage?pagenum=${page-1 }">上一页</a></span>
											</button>
										</li>
										<li>
											<button class="ydc-previous-item-btn-medium"><a href="userpublishsbypage?pagenum=1">1</a></button>
										</li>
										<li>
											<button class="ydc-previous-item-btn-medium"><a href="userpublishsbypage?pagenum=2">2</a></button>
										</li>
										<li>
											<button class="ydc-previous-item-btn-medium"><a href="userpublishsbypage?pagenum=3">3</a></button>
										</li>
										<li class="ydc-previous-item">
											<button class="ydc-previous-item-btn-medium">
												<span><a href="userpublishsbypage?pagenum=${page+1 }">下一页</a></span>
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
	</body>
</html>