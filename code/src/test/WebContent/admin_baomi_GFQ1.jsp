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
<!--header-->
<div class="header">
	<div class="header-info">
		<div class="container">
			<jsp:include page="navigation_adm.jsp"></jsp:include>
		</div>
	</div>
</div>
<!--/header-->
<!-- strip start here-->
<div  class="dd3">
<div class="vertical_banner">
<div class="banner">
	<jsp:include page="banner.jsp"></jsp:include>
</div>
</div>
<div class="vertical_val">
	<div class="dd2">
		<div class="container">
			<p>新增填空题</p>
				<div class="info2">
					<div class="info2-center">
						<p>题目&nbsp;	：<input type="password" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>空格量：<input type="text" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>答案1：<input type="text" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>答案2：<input type="text" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>答案3：<input type="text" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>答案4：<input type="text" class="text" name=""></p>
					</div>
					<div class="info2-center">
						<p>答案5：<input type="text" class="text" name=""></p>
					</div>				
					<div>
					<input type="submit" value="保存" >
					<input type="reset" value="清除" >
					</div>
				</div>
		</div>
	</div>
</div>
</div>
<!-- strip end here-->
</body>
</html>