<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script> -->
<head>
	<title></title>
</head>
<body>
	<form enctype="multipart/form-data" method="post" class="upload-cont">
    <input type="file" name="files1" class="files1">
    <input type="text" name="username" class="username">
    <input type="button" class="uploadBtn" value="点击上传">
</form>
</body>
</html>

<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script>
    $(".files1").on("change", function (e) {
        var e = e || window.event;
        var files = e.target.files;
        var file = files[0];
        //文件上传
        $(".uploadBtn").off("click").on("click", function () {
            var username = $('.username').val();
            var formData = new FormData();
            formData.append('files1', file);
            formData.append('username', username);
            console.log(file);
            $.ajax({
url: "uploadfile",
                type: "post",
                data: formData,
                contentType: false,//使用multer配合ajax时无需配置multipart/form-data，multer将自动配置，手动配置将报错，boundary not found
                processData: false,
                success: function (res) {
                    console.log(res);
                },
                error: function (err) {
                    console.log(err);
                }
            });
        })
    })
</script>
