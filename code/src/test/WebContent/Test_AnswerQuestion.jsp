<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.*,java.sql.*,java.sql.Statement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>正式考试</title>
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
<script language="javascript" type="text/javascript">

function getHiddenProp(){
    var prefixes = ['webkit','moz','ms','o'];
    
    // if 'hidden' is natively supported just return it
    if ('hidden' in document) return 'hidden';
    
    // otherwise loop over all the known prefixes until we find one
    for (var i = 0; i < prefixes.length; i++){
        if ((prefixes[i] + 'Hidden') in document) 
            return prefixes[i] + 'Hidden';
    }
 
    // otherwise it's not supported
    return null;
}


function getVisibilityState() {
    var prefixes = ['webkit', 'moz', 'ms', 'o'];
    if ('visibilityState' in document) return 'visibilityState';
    for (var i = 0; i < prefixes.length; i++) {
        if ((prefixes[i] + 'VisibilityState') in document)
            return prefixes[i] + 'VisibilityState';
    }
    // otherwise it's not supported
    return null;
}


function isHidden() {
    var prop = getHiddenProp();
    if (!prop) return false;
    
    return document[prop];
}

//use the property name to generate the prefixed event name
var visProp = getHiddenProp();
var t=0;
if (visProp) {
    var evtname = visProp.replace(/[H|h]idden/, '') + 'visibilitychange';
    document.addEventListener(evtname, function () {
        document.title = document[getVisibilityState()]+"状态";
  		  	t++;
  		  	if(t>=2){
  		  		
        	if(confirm("还有XXX题未完成！是否交卷！")){
    				alert("已交卷!");
    				window.opener=null;
    				window.open("","_self")
    				window.close();
    			} 
  		  	}
    },false);
}

document.onkeydown = function (event) {

    var e = window.event || event;

     if (e.altKey &&

       ((e.keyCode == 37) ||   //屏蔽 Alt+ 方向键 ← 

      (e.keyCode == 39))) {  //屏蔽 Alt+ 方向键 → 

         alert("不准你使用ALT+方向键前进或后退网页！");

        return false;

    }

     if ((e.keyCode == 8) ||            //屏蔽退格删除键 

      (e.keyCode == 116)) {          //屏蔽 F5 刷新键 

         return false;

     }

    if (e.ctrlKey && (e.keyCode == 78)) {   //屏蔽 Ctrl+n 

        return false;

   }

     if (e.shiftKey && (e.keyCode == 121)) { //屏蔽 shift+F10 

         return false;

    }

     if (e.keyCode == 122) { //屏蔽 F11 

         return false;

     }
};


 //屏蔽右键鼠标右键
document.oncontextmenu=function(){
    alert('禁止鼠标右键菜单!');
   return false;
};

</script>   
<!--header-->
<div class="header">
	<div class="header-info">
		<div class="container">
				<div class="menu_test">
				<p>工号：2000      姓名：王二</p>
					<span class="menu-info"> </span>
						<ul class="cl-effect-test1">
							<li><a href="Test.jsp" class="buttom">单选题</a></li>
							<li><a href="Test_MultipleChoice.jsp" class="buttom">多选题</a></li>
							<li><a href="Test_TFQuestion.jsp" class="buttom">判断题</a></li>
							<li><a href="Test_GapFilling.jsp" class="buttom">填空题</a></li>
							<li><a href="Test_AnswerQuestion.jsp" class="activebuttom">简答题</a></li>
						</ul>
				</div>
			<div class="clearfix"> </div>
			<div class="menu_test1">
				<div class="now-time">
					<p>29:00</p>
				</div>				
				<div class="test-time">
					<p>剩余时间：</p>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--/header-->
<!--login strip start here-->
<div class="dd2">
	<div>
		<div class="container">
			<div class="img-bg">
			<form>
			<div class="Question">
				<div class="title">
					<p>1.涉密人员管理的基本内容有哪些？</p>
				</div>
				<div class="Answer">
					<textarea name="Ans1" rows="12" cols="20"></textarea>
				</div>		
			</div>
			<div class="navigation">
			 	<div class="nav">
			 		<a href="#" class="buttom" onclick="fun1()">交&nbsp;&nbsp;&nbsp;&nbsp;卷</a>
			 		<script language="javascript" type="text/javascript">
						function fun1(){
			  		  	if(confirm("还有XXX题未完成！是否交卷！")){
			    				alert("已交卷!");
			    				window.close();
			    			}    	
			   		 }	
					</script>
			 	</div>
			 	<div class="nav">
			 		<a href="#" class="buttom">下一题</a>
			 	</div>
			 	<div class="nav">
			 		<a href="#" class="buttom">上一题</a>
			 	</div>
			</div>
			</form>
			<div class="img-bg1">
			<div class="Number">
				<div class="title2">
					<div class="choice-title">
					<p>单选题</p>
					</div>
					<%
					int i = 20;
					int j;
					for(j=1;j<i;j++)
					{
						out.print("<div class=\"nub\"><a href=# ><img src=\"resource/images/number/normal ("+j+").png\"/></a></div>");
					}
					out.print("<div><a href=# ><img src=\"resource/images/number/normal ("+i+").png\"/></a></div>");
					%>					
					
				</div>
				<div class="title2">
					<div class="choice-title">
					<p>多选题</p>
					</div>
					<%
					i = 10;
					for(j=1;j<i;j++)
					{
						out.print("<div class=\"nub\"><a href=# ><img src=\"resource/images/number/normal ("+j+").png\"/></div>");
					}
					out.print("<div><a href=# ><img src=\"resource/images/number/normal ("+i+").png\"/></a></div>");
					%>					
					
				</div>
				<div class="title2">
					<div class="choice-title">
					<p>判断题</p>
					</div>
					<%
					i = 30;
					for(j=1;j<i;j++)
					{
						out.print("<div class=\"nub\"><a href=# ><img src=\"resource/images/number/normal ("+j+").png\"/></div>");
					}
					out.print("<div><a href=# ><img src=\"resource/images/number/normal ("+i+").png\"/></a></div>");
					%>	
				</div>
				<div class="title2">
					<div class="choice-title">
					<p>填空题</p>
					</div>
					<%
					i = 10;
					for(j=1;j<i;j++)
					{
						out.print("<div class=\"nub\"><a href=# ><img src=\"resource/images/number/normal ("+j+").png\"/></div>");
					}
					out.print("<div><a href=# ><img src=\"resource/images/number/normal ("+i+").png\"/></a></div>");
					%>	
				</div>
				<div class="title2">
					<div class="choice-title">
					<p>简答题</p>
					</div>
					<%
					i = 2;
					for(j=1;j<i;j++)
					{
						out.print("<div class=\"nub\"><a href=# ><img src=\"resource/images/number/normal ("+j+").png\"/></div>");
					}
					out.print("<div><a href=# ><img src=\"resource/images/number/normal ("+i+").png\"/></a></div>");
					%>	
				</div>
			</div>
			</div>
			
			</div>
		</div>
	</div>
</div>
<!--login strip end here-->
</body>
</html>