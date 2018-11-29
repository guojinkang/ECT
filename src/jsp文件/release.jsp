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
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" href="css/ssi-uploader.css"/>
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
										<a href="Searchtype?searchtype=1">跑腿代购</a>
									</li>
									<li>
										<a href="Searchtype?searchtype=2">问题咨询</a>
									</li>
									<li>
										<a href="Searchtype?searchtype=3">代课替课</a>
									</li>
									<li>
										<a href="Searchtype?searchtype=4">物品租赁</a>
									</li>
									<li>
										<a href="Searchtype?searchtype=5">失物招领</a>
									</li>
									<li>
										<a href="Searchtype?searchtype=6">打工兼职</a>
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
                                        <li class="hit">发布任务</li>
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

 										 <form action="publish" method="post" enctype="multipart/form-data">
                                        <div class="ydc-release-form-group ">
                                            <div class="ydc-warning-default">
                                                <p>标题字数需在11字到30字之间。</p>
                                            </div>
                                            <div class="ydc-release-form-group-input">
                                                <input type="text" name="title" class="ydc-form-control"  placeholder="任务标题" >
                                            </div>
                                        </div>

                                         <div class="ydc-release-form-group ">
                                            <div class="ydc-release-form-group-input">
                                                <input type="text" name="context" class="ydc-form-control"  placeholder="任务描述" >
                                            </div>
                                        </div>

                                         <div class="ydc-release-form-group ">
                                            <div class="ydc-release-form-group-input">
                                                <input type="text" name="price" class="ydc-form-control" placeholder="任务价格">
                                            </div>
                                        </div>



                                        <div class="ydc-form-city">
                                           
                                                <div class="aui-card-form-item">
                                                    <label class="aui-card-form-label">任务分类:</label>
                                                    <div class="aui-card-form-input">
                                                        <select id="province">
                                                            <option>跑腿代购</option>
                                                            <option>代课替课</option>
                                                        </select>
                                                        <select class="city">
                                                            <option>取快递</option>
                                                            <option>带饭</option>
                                                        </select>
                                                        <select class="city" style="display:none">
                                                            <option>公教楼</option>
                                                            <option>体育课</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                
                                                    
                                               
												<!-- <div class="container">
                                                   <div class="row">
														<div class="col-md-12">
                                                            <label class="aui-card-form-label">图片描述:</label>
                                                            <input name="file" type="file"  id="ssi-upload3"/>
                                                        </div>
                                                        
                                                    </div> 
                                                   </div>-->
                                                    <input id="file" type="file" name="files1" />
     											  	<input type="button" onclick="doUpload()" value="提交" />
                                               
                                                
                                                
                                                <div class="ydc-btn">
                                                    <input type="submit" class="btn" value="立即发布">
                                                    
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- right end -->
                </div>
            </div>
        </section>
        <!-- content YDC end -->
        <script type="text/javascript" src="admin/js/nicEdit.js"></script>
        <script type="text/javascript" src="admin/js/upImg.js"></script>
        <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
		<script src="js/ssi-uploader.js"></script>
        <script type="text/javascript">
        function doUpload() {  
        	var e = e || window.event;
            var files = e.target.files;
            var file = files[0];
        	 var username = $('.username').val();
             var formData = new FormData();
             formData.append('files1', file);
             console.log(file);
            $.ajax({  
                 url: 'uploadfile' ,  
                 type: 'POST',  
                 data: formData,  
                 async: false,  
                 cache: false,  
                 contentType: false,  
                 processData: false,  
                 success: function (returndata) {  
                     alert(returndata);  
                 },  
                 error: function (returndata) {  
                     alert(returndata);  
                 }  
            });  
       }
   
    	$('#ssi-upload').ssi_uploader({url:'#',maxFileSize:6,allowed:['jpg','gif','png']});
    	$('#ssi-upload2').ssi_uploader({url:'#',preview:false,allowed:['jpg','gif','png']});
    	$('#ssi-upload3').ssi_uploader({url:'#',dropZone:false,allowed:['jpg','gif','png']});
    	
	    jQuery(function(){
	        upload_start();
	    });
	    //tab切换
	    $(function(){
	        $('.aui-ad-tab-title ul li').click(function(){
	            $(this).addClass('aui-current').siblings().removeClass('aui-current');
	            $('.aui-ad-tab-body>div:eq('+$(this).index()+')').show().siblings().hide();
	        })
	    });
	
        </script>
        <script type="text/javascript">
            
	    bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });//编辑器
	
        </script>
        <script type="text/javascript">
            
	    
        </script>
        <script type="text/javascript">
            
	    $(function(){
	        $('.ydc-tabPanel ul li').click(function(){
	            $(this).addClass('hit').siblings().removeClass('hit');
	            $('.ydc-panes>div:eq('+$(this).index()+')').show().siblings().hide();
	        })
	    })//tab
	
        </script>
        <script type="text/javascript">
            
	    function textLimitCheck(thisArea, maxLength){
	        if (thisArea.value.length > maxLength){
	            alert(maxLength + ' 个字限制. \r超出的将自动清除.');
	            thisArea.value = thisArea.value.substring(0, 30);
	            thisArea.focus();    }
	        messageCount.innerText = thisArea.value.length;
	        messageCount1.innerText = thisArea.value.length;
	        messageCount2.innerText = thisArea.value.length;
	    }//标题输入框字数限制
	
        </script>
    </body>
</html>
