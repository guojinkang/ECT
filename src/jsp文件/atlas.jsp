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
        <meta name="keywords" content="一点车 -  让您多懂一点车,一点车，让您多懂一点车的常识，在这里，您会看到汽车相关的知识，汽车日常保养，汽车多用小知识，汽车简单维修以及清洗保养等等。">
        <meta name="description" content="一点车 -  让您多懂一点车,一点车，让您多懂一点车的常识，在这里，您会看到汽车相关的知识，汽车日常保养，汽车多用小知识，汽车简单维修以及清洗保养等等。。">
        <meta name="author" content="AUI, a-ui.com">
        <meta name="baidu-site-verification" content="ZVPGgtpUfW"/>
       <title>海星</title>
	   <!--网站图标ico -->
	  <link rel="icon" type="image/x-icon" href="images/favicon.ico">
	  <!--css -->
	  <link rel="stylesheet" href="css/animate.css">
	  <link rel="stylesheet" href="css/icomoon.css">
	  <link rel="stylesheet" href="css/bootstrap.css">
	  <link rel="stylesheet" href="css/magnific-popup.css">
	  <link rel="stylesheet" href="css/owl.carousel.min.css">
	  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  	  <link rel="stylesheet" href="css/style.css">
	  <link href="iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">
	  <link type="text/css" rel="stylesheet" href="admin/css/core.css">
	  <link type="text/css" rel="stylesheet" href="admin/css/icon.css">
	  <link type="text/css" rel="stylesheet" href="admin/css/home.css">
        <link href="iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">
        <link type="text/css" rel="stylesheet" href="admin/css/core.css">
        <link type="text/css" rel="stylesheet" href="admin/css/icon.css">
        <link type="text/css" rel="stylesheet" href="admin/css/home.css">
        <!--JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
        <script type="text/javascript" src="admin/js/jquery-1.5.2.min.js"></script>
        <script type="text/javascript">
        var currentShowCity=0;
        $(document).ready(function(){
            $("#province").change(function(){
                $("#province option").each(function(i,o){
                    if($(this).attr("selected"))
                    {
                        $(".city").hide();
                        $(".city").eq(i).show();
                        currentShowCity=i;
                    }
                });
            });

            $("#province").change();
        });

        function getSelectValue(){
            alert("1级="+$("#province").val());
            $(".city").each(function(i,o){
                if(i == currentShowCity){

                    alert("2级="+$(".city").eq(i).val());
                }
            });
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
                <div class="ydc-flex">
                    <!-- left begin -->
                    <div class="ydc-column ydc-column-2">
                    <div class="ydc-menu">
                        <ul>
                            <li class="ydc-menu-item">
                                <a href="release.jsp"><i class="ydc-icon ydc-icon-find fl"></i>发布</a>
                            </li>
                            <li class="ydc-menu-item">
                                <span class="ydc-menu-sub-title">
                                    <i class="ydc-icon ydc-icon-file fl"></i>分类
                                </span>
                                <ul>
                                    <li>
                                        <a href="">跑腿代购</a>
                                    </li>
                                    <li>
                                        <a href="">问题咨询</a>
                                    </li>
                                    <li>
                                        <a href="">代课替课</a>
                                    </li>
                                    <li>
                                        <a href="">物品租赁</a>
                                    </li>
                                    <li>
                                        <a href="">失物招领</a>
                                    </li>
                                    <li>
                                        <a href="">打工兼职</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="ydc-menu-item">
                                <span class="ydc-menu-sub-title">
                                    <i class="ydc-icon ydc-icon-set fl"></i>设置
                                </span>
                                <ul>
                                    <li>
                                        <a href="info.jsp">账号信息</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="ydc-menu-item">
                                <span class="ydc-menu-sub-title">
                                    <i class="ydc-icon ydc-icon-customer fl"></i>客服
                                </span>
                                <ul>
                                    <li>
                                        <a href="customer.jsp">在线咨询</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                    <!-- left end -->
                    <!-- right begin -->
                    <div class="ydc-column ydc-column-8">
                        <div class="ydc-release-content">
                            <div class="ydc-tabPanel ydc-tabPanel-release">
                                <div class="ydc-release-tab-head">
                                    <ul>
                                        <li class="hit">发布文章</li>
                                        <li>发布图集</li>
                                    </ul>
                                    <div class="ydc-release-amount">
                                        <span>
                                            今日发布数量：<em>0</em>
                                            /6 <a href="standard.jsp" target="_blank">发文规范</a>
                                        </span>
                                    </div>
                                </div>
                                <div class="ydc-panes">
                                    <div class="ydc-pane" style="display:block;">
                                        <div class="ydc-release-form-group ">
                                            <div class="ydc-warning-default">
                                                <p>标题字数需在11字到30字之间。</p>
                                            </div>
                                            <div class="ydc-release-form-group-input">
                                                <input type="text" class="ydc-form-control" title="" placeholder="请输入标题，为了更好的展示效果，建议标题字数在30个汉字以内" onkeyUp="textLimitCheck(this, 30);">
                                                <div class="ydc-form-group-jl">
                                                    <span id="messageCount">0</span>
                                                    /30
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ydc-release-form-text">
                                            <textarea name="area2" style="width: 100%;">请输入内容
										</textarea>
                                        </div>
                                        <div class="ydc-form-city">
                                            <form action="">
                                                <div class="aui-card-form-item">
                                                    <label class="aui-card-form-label">分类:</label>
                                                    <div class="aui-card-form-input">
                                                        <select id="province">
                                                            <option>互联网</option>
                                                            <option>人工智能</option>
                                                            <option>人文</option>
                                                            <option>教育</option>
                                                            <option>汽车</option>
                                                            <option>游戏</option>
                                                            <option>财经</option>
                                                            <option>要闻</option>
                                                            <option>萌宝</option>
                                                            <option>艺术</option>
                                                            <option>育儿</option>
                                                            <option>职场</option>
                                                            <option>美女</option>
                                                            <option>科技</option>
                                                            <option>生活</option>
                                                            <option>社会</option>
                                                            <option>星座</option>
                                                            <option>时尚</option>
                                                            <option>旅游</option>
                                                            <option>数码</option>
                                                            <option>故事</option>
                                                            <option>搞笑</option>
                                                            <option>探索</option>
                                                            <option>手机</option>
                                                            <option>房产</option>
                                                            <option>彩票</option>
                                                            <option>小品</option>
                                                            <option>明星</option>
                                                            <option>家居</option>
                                                        </select>
                                                        <select class="city">
                                                            <option>请选择二级分类</option>
                                                        </select>
                                                        <select class="city" style="display:none">
                                                            <option>互联网金融</option>
                                                            <option>干货</option>
                                                            <option>电子商务</option>
                                                            <option>互联网+</option>
                                                            <option>物联网</option>
                                                        </select>
                                                        <select class="city" style="display:none">
                                                            <option>人机交互</option>
                                                            <option>AR</option>
                                                            <option>虚拟现实</option>
                                                        </select>
                                                        <select class="city" style="display:none">
                                                            <option>收藏</option>
                                                            <option>国学</option>
                                                            <option>哲学</option>
                                                            <option>民俗</option>
                                                            <option>风水</option>
                                                            <option>文学</option>
                                                        </select>
                                                        <select class="city" style="display:none">
                                                            <option>新车</option>
                                                            <option>用车</option>
                                                            <option>汽车保养</option>
                                                            <option>二手车</option>
                                                            <option>新车评测</option>
                                                            <option>试驾</option>
                                                        </select>
                                                        <select class="city" style="display:none">
                                                            <option>电子竞技</option>
                                                            <option>手游</option>
                                                            <option>页游</option>
                                                            <option>电视游戏</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="aui-card-form-item preview  aui-news">
                                                    <label class="aui-card-form-label">封面:</label>
                                                    <div class="aui-file-up-img" id="preview_0">
                                                        <img class="" id="imghead_0" border="0" src="admin/images/icon/noimg.gif">
                                                    </div>
                                                    <div class="aui-file-up-btn clearfix ">
                                                        <div class="idPicFile aui-btn aui-file-new">
                                                            <input type="file" name="file" id="1" class="file_photo aui-file-new-up" style="margin:0;">
                                                            <a>上传图片</a>
                                                        </div>
                                                        <div class="aui-remarks">
                                                            <p>图片尺寸建议：800*400 图片大小不超过1MB</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="ydc-btn">
                                                    <button class="btn">发布</button>
                                                    <button class="btn btn-default">保存草稿</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="ydc-pane">
                                        <div class="ydc-release-form-group ">
                                            <div class="ydc-warning-default">
                                                <p>标题字数需在11字到30字之间。</p>
                                            </div>
                                            <div class="ydc-release-form-group-input clearfix">
                                                <label class="ydc-form-group-label">标题</label>
                                                <input style="width:89.999%" type="text" class="ydc-form-control" title="" placeholder="请输入标题，为了更好的展示效果，建议标题字数在30个汉字以内" onkeyUp="textLimitCheck(this, 30);">
                                                <div class="ydc-form-group-jl">
                                                    <span id="messageCount1">0</span>/30
                                                </div>
                                            </div>
                                            <div class="ydc-release-form-group-input ydc-release-form-group-ms clearfix">
                                                <label class="ydc-form-group-label">描述</label>
                                                <input style="width:89.999%" type="text" class="ydc-form-control" title="" placeholder="请输入描述，统一描述" onkeyUp="textLimitCheck(this, 30);">
                                                <div class="ydc-form-group-jl">
                                                    <span id="messageCount2">0</span>/30
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- right end -->
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
