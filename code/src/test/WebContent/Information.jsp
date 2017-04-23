<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人信息</title>
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
			<jsp:include page="navigation.jsp"></jsp:include>
		</div>
	</div>
</div>
<!--/header-->
<!--login strip start here-->
<div class="dd2">
	<div>
		<div class="container">
			<div class="img-bg2">
				<div class="information">
					<img src="resource/images/Gerenxinxi.png" />
				</div>
				<div class="photo">
					<img src="resource/images/PhotoFrame.png" width="100%" />
				</div>
				<div class="info">
					<div class="info-left">
						<p>姓&nbsp;&nbsp;名：王XX</p>
					</div>
					<div class="info-right">
						<p>工&nbsp;&nbsp;号：2000</p>
					</div>
					<div class="info-left">
						<p>性&nbsp;&nbsp;别：男</p>
					</div>
					<div class="info-right">
						<p>身&nbsp;&nbsp;份：普通用户</p>
					</div>
					<div class="info-left">
						<p>部&nbsp;&nbsp;门：系统工程</p>
					</div>
					<div class="info-right">
						<p>岗&nbsp;&nbsp;位：软件开发</p>
					</div>
					<div class="info-left">
						<p>考试情况：通过</p>
					</div>
					<div class="info-right">
						<p>考试时间：2016-01-01</p>
					</div>
				</div>			
				<div class="info1">
					<div class="change">
						<img src="resource/images/XiugaiMima.png" />
					</div>
					<div>
					<div class="info1-left">
						<p>原密码：<input type="password" class="text" name="Uemail"></p>
					</div>
					<div class="info1-right">
						<p>&nbsp;</p>
					</div>
					</div>
					<div>
					<div class="info1-left">
						<p>新密码：<input type="password" class="text" name="Uemail"></p>
					</div>
					<div class="info1-right">
						<p>重复密码：<input type="password" class="text" name="Uemail"></p>
					</div>
					</div>
					<div>
					<input type="submit" value="登录" >
					<input type="reset" value="清除" >
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--login strip end here-->
</body>
</html>