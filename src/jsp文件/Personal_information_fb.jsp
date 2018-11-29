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
		<link rel="stylesheet" href="css/x0popup.min.css">
		<style>
			.ri{width:100px; height:60px;float:right} 
			.b{padding:0px;border:1px solid:#ccc;border-radius:25px;}
		</style>
		
	</head>

	<body>
		<%@include file="head.jsp" %>

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
						<a href="histroy_order?username=${username.userName }&pagenum=1">
							<i class="icon iconfont icon-jilu"></i>
							历史接单
						</a>
					</li>
					<li>
						<a href="histroy_order?username=${username.userName }&pagenum=1">
							<i class="icon iconfont icon-icon--"></i>
							历史发布
						</a>
					</li>
					<li>
						<a href="histroy_order?username=${username.userName }&pagenum=1">
							<i class="icon iconfont icon-jilu"></i>
							正在发布
						</a>
					</li>
					<li>
						<a href="histroy_order?username=${username.userName }&pagenum=1">
							<i class="icon iconfont icon-icon--"></i>
							正在完成
						</a>
					</li>
					<li>
						<a href="Personal_password_change.jsp">
							<i class="icon iconfont icon-icon--"></i>
							修改密码
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
												<img src="bt/${p.pricture }" width="133px" height="95px">
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
												<div class="ri"><input type="button" value="确认完成"></div>
												<div class="ri"><button id="${p.publishId }" onclick="exec(2,this.id)">删除任务</button></div>
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
											<a href="histroy_order?pagenum=${page.prePageNum}"><button class="ydc-previous-item-btn-medium">
												<span>上一页</span>
											</button>
											</a>
										</li>
										<c:forEach var="i"  begin="1" end="${page.totalPageNum}">
										<li>
											<c:choose>
											<c:when test="${i==page.currentPageNum}">
											<a href="histroy_order?pagenum=${i}"><button class="ydc-previous-item-btn-medium cur">${i}</button></a>
											</c:when>
											<c:otherwise>
											<a href="histroy_order?pagenum=${i}"><button class="ydc-previous-item-btn-medium">${i}</button></a>
											</c:otherwise>
											</c:choose>
										</li>
										</c:forEach>
										<li class="ydc-previous-item">
											<a href="histroy_order?pagenum=${page.nextPageNum}"><button class="ydc-previous-item-btn-medium">
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
							
				</div>			
			</div>
		
<script src="js/x0popup.min.js"></script>
<script type="text/javascript">
	function exec(number,id) {
		
		z= id;
		
		x0p('警告', '你确认要删除这条任务吗', 'warning',z);
	}
	
	function sw()
	{
		var sw=document.getElementById("switch").value;
		if(sw!=""){
			
		
			window.location.href="/ECTPrj/histroy_order?pagenum="+sw;
		}
	}
</script>



	</body>
</html>