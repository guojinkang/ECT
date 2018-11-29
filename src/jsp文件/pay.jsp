<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>海星用户充值界面代码</title>

<link rel="stylesheet" type="text/css" href="css/amazeui.min.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />

</head>
<body>
<%@include file="head.jsp" %>
<div class="pay">
	<!--主内容开始编辑-->
	<div class="tr_recharge">
		<div class="tr_rechtext">
			<p class="te_retit"><img src="images/coin.png" alt="" />充值中心</p>
			<p>1积分是海星网的虚拟货币，你可以使用积分购买站内的服务。</p>
			<p>2.积分与人民币换算为10：1，即1元=10积分，你可以选择支付宝或者是微信的付款方式来进行充值，积分每次10个起充。</p>
		</div>
		<form action="user" class="am-form" id="doc-vld-msg" method="get">
			<div class="tr_rechbox">
				<div class="tr_rechhead">
					<img src="${username.icon }" />
					<p>充值帐号：
						<a>${username.userName }</a>
					</p>
					<div class="tr_rechheadcion">
						<img src="images/coin.png" alt="" />
						<span>当前余额：${username.point }<span>积分</span></span>
					</div>
				</div>
				<div class="tr_rechli am-form-group">
					<ul class="ui-choose am-form-group" id="uc_01">
						<li>
							<label class="am-radio-inline">
									<input type="radio"  value="10" name="docVlGender" required data-validation-message="请选择一项充值额度"> 10￥
								</label>
						</li>
						<li>
							<label class="am-radio-inline">
									<input type="radio" value="20" name="docVlGender" data-validation-message="请选择一项充值额度"> 20￥
								</label>
						</li>

						<li>
							<label class="am-radio-inline">
									<input type="radio" value="50" name="docVlGender" data-validation-message="请选择一项充值额度"> 50￥
								</label>
						</li>
						<li>
							<label class="am-radio-inline">
									<input type="radio" name="docVlGender" data-validation-message="请选择一项充值额度"> 其他金额
								</label>
						</li>
					</ul>
					<!--<span>1招兵币=1元 10元起充</span>-->
				</div>
				<div class="tr_rechoth am-form-group">
					<span>其他金额：</span>
					<input name="point" type="number" min="10" max="10000" value="" class="othbox" data-validation-message="充值金额范围：10-10000元" />
					<!--<p>充值金额范围：10-10000元</p>-->
				</div>
				<div class="tr_rechcho am-form-group">
					<span>充值方式：</span>
					<label class="am-radio">
							<input type="radio" name="radio1" value="" data-am-ucheck required data-validation-message="请选择一种充值方式"><img src="images/wechatpay.png">
						</label>
					<label class="am-radio" style="margin-right:30px;">
							<input type="radio" name="radio1" value="" data-am-ucheck data-validation-message="请选择一种充值方式"><img src="images/zfbpay.png">
						</label>
				</div>
				<div class="tr_rechnum">
					<span>应付金额：</span>
					<p class="rechnum">0元</p>
				</div>
			</div>
			<div class="tr_paybox">
				<input type="submit" value="确认支付" class="tr_pay am-btn" />
				<span>温馨提示：积分只限于在海星网中购买服务，遇到问题请拨打联系电话。</span>
			</div>
		</form>
	</div>
</div>

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/amazeui.min.js"></script>
<script type="text/javascript" src="js/ui-choose.js"></script>
<script type="text/javascript">
	// 将所有.ui-choose实例化
	$('.ui-choose').ui_choose();
	// uc_01 ul 单选
	var uc_01 = $('#uc_01').data('ui-choose'); // 取回已实例化的对象
	uc_01.click = function(index, item) {
		console.log('click', index, item.text())
	}
	uc_01.change = function(index, item) {
		console.log('change', index, item.text())
	}
	$(function() {
		$('#uc_01 li:eq(3)').click(function() {
			$('.tr_rechoth').show();
			$('.tr_rechoth').find("input").attr('required', 'true')
			$('.rechnum').text('元');
		})
		$('#uc_01 li:eq(0)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('10元');
			$('.othbox').val('');
		})
		$('#uc_01 li:eq(1)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('20元');
			$('.othbox').val('');
		})
		$('#uc_01 li:eq(2)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('50元');
			$('.othbox').val('');
		})
		$(document).ready(function() {
			$('.othbox').on('input propertychange', function() {
				var num = $(this).val();
				$('.rechnum').html(num+"元");
			});
		});
	})

	
</script>

</body>
</html>