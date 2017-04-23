<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>后台管理界面-安全知识题库新增</title>
<!--bootstarp-css-->
<link href="resource/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--/bootstarp-css -->
<!--css-->
<link rel="stylesheet" href="resource/css/style.css" type="text/css" media="all" />
<!--/css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Petcare Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="resource/css/hover.css" rel="stylesheet" media="all">
<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/modernizr.custom.js"></script>
<script src="resource/js/responsiveslides.min.js"></script>
<script>
    $(function () {
      $("#slider2").responsiveSlides({
        auto: true,
        pager: true,
        speed: 300,
        namespace: "callbacks",
      });
    });
  </script>
</head>
<body>
<p style="
    text-align: center;
    font-size: 2em;
    color: #285791;
    margin-top: 50px;
"> 修改</p>

			<div class="info2">
					<div class="info2-center">
						<p>题目&nbsp;	：<textarea name="Ans1" rows="2" cols="20"></textarea></p>
					</div>
					<div class="info2-center">
						<p>题型&nbsp;：
						<select class="text" name="Uemail">
							<option value="single">单选题</option>
							<option value="multiple">多选题</option>
						</select>
						</p>
					</div>
					<div class="info2-center">
						<p>选项1：<input type="text" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>选项2：<input type="text" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>选项3：<input type="text" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>选项4：<input type="text" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>选项5：<input type="text" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>选项6：<input type="text" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>答案&nbsp;：<input type="text" class="text" name=""></p>
					</div>
					
					<div class="info2-center">
					<input type="submit" value="保存" >
					<input type="reset" value="清除" >
					</div>
				</div>
</body>
</html>