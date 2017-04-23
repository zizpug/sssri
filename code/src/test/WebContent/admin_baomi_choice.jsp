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
				<div class="menu_test">
					<span class="menu-info"> </span>
						<ul class="cl-effect-test2">
							<li><a href=?choicenew class="buttom">新增</a></li>
							<li><a href=?choiceselect class="buttom">查找</a></li>
							<li><a href=?choicechange class="buttom">修改</a></li>
							<li><a href=?choicedelete class="buttom">删除</a></li>
						</ul>
				</div>
			<% 
						String a;
					
						if (request.getQueryString()==null)
						{
							a = "choicenew";
						}
						else
						{
							a = request.getQueryString();
						}
						
				%>	
			<iframe class="table" src="<% out.print(a); %>.jsp"></iframe>
		</div>
	</div>
</div>
</div>
<!-- strip end here-->
</body>
</html>