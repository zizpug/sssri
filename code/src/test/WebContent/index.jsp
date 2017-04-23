<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>主页</title>
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
			<div class="logo">
				<img src="images/logo.png" alt="" />
			</div>
			<div class="menu">
				<span class="menu-info"> </span>
					<ul class="cl-effect-21">
						<li><a href="index.jsp" class="active">首页</a></li>
						<li><a href=#>保密知识学习</a></li>
						<li><a href=#>安全知识学习</a></li>
						<li><a href=#>员工手册</a></li>
						<li><a href=#>项目管理</a></li>
						<li><a href="Login.jsp">登录</a></li>
					</ul>
			</div>
<!--script-nav -->	
			<script>
					$("span.menu-info").click(function(){
						$("ul.cl-effect-21").slideToggle("slow" , function(){
						});
					});
			</script>
<!-- /script-nav -->
			<div class="clearfix"> </div>
	</div>
</div>
<div class="header-banner">
	<div class="slider">
	    <ul class="rslides" id="slider2">
	      <li><img src="./images/beijin1.png" class="img-responsive" alt=""/></li>
	      <li><img src="./images/beijin2.png" class="img-responsive" alt=""/></li>
	      <li><img src="./images/beijin3.png" class="img-responsive" alt=""/></li>
	      <li><img src="./images/beijin4.png" class="img-responsive" alt=""/></li>
	    </ul>
	</div>
</div>
</div>
<!--/header-->
</body>
</html>