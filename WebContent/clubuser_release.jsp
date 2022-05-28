<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>

<head>
	<!-- <meta charset="utf-8" />
	<meta charset="ISO-8859-1"> -->
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
				<form class="layui-form" lay-filter="example">

					<div class="layui-form-item" lay-filter="example">
						
						<div class="layui-inline">
							<label class="layui-form-label">Club</label>
							<div class="layui-input-inline">
								<input type="text"  lay-verify="required" lay-verify="title"id="Club" name="Club"
									autocomplete="off" placeholder="*Please input club name" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">Activity</label>
							<div class="layui-input-inline">
								<input type="text" lay-verify="required" lay-verify="title"id="Activity" name="Activity"
									autocomplete="off" placeholder="*Please input activity name" class="layui-input">
							</div>
						</div>
						
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">Location</label>
							<div class="layui-input-inline">
								<select id="Location" name="Location">
									
									<option value="CB">CB</option>
									<option value="SA">SA</option>
									<option value="SB">SB</option>
									<option value="SC">SC</option>
									<option value="SD">SD</option>
									<option value="PB">PB</option>
								</select>
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">Room</label>
							<div class="layui-input-inline">
								<input type="text"  lay-verify="required" lay-verify="title"
									autocomplete="off" placeholder="*Please input roon number" class="layui-input"id="Room" name="Room">
							</div>
						</div>
						
						
					</div>
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">Date</label>
							<div class="layui-input-inline">
								<input type="text"  class="layui-input" id="Date" name="Date"
									placeholder="*Please choose activity date">

							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">Time</label>
							<div class="layui-input-inline">
								<input type="text" lay-verify="required" lay-verify="title" 
									autocomplete="off" placeholder="*Please input time" class="layui-input">
							</div>
						</div>
					</div>
					
					<div class="layui-form-item">
						<div class="layui-inline">
							<label class="layui-form-label">Capacity</label>
							<div class="layui-input-inline">
								<input type="text"  lay-verify="required" lay-verify="title"
									autocomplete="off" placeholder="*Please input capacity" class="layui-input">
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">Email</label>
							<div class="layui-input-inline">
								<input type="text"  name="email" lay-verify="required" autocomplete="off"
									placeholder="*Please input e-mail address" class="layui-input">
							</div>
						</div>
					</div>

					<div class="layui-form-item">
						
						<div class="layui-inline">
							<label class="layui-form-label">Category</label>
							<div class="layui-input-inline">
								<select lay-filter="test"lay-filter="aihao">
									
									<option value="0">lecture</option>
									<option value="1">show</option>
									<option value="2">party</option>
									
								</select>
							</div>
						</div>
						<div class="layui-inline">
							<label class="layui-form-label">Remarks</label>
							<div class="layui-input-inline">
								<input type="text"  lay-verify="title" autocomplete="off"
									placeholder="Input your remarks" class="layui-input">
							</div>
						</div>
					</div>
<div class="layui-form-item">
						
						
						<div class="layui-inline">
							<label class="layui-form-label">Prepare time</label>
							<div class="layui-input-inline">
								<input type="text"  lay-verify="title" autocomplete="off"
									placeholder="prepared time"class="layui-input">
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-inline userBtn">
							<button type="submit" class="layui-btn " lay-submit="" lay-filter="demo1">Post</button>

						</div>
					</div>

				</form>
			</div>
		</div>
				<script src="js/swiper-3.4.2.jquery.min.js"></script>
	<script src="js/layui-v2.5.5/layui.all.js"></script>
	<script src="js/index.js"></script>
	<script type="text/javascript" src="js/data.js"></script>

	
	<script type="text/javascript">
		layui.use(['form', 'layedit', 'laydate', 'element'], function () {
			var form = layui.form,
				layer = layui.layer,
				layedit = layui.layedit,
				laydate = layui.laydate,
				element = layui.element
			function setProgress() {  
				var formData = form.val("example")
				var arr = Object.values(formData)
				var number = 0
				for(var i = 0,len = arr.length;i<len;i++){
					
					if(arr[i].length === 0){
						console.log(number);
						number = number + 10
					}
				}
				if(number === 0){
					$('.userPage .jindu .t .tr').addClass('ok')
				}
				element.progress('progress1', (100-number)+'%')
			}


			

			laydate.render({
				elem: '#Date',
				done: function (value, date) {
					setProgress()
				}
			});

			
			form.val('example', {
				
				"Date": "2020-5-22",	"email": "x.z17@student.xjtlu.edu.cn"
			
			});

			setProgress()
			
			form.on('submit(demo1)', function (data) {
				layer.alert(JSON.stringify(data.field), {
					title: 'Final post information'
				})
				return false;
			});

			form.on('select(test)', function (data) {
				setProgress()
			});

			$('.userPage .r input').blur(function () {
				setProgress()
			});


		})
	</script>
</body>
</html>