<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<script>
	function validate() {
	    var pwd1 = document.getElementById("passWord").value;
	    var pwd2 = document.getElementById("twopassWord").value;
	 
	
	    if(pwd1 == pwd2)
	     {
	        document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
	       
	     }
		else {
	        document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
	        
	     }
	}
	function submit1(){
		
		var name = document.getElementById("userName");
		var password = document.getElementById("passWord");
		var password2 = document.getElementById("twopassWord");
		if(name.value==''){
			alert('用户名不能为空！');
			
			return false;
			}
			if(password.value==''){
			alert('密码不能为空！');
			
			return false;
			}
			if(password.value.length<2)
				{
				alert('密码最短长度为2个字符');
				return false;
				}
			if(password2.value==''||password.value!=password2.value)
				{
				
				 document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
				 return false;
				}
			return true;
	}
	function checkName()
	{
		var name=document.getElementById("userName").value;
		var xmlhttp;
		if (window.XMLHttpRequest){
		    xmlhttp=new XMLHttpRequest();
		}
		else{
		    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.open("POST","checkname?name="+name,true);
		xmlhttp.send();
		xmlhttp.onreadystatechange=function(){
		    if (xmlhttp.readyState==4 && xmlhttp.status==200){
		        var res=xmlhttp.responseText;
		        
		        if(res==1){
		        	document.getElementById("msg").innerHTML="用户名可用";
		        }
		        else{
		        	if(res==12)
		      			{
		        		document.getElementById("msg").innerHTML="用户名过短";
		      			}
		        	else	
		        		document.getElementById("msg").innerHTML="该用户名已注册";
		        }
		    }
		}
	}
	</script>
	
</head>
<body>

<!-- head YDC begin -->
	<%@include file="head.jsp" %>
<!-- head YDC end -->

<!-- content YDC begin -->
	<section>
		<div class="ydc-content-slide ydc-body">
			<div class="ydc-page-content">
				<div class="ydc-reg-title">
					<ul class="clearfix">
						<li class="ydc-reg-step active">
							<h3>注册信息</h3>
						</li>
					</ul>
				</div>
				<div class="ydc-reg-form clearfix">
				
				
					<form action="regist" method="post" onsubmit="return submit1();">
					
						<div class="ydc-reg-form-class ydc-reg-form-reg">
							<div class="ydc-reg-form-group clearfix">
								<label>帐号名称:</label>
								<div class="ydc-reg-form-input">
									<input maxlength="14" type="text" id="userName" name="userName" class="ydc-form-control" autocomplete="off" placeholder="请输入2至14字的帐号名称" style="width:200px;" onBlur="checkName()">
									<div id="msg"></div>
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>帐号密码:</label>
								<div class="ydc-reg-form-input">
									<input maxlength="14" type="password" id="passWord" name="passWord" class="ydc-form-control" autocomplete="off" placeholder="请输入2至14字的字符">
									
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label>确认密码:</label>
								<div class="ydc-reg-form-input">
									<input maxlength="14" type="password" id="twopassWord" name="" class="ydc-form-control" autocomplete="off" placeholder="请输入一致的密码" onkeyup="validate()">
                        		    <span id="tishi"></span>
								</div>
							</div>
							<div class="ydc-reg-form-group clearfix">
								<label></label>
								<div class="ydc-reg-form-input ydc-reg-form-input-agreement">
									<label><input type="checkbox" value="yes" id="agreement" checked=""> 我已经阅读并同意 <a href="agreement.jsp" target="_blank">《海星网开放平台注册协议》</a>。</label>
								</div>
							</div>
						</div>
						<div class="ydc-reg-form-group">
							<div class="ydc-reg-form-button" style="margin-left:255px;">
								<input type="submit" class="btn fl" value="提交注册">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="ydc-footer">
			<div>
				<p>©2018 海星网版权所有About 公司简介  联系方法  招聘信息  客户服务  隐私政策  广告服务  网站地图  意见反馈  不良信息举报</p>
			</div>
		</div>
	</section>
<!-- content YDC end -->

</body>
</html>