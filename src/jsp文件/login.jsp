<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<meta name="author" content="AUI, a-ui.com">
	<meta name="baidu-site-verification" content="ZVPGgtpUfW"/>
	<title>海星网-登陆</title>
	<link rel="icon" type="image/x-icon" href="favicon.ico">
	<link type="text/css" rel="stylesheet" href="admin/css/core.css">
	<link type="text/css" rel="stylesheet" href="admin/css/icon.css">
	<link type="text/css" rel="stylesheet" href="admin/css/home.css">
	<!--JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript">
		function submit1(){
			
			var name = document.getElementById("name");
			var password = document.getElementById("password");
			if(name.value==''){
				alert('用户名不能为空！');
				
				return false;
				}
				if(password.value==''){
				alert('密码不能为空！');
				
				return false;
				}
				return true;
		}
	</script>

</head>
<body>

<div class="ydc-body-content">
	<div class="ydc-body-bj">
		<div class="ydc-body-logo">
			<a href="index.jsp">
				<img src="" alt="">
			</a>
		</div>
		<div class="ydc-body-login">
			<h2>登录</h2>
			<div class="ydc-body-login-content">
			
				<form action="login" method="post" onsubmit="return submit1();">
					<div class="ydc-body-login-box">
						<div class="ydc-user-img">
							<div class="ydc-user-img-img"><img src="admin/images/icon/ph.png" alt=""></div>
						</div>
						<div class="ydc-user-border">
							<input type="text" id="name" name="name"placeholder="请输入账号">
						</div>
					</div>
					<div class="ydc-body-login-box">
						<div class="ydc-user-img">
							<div class="ydc-user-img-img"><img src="admin/images/icon/pad.png" alt=""></div>
						</div>
						<div class="ydc-user-border">
							<input type="password" id="password" name="password" placeholder="密码">
						</div>
					</div>
					<div class="ydc-bod-aq">
						<p>为了您的账号安全，请勿在公共电脑登录</p>
					</div>
					<div class="clearfix">
						<div class="fl">
							<input type="checkbox" checked="checked">
							<label>十天内免登录</label>
						</div>
						<div class="fr">
							<a href="#">忘记密码</a>
						</div>
					</div>
					<div class="ydc-body-submit">
						<input type="submit" value="立即登陆">
					</div>
					<div class="ydc-login-box">

						<a href="go-reg-reg.jsp" >立即注册</a>
						<span>|</span>
						<a href="customer.jsp" target="_blank">常见问题</a>

					</div>
				</form>

			</div>

		</div>
	</div>
	<div class="ydc-footer-news">
		<div class="ydc-footer">
			<div>
				<p>©2018 海星版权所有About 公司简介  联系方法  招聘信息  客户服务  隐私政策  广告服务  网站地图  意见反馈  不良信息举报</p>
			</div>
		</div>
	</div>
</div>

<!-- head YDC begin -->
<!-- head YDC end -->

<!-- content YDC begin -->
<!-- content YDC end -->

	<script type="text/javascript" src="admin/js/jquery.min.js"></script>
	

</body>
</html>
