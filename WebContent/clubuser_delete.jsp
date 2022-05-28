<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8" />
	<title>clubuser_delete</title>
	<meta name="format-detection" content="telephone=no" />
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<meta name="Copyright" content="" />
	<link rel="stylesheet" href="js/layui-v2.5.5/css/layui.css"/>
	<link rel="stylesheet" type="text/css" href="css/style.min.css" />
	<link rel="stylesheet" type="text/css" href="css/base.css" />
	<link rel="stylesheet" type="text/css" href="css/swiper-3.4.2.min.css" />
	<link rel="stylesheet" href="http://at.alicdn.com/t/font_1565658_9nkzeow06nw.css">
	<script src="js/jquery.min.js"></script>
	

	<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
</head>

<body>
<div class="header-strip">
<a href="homepage.jsp"><img src='images/back.png'width="40" height="40"></a>
	</div>	

<style type="text/css">
.header-strip {
	padding: 0.3em 0 0.3em 0;
    background:#23b5b9;
	
}
</style>

<%
		HttpSession hs = request.getSession();
		String userName = String.valueOf(hs.getAttribute("username")); 
		if (userName.equals(null)) {
	    	 response.sendRedirect("logIn.jsp");
		} 
	%>
	<div id="container">
		<div class="main_1400 userPage">
			<div class="l">
				<div class="head">
					<div class="headImg">
						
						<div class="headNone show"><i class="iconfont icon-ziyuan"></i></div>
					</div>
					<div class="font1"><%=userName %></div>
					
				</div>
				<div class="navs">
					<a class="item ant5" href="clubuser_release.jsp">&nbsp;&nbsp;<img src='images/release.png'width="18" height="18"></i> Release</a>
					<a class="item act ant5" ><img src='images/delete.png'width="20" height="20"></i> Delete</a>
				
				</div>
			</div>
		
			<div class="r">
				<div class="font_title">Delete Released Activity Information</div>
					<div class="jindu">
					
					<div class="layui-progress" lay-filter="progress1">
						
					</div>

				</div>
				<div class="items">
				<!-- 无数据时样式 noData show -->
					<!-- <div class="noData show">
						<img src="images/user_noData_1.png" alt="">
						<br>
						No released activity
					</div> -->
					<!-- 有数据时样式 item show-->     
					
		<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    
        <div class="demo1">
            <ul>
                <li>software engineering lecture</li>
                <li>new year welcoming party</li>
                <li>math club linear algebra lecture</li>
               
            </ul>
        </div>
        <div class="pop">
            <div class="popMain">
                <div class="popTop"></div>
                <div class="popMiddle">
                    <p>Are you sure to delete?</p>
                </div>
                <div class="popBottom">
                    <span class="confirm">yes</span>
                    <span class="cancel">no</span>
                </div>
            </div>
        </div>


 <style type="text/css">
            *{
                margin: 0;
                padding: 0;
            }
            body,html{
                
            }
            .demo1{
                width: width: 1000px;;
                margin: 100px auto 50px;
            }
            .demo1 ul {
                overflow: hidden;
			
            }
            .demo1 li {
                float: left;
                padding: 10px 20px;
                font-size: 18px;
                color: #fff;
                background-color: #23b5b9;
                border-radius: 3px;
                margin-right:80px;
                margin-top: 20px;
				 cursor: pointer;
            }

            .pop{
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.8);
            }
            .pop .popMain{ width: 600px; min-height: 300px; background: #fff; position: absolute; left: 50%; top: 30%; margin-left: -300px;}
            .popMiddle p{ text-align: center; font-size: 18px; color: #666; padding: 90px 0;}
            .pop .popBottom{ position: absolute; bottom: 0; left: 0; display: flex; width: 100%; height: 80px; text-align: center; background: #488ACC;}
            .pop .popBottom span{ flex: 1; text-align: center; font-size: 24px; color: #fff; line-height: 80px; cursor: pointer;}
            .pop .popBottom span:first-of-type{ border-right: 1px solid #fff;}
        </style>
		    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
        $(function(){
            (function(){
                var num;
                $(".demo1").on('click', 'ul li', function(event) {
                    event.preventDefault();
                    num = $(this).index();
                    $(".pop").fadeIn('fast');
                });
                $(".popBottom").on('click', 'span', function(event) {
                    event.preventDefault();
                    if($(this).hasClass('confirm')){
                        $(".demo1 ul li").eq(num).remove();
                        num = "";
                        $(".pop").fadeOut();
                    }else{
                        $(".pop").fadeOut();
                        num = "";
                    }
                });
            })();
            
        });
    </script>
</body>
</html>
<%-- <!DOCTYPE html>
<html>

<head>
	<!-- <meta charset="utf-8" />
	<meta charset="ISO-8859-1"> -->
	<title>clubuser_delete</title>
	<meta name="format-detection" content="telephone=no" />
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<meta name="Copyright" content="" />
	<link rel="stylesheet" href="js/layui-v2.5.5/css/layui.css"/>
	<link rel="stylesheet" type="text/css" href="css/style.min.css" />
	<link rel="stylesheet" type="text/css" href="css/base.css" />
	<link rel="stylesheet" type="text/css" href="css/swiper-3.4.2.min.css" />
	<link rel="stylesheet" href="http://at.alicdn.com/t/font_1565658_9nkzeow06nw.css">
	<script src="js/jquery.min_homepage.js"></script>
	

</head>

<body>
<div class="header-strip">
<a href="homepage.jsp"><img src='images/back.png'width="40" height="40"></a>
	</div>	

<style type="text/css">
.header-strip {
	padding: 0.3em 0 0.3em 0;
    background:#23b5b9;
	
}
</style>

	<%
		HttpSession hs = request.getSession();
		String userName = String.valueOf(hs.getAttribute("username")); 
		if (userName.equals(null)) {
	    	 response.sendRedirect("logIn.jsp");
		} 
	%>

	<div id="container">
		<div class="main_1400 userPage">
			<div class="l">
				<div class="head">
					<div class="headImg">
						
						<div class="headNone show"><i class="iconfont icon-ziyuan"></i></div>
					</div>
					<div class="font1"><%=userName %></div>
					
				</div>
				<div class="navs">
					<a class="item ant5" href="clubuser_release.jsp">&nbsp;&nbsp;<img src='images/release.png'width="18" height="18"></i> Release</a>
					<a class="item act ant5" ><img src='images/delete.png'width="20" height="20"></i> Delete</a>
				
				</div>
			</div>
		
			<div class="r">
				<div class="font_title">Delete Released Activity Information</div>
					<div class="jindu">
					
					<div class="layui-progress" lay-filter="progress1">
						
					</div>

				</div>
				<div class="items">
				<!-- noData show -->
					<div class="noData show">
						<img src="images/user_noData_1.png" alt="">
						<br>
						No released activity
					</div>
					<!--  item show-->     
					
		<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
    
        <div class="demo1">
            <ul>
                <li>1XXXXXXXXX Activity bulalbulabulabuka</li>
                <li>2XXXXXXXXX Activity</li>
                <li>3XXXXXXXXX Activity</li>
                <li>4XXXXXXXXX Activity</li>
                <li>5XXXXXXXXX Activity</li>
            </ul>
        </div>
        <div class="pop">
            <div class="popMain">
                <div class="popTop"></div>
                <div class="popMiddle">
                    <p>Are you sure to delete?</p>
                </div>
                <div class="popBottom">
                    <span class="confirm">yes</span>
                    <span class="cancel">no</span>
                </div>
            </div>
        </div>


 <style type="text/css">
            *{
                margin: 0;
                padding: 0;
            }
            body,html{
                font-family: "arial";
            }
            .demo1{
                width: width: 1000px;;
                margin: 100px auto 50px;
            }
            .demo1 ul {
                overflow: hidden;
			
            }
            .demo1 li {
                float: left;
                padding: 10px 20px;
                font-size: 18px;
                color: #fff;
                background-color: #23b5b9;
                border-radius: 3px;
                margin-right:80px;
                margin-top: 20px;
				 cursor: pointer;
            }

            .pop{
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.8);
            }
            .pop .popMain{ width: 600px; min-height: 300px; background: #fff; position: absolute; left: 50%; top: 30%; margin-left: -300px;}
            .popMiddle p{ text-align: center; font-size: 18px; color: #666; padding: 90px 0;}
            .pop .popBottom{ position: absolute; bottom: 0; left: 0; display: flex; width: 100%; height: 80px; text-align: center; background: #488ACC;}
            .pop .popBottom span{ flex: 1; text-align: center; font-size: 24px; color: #fff; line-height: 80px; cursor: pointer;}
            .pop .popBottom span:first-of-type{ border-right: 1px solid #fff;}
        </style>
		    <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
        $(function(){
            (function(){
                var num;
                $(".demo1").on('click', 'ul li', function(event) {
                    event.preventDefault();
                    num = $(this).index();
                    $(".pop").fadeIn('fast');
                });
                $(".popBottom").on('click', 'span', function(event) {
                    event.preventDefault();
                    if($(this).hasClass('confirm')){
                        $(".demo1 ul li").eq(num).remove();
                        num = "";
                        $(".pop").fadeOut();
                    }else{
                        $(".pop").fadeOut();
                        num = "";
                    }
                });
            })();
            
        });
    </script>
</body>
</html> --%>