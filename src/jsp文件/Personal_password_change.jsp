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
		<script type="text/javascript">
		function submit3(){
			
			var newpw = document.getElementById("newpw");
			var cnewpw = document.getElementById("check_newpw");
			
			if(newpw.value=="")
				{
					alert("请输入新密码");
					return false;
				}
			if(newpw.value!=cnewpw.value){
				alert('两次密码不相同！');
				return false;
			}
			return true;
		}
	</script>
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
					<span>个人资料</span>
				</div>
				<div class="container">
				
					<div class="ydc-release-content">
						<div class="ydc-tabPanel ydc-tabPanel-release">
						
							<div class="ydc-panes">
								<div class="ydc-pane ydc-pane-clear" style="display:block;">

								

<form action="changepw" method="post" onsubmit="return submit3();">
<div class="input-control has-label-left" >
<label for="inputAccountExample3" class="input-control-label-left text-right">原密码:</label>
  <input name="oldpw" type="password" class="form-control">
  <label>
  <c:choose>
										<c:when test="${bool==0 }">
												<b style="color:red">原密码错误</b>
												<% session.setAttribute("bool", 1);%>
										</c:when>
										<c:otherwise>
											
										</c:otherwise>
				</c:choose>
</label>
</div>

<div class="input-control has-label-left has-icon-right">
 <label for="inputEmailExample3" class="input-control-label-left text-right">新密码:</label>
  <input id="newpw" name="newpw" type="password" class="form-control">
</div>

<div class="input-control has-label-left has-label-right">
  <label for="inputPasswordExample3" class="input-control-label-left text-right">确认新密码:</label>
  <input id="check_newpw" name="check_newpw" type="password" class="form-control">
</div>
<br>
<input type="submit" value="立即更改">
</form>







								</div>
							</div>
						</div>
					</div>
				
						<div class="no-doc">
					</div>
						
					</div>
				</div>
			</div>
		</div>
		
	</body>

</html>