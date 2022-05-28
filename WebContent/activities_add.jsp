<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<title>clubuser_release</title>
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
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	<script src ="http://code.jquery.com/jquery-1.10.2.js"> </script>
	<script src ="http://code.jquery.com/jquery-migrate-1.2.1.js"> </script>
	<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	<script src ="http://code.jquery.com/jquery-1.10.2.js"> </script>
	<script src ="http://code.jquery.com/jquery-migrate-1.2.1.js"> </script>
	<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
	<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
</head>

<body>	
	<%
		HttpSession hs = request.getSession();
	    String userName = String.valueOf(hs.getAttribute("username"));
	 
	    if (userName.equals("null")) {
	   	 	response.sendRedirect("logIn.jsp");
		}
		
	%>


<div class="header-strip">
<a href="homepage.jsp"><img src='images/back.png'width="40" height="40"></a>
	</div>	

<style type="text/css">
.header-strip {
	padding: 0.3em 0 0.3em 0;
    background:#23b5b9;
	
}
</style>
 <style>
		input{
		    outline-style: none ;
		    border: 1px solid #ccc; 
		    border-radius: 3px;
		    padding: 13px 14px;
		    width: 620px;
		    font-size: 14px;
		    font-weight: 700;
		    font-family: "Microsoft soft";
		    margin: 5px;
		}
		input:focus{
		    border-color: #66afe9;
		    outline: 0;
		    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
		    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
		}
		.ant-btn {
		    line-height: 1.499;
		    position: relative;
		    display: inline-block;
		    font-weight: 400;
		    white-space: nowrap;
		    text-align: center;
		    background-image: none;
		    border: 1px solid transparent;
		    -webkit-box-shadow: 0 2px 0 rgba(0,0,0,0.015);
		    box-shadow: 0 2px 0 rgba(0,0,0,0.015);
		    cursor: pointer;
		    -webkit-transition: all .3s cubic-bezier(.645, .045, .355, 1);
		    transition: all .3s cubic-bezier(.645, .045, .355, 1);
		    -webkit-user-select: none;
		    -moz-user-select: none;
		    -ms-user-select: none;
		    user-select: none;
		    -ms-touch-action: manipulation;
		    touch-action: manipulation;
		    height: 32px;
		    padding: 0 15px;
		    font-size: 14px;
		    border-radius: 4px;
		    color: rgba(0,0,0,0.65);
		    background-color: #fff;
		    border-color: #d9d9d9;
		}
		
		.ant-btn-primary {
		    color: #fff;
		    background-color: #1890ff;
		    border-color: #1890ff;
		    text-shadow: 0 -1px 0 rgba(0,0,0,0.12);
		    -webkit-box-shadow: 0 2px 0 rgba(0,0,0,0.045);
		    box-shadow: 0 2px 0 rgba(0,0,0,0.045);
		}
		.ant-btn-red {
		    color: #fff;
		    background-color: #FF5A44;
		    border-color: #FF5A44;
		    text-shadow: 0 -1px 0 rgba(0,0,0,0.12);
		    -webkit-box-shadow: 0 2px 0 rgba(0,0,0,0.045);
		    box-shadow: 0 2px 0 rgba(0,0,0,0.045);
		}
	</style>

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
					<a class="item act ant5">&nbsp;&nbsp;<img src='images/release.png'width="18" height="18"></i> Release</a>
					<a class="item ant5" href="clubuser_delete.jsp"><img src='images/delete.png'width="20" height="20"></i> Delete</a>
				
				</div>
			</div>
			<div class="r">
				<div class="font_title">Post a New Activity</div>
				<div class="jindu">
					
					<div class="layui-progress" lay-filter="progress1">
						
					</div>

				</div>
				<div class="con left">
   	<div class="div_any">
        
        <div class="col-sm-1"></div>
        <div class="user_info col-sm-10" style="margin-top:30px;">
        	<form class="form-horizontal" action="AddServlet" method="post" id="selectform">
	            <div class="panel panel-primary">
	            	<div class="form-group" style="margin-top: 30px;">
                        <div class="col-sm-11">
                            <input type="text" placeholder="Club Name" name="clubName" class="form-control">
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 30px;">
                        <div class="col-sm-11">
                            <input type="text" placeholder="Activity Name" name="activityName" class="form-control">
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 30px;">
                        <div class="col-sm-11">
                            <input type="text" placeholder="Location" name="location" class="form-control">
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 30px;">
                        <div class="col-sm-11">
                            <input type="number" placeholder="Ticket Number" name="ticketNum" class="form-control">
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 30px;">
                        <div class="col-sm-11">
                            <input type="date" placeholder="Time" name="time" class="form-control">
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 30px;">
                        <div class="col-sm-11">
                            <input type="text" placeholder="Type" name="type" class="form-control">
                        </div>
                    </div>
              
                    
                    <div style="width: 60px;margin: 10px 0px;margin-left:auto; margin-right:auto">
                    	<button type="submit" class="ant-btn ant-btn-primary" style="display:inline">Submit</button>
              
                    	<a type="button" href="ListServlet" class="ant-btn ant-btn-primary">Return</a>
                    </div>
	            </div>
            </form>
        </div>
    </div>
</div>
				
</body>
</html>