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

		<div class="header">
			<div class="user-info">
				<div class="w1200">
					<div class="user-headface">
						<img src="${username.icon }"/>
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
						<a href="Personal_information.jsp">
							<i class="icon iconfont icon-geren"></i>
							个人资料
						</a>
					</li>
					<li>
						<a href="userpublishss?publishnamee=${username.userName }">
							<i class="icon iconfont icon-jilu"></i>
							发布记录
						</a>
					</li>
					<li>
						<a href="Personal_information_wc.jsp">
							<i class="icon iconfont icon-icon--"></i>
							完成记录
						</a>
					</li>
				</ul>
			</div>
			<div class="right">
				<div class="tap">
					<span>发布记录</span>
				</div>
				<div class="container">
				
								
								<div class="ydc-group-altogether">共<span>9</span>条内容</div>
								<div class="ydc-pane" style="display:block;">
									<c:forEach var="p" items="${userpublish}">
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