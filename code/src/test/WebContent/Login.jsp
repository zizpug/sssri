<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
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
<!--login strip start here-->
<div class="dd">
	<div class="left">
		<div class="container1">
		<div class="dd-top-info">
		<div class="dd-top">
			<img src="resource/images/beijin.jpg" class="img-responsive" alt=""/>
		</div>
		</div>
		</div>
	</div>
	<div class="right">
		<div class="container1">
		<div class="dd-top-info">
		<div class="dd-top">
			<!--<form class="Ulogin" method="post" action="disposelogin.jsp"/>-->
				<div class="contact">
				<div class="container1">
				<div class="contact-info">
				<div class="login">
					<h3>请登录您的账号</h3>
						<input type="text" class="text" name="Uemail" placeholder="工号"><br>
						<input type="password" class="text" name="Upassword" placeholder="密码">	
						<div class="clearfix"> </div>
						<input type="submit"value="登录" onClick="do_Login">
						<input type="button" value="管理员登陆" onClick="window.location.href='AdminLogin.jsp'">
				</div>
				</div>
				</div>
				</div>
				</div>
			<!--  </form>	-->
		</div>
		</div>
		</div>
	</div>
</div>
<!--login strip end here-->
</body>
<script type="text/javascript">
function doLogin(){
	var name = document.getElementById("accountControl").value;
	var pwd = document.getElementById("passwordControl").value;
	$.ajax({
        cache: true,
        type: "POST",
        dataType: "json",
        url: "rest/user/login",
        data:{"userid":name, "password":pwd},
        async: true,
        error: function(request) {
            alert("Connection error");
        },
        success: function(data) {
        	if(data==false || data=='false' ){
            	alert("用户名、密码不正确");
            } else {
            	window.sessionStorage.setItem('login_user', name);
            	window.location = 'index_Logined.jsp';
            }
        }
    });
}

</script>
</html>
