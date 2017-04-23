<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
</head>
<body>
			<div class="logo">
				<img src="resource/images/logo.png" alt="" />
			</div>
			<div class="menu">
				<span class="menu-info"> </span>
					<ul class="cl-effect-21">
						<li><a href="Information.jsp">王二</a></li>
						<li><a href="index_Logined.jsp">首页</a></li>
						<li><a href="BaomiStudy.jsp">保密知识学习</a></li>
						<li><a href=#>安全知识学习</a></li>
						<li><a href=#>员工手册</a></li>
						<li><a href=#>项目管理</a></li>
						<li><a href=# onclick="fun()">退出</a></li>
			 		<script language="javascript" type="text/javascript">
						function fun(){
							if(confirm("是否退出系统？")){
			    				alert("已退出!");
			    				$.ajax({
			    			        cache: true,
			    			        type: "Get",
			    			        dataType: "json",
			    			        url: "rest/user/logout",
			    			        async: true,
			    			        error: function(errCode, errMsg) {
			    			            alert("Connection error: "+errCode);
			    			        },
			    			        success: function(data) {
			    			        	location.href=("login.jsp");
			    			        }
			    			    });
			    				//location.href=("/rest/logout");
			    			}
			   		 	}	
					</script>
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
</body>
</html>