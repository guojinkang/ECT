<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<title>Home</title>

<!-- For-Mobile-Apps -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hotel Booking Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //For-Mobile-Apps -->

<!-- Style --> <link rel="stylesheet" href="css/style-book.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<!-- JavaScript --> <script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>
 
<h1 class="book">订 单 详 情 </h1>

<div class="reg">

		<h1>请确认订单</h1>
		<form action="order" method="post">
		<div class="members">
			<div class="adult">
				<h2>任务名称</h2>
					<div class="dropdown-button">           			
				    	<select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
								<option value="">${publish.title }</option>
								
						</select>
					</div>
			</div>

			<div class="child">
				<h2>任务金额</h2>
					<div class="dropdown-button">         			
			    		<select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
							<option value="">${publish.price }</option>
						</select>
					</div>
			</div>
		<div class="clear"></div>
		</div>

		<div class="suite">
			<div class="dropdown-button">
				<h2>请选择交易方式</h2>           			
    			<select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
					<option value="1">微信</option>
					<option value="1">支付宝</option>
					<option value="2">建设银行</option>
					<option value="2">农业银行</option>
					<option value="2">工商银行</option>
					<option value="2">中国银行</option>
				</select>
			</div>
		</div>

		<div class="book-pag">
			<h2>预计完成时间</h2>
			<div class="book-pag-frm1">
				<input class="dropdown"  type="text" style="height: 29px; width: 310px;">
			</div>
		<div class="clear"></div>
		</div>	

		<!--Date Picker-->
			
			<script src="js/jquery-ui.js"></script>
					  <script>
							  $(function() {
							    $( "#datepicker,#datepicker1,#datepicker2" ).datepicker();
							  });
					  </script>
		<!--//Date Picker-->

		<div class="rs">					
				<div class="check_box"> <div class="radio"> <label><input type="checkbox" name="radio" checked=""><i></i>同意海星网服务协议
				</label> </div></div>
		</div>

	
		<div class="submit">
				<input type="submit" class="book" value="立即接单">
		</div>
		</form>
</div>

<div class="reg-footer">
     <p>Copyright &copy; 2018.Company name All rights reserved.</p>
</div>

</body>
</html>