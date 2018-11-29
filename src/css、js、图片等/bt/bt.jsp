<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>郭金康</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.poptrox.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/init.js"></script>
		
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style-xlarge.css" />
		
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
	</head>
	<body id="top">
	
		<!-- Header -->
			<header id="header">
				<a href="../showuser" target='_top' class="image avatar"><img src="../${user.icon }" /></a>
				<h1><strong>${user.userName }</strong><br />${user.introduction }
			</header>

		<!-- Main -->
			<div id="main">
		
				<!-- One -->
					<section id="one">
						<header class="major">
							<h2>${publish.title }</h2>
						</header>
						<br><br>
						<p>${publish.context }</p>
					</section>
				
				<!-- Two -->
					<section id="two">
					<c:choose>
						<c:when test="${publish.pricture==null }">
						<h2>委托人未提交图片</h2>
						</c:when>
						<c:when test="${publish.pricture!=null }">
						<h2>图片</h2>
						</c:when>
					</c:choose>
		<div class="row">
				<c:choose>
					<c:when test="${empty publish.pricture }">
					</c:when>
					<c:otherwise>
						<article class="6u  work-item">
							<a href="${publish.pricture }" class="image fit thumb"><img width="370px" height="217px" src="${publish.pricture }" alt="" /></a>
						</article>
					</c:otherwise>
				</c:choose>
						
							
							
							<c:choose>
					<c:when test="${empty publish.pricture2 }">
					</c:when>
					<c:otherwise>
						<article class="6u  work-item">
							<a href="${publish.pricture2 }" class="image fit thumb"><img width="370px" height="217px" src="${publish.pricture2 }" alt="" /></a>
						</article>
					</c:otherwise>
				</c:choose>
							
							
							<c:choose>
					<c:when test="${empty publish.pricture3 }">
					</c:when>
					<c:otherwise>
						<article class="6u  work-item">
							<a href="${publish.pricture3 }" class="image fit thumb"><img width="370px" height="217px" src="${publish.pricture3 }" alt="" /></a>
						</article>
					</c:otherwise>
				</c:choose>
							
							<c:choose>
					<c:when test="${empty publish.pricture4 }">
					</c:when>
					<c:otherwise>
						<article class="6u  work-item">
							<a href="${publish.pricture }" class="image fit thumb"><img width="370px" height="217px" src="${publish.pricture4 }" alt="" /></a>
						</article>
					</c:otherwise>
				</c:choose>
							
		</div>
					<div style="margin-top: 25px;">
						<ul class="actions">
							<li><a href="#" class="button">询问详情</a></li>
							<li>&nbsp;&nbsp;&nbsp;</li>
							<c:choose>
							<c:when test="${publish.state==1}">
							
							</c:when>
							<c:otherwise>
							<li><a href="../booking.jsp" target="_top" class="button">立即接单</a></li>
							</c:otherwise>
							</c:choose>
						</ul>
					</div>	
					
							
						
					</section>
			</div>
		<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
					<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
					<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
				</ul>
			</footer>
	</div>
	</body>
</html>