<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
		<script src="js/jquery2.1.1.min.js"></script>
		<script>
			$(function(){
				$(".select p").click(function(e){
					$(".select").toggleClass('open');
					e.stopPropagation();
				});
				
				$(".content .select ul li").click(function(e){
					var _this=$(this);
					$(".select > p").text(_this.attr('data-value'));
					_this.addClass("Selected").siblings().removeClass("Selected");
					$(".select").removeClass("open");
					e.stopPropagation();
				});
				
				$(document).on('click',function(){
					$(".select").removeClass("open");
				})
				
			});
		</script>
		<script src="js/jquery2.1.1.min.js"></script>
		<script>
			$(function(){
				$(".select1 p").click(function(e){
					$(".select1").toggleClass('open');
					e.stopPropagation();
				});
				
				$(".content1 .select1 ul li").click(function(e){
					var _this=$(this);
					$(".select1 > p").text(_this.attr('data-value'));
					_this.addClass("Selected").siblings().removeClass("Selected");
					$(".select1").removeClass("open");
					e.stopPropagation();
				});
				
				$(document).on('click',function(){
					$(".select1").removeClass("open");
				});
				
			});
		</script>
		<script src="js/jquery2.1.1.min.js"></script>
		<script>
			$(function(){
				$(".select2 p").click(function(e){
					$(".select2").toggleClass('open');
					e.stopPropagation();
				});
				
				$(".content2 .select2 ul li").click(function(e){
					var _this=$(this);
					$(".select2 > p").text(_this.attr('data-value'));
					_this.addClass("Selected").siblings().removeClass("Selected");
					$(".select2").removeClass("open");
					e.stopPropagation();
				});
				
				$(document).on('click',function(){
					$(".select2").removeClass("open");
				})
				
			});
		</script>
		<script src="js/jquery2.1.1.min.js"></script>
		<script>
			$(function(){
				$(".select3 p").click(function(e){
					$(".select3").toggleClass('open');
					e.stopPropagation();
				});
				
				$(".content3 .select3 ul li").click(function(e){
					var _this=$(this);
					$(".select3 > p").text(_this.attr('data-value'));
					_this.addClass("Selected").siblings().removeClass("Selected");
					$(".select3").removeClass("open");
					e.stopPropagation();
				});
				
				$(document).on('click',function(){
					$(".select3").removeClass("open");
				});
				
			});
		</script>
		
		
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Register Page</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/normalize.css" rel="stylesheet">
  <link href="css/public.css" rel="stylesheet">
  <link href="css/validator.css" rel="stylesheet">
  <link href="css/completer.css" rel="stylesheet">
   <link href="css/Register.css" rel="stylesheet">
  <link href="jedate/skin/jedate.css" rel="stylesheet">
  <link href="css/date.css" type="text/css" rel="stylesheet">
  <link href="css/magic-check.css" rel="stylesheet" >
  <link href="css/jquery-ui.css" rel="stylesheet">  
  
<link rel="stylesheet" type="text/css" href="css/styles2.css">
  <link href="css/index.css" rel="stylesheet">  
  <script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/public.js"></script>
  <script type="text/javascript" src="jedate/jedate.js"></script>
  <script type="text/javascript" src="js/date.js"></script>
  <script type="text/javascript" src="js/jquery-validate.js"></script>
  <script type="text/javascript" src="js/validator.js"></script>
  <script type="text/javascript" src="http://www.jq22.com/jquery/jquery-ui-1.10.2.js"></script>
  <script type="text/javascript" src="js/index.js"></script>

  <!--[if lt IE 9]>
    <script src="http://cdn.static.runoob.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>  
  <![endif]-->
  <script type="text/javascript">
  </script>
</head>
<body>
<header>
</header>
<br>
<br>
<div style="font-size:40px; color:#000000; font-family: Fedra Sans; text-align:center">Register</div>
<div class="wrapper">
<div class="container">
  <div class="form-box row">
 
 <br>
  <br>
  <br>
  <br>
  <br>
  <br>
   <br>
  <br>
  <br>
  <br>
 
    <form action="myregister" class="form-horizontal" role="form" id="register-form" method="post" onsubmit="return check()">
      
      <div class="form-group">
        <label for="username" class="col-sm-2  control-label">Username* &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="col-sm-10  input-parent">
          <input type="text" class="form-control vinput" id="username" name="username" placeholder="Please input your username" >
          <span></span>
        </div>
      </div>
      
       
		<div class="form-group ">
        <label for="password" class="col-sm-2  control-label">Password* &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </label>
        <div class="col-sm-10  input-parent">
          <input type="password" class="form-control vinput" id="password" name="password" placeholder="Please input your password"/>
          <i class="glyphicon glyphicon-eye-close form-control-feedback" id="toogle-password"></i>
          <span></span>
        </div>
      </div>
     
      <div class="form-group">
        <label for="notpass" class="col-sm-2  control-label">Confirm password* </label>
        <div class="col-sm-10  input-parent">
          <input type="text" class="form-control vinput" id="notpass" name="notpass" placeholder="Please input your password again"/>
          <i class="glyphicon glyphicon-eye-close form-control-feedback" id="toggle-notpass"></i>
          <span></span>
        </div>
      </div>
      
      <div class="form-group">
        <label for="major" class="col-sm-2  control-label">Major &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="col-sm-10  input-parent">
          <input type="text" class="form-control vinput" id="major" name="Major" placeholder="Please input your major" >
          <span></span>
        </div>
      </div>
      
      <div class="form-group">
        <label for="email" class="col-sm-2  control-label">Email* &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="col-sm-10  input-parent">
          <input type="text" class="form-control vinput" id="email" name="email" placeholder="Please input your email address"  onblur="lose()" >
          <span></span>
        </div>
      </div>
		<div class="form-group">
        <label for="phone" class="col-sm-2  control-label"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="col-sm-10  input-parent">
          <span></span>
        </div>
      </div>
		
		
      <div class="content">
      <label for="email" class="col-sm-2  control-label" style="margin-left:-15px">Gender &nbsp;</label>
			
					&nbsp; &nbsp; &nbsp;<input name="Gender" type="radio" checked="checked" value="male"/> &nbsp; male
                   &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<input name="Gender" type="radio" value="female"/> &nbsp; female
				
		</div>
		
		<div class="content1">
      <label for="email" class="col-sm-2  control-label" style="margin-left:-15px">Grade &nbsp;</label>
			
					
				   &nbsp; &nbsp; &nbsp;<input name="Grade" type="radio" checked="checked" value="1"/> &nbsp; Year 1
                   &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<input name="Grade" type="radio" value="2" /> &nbsp; Year 2
                   &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<input name="Grade" type="radio" value="3"/> &nbsp; Year 3
                   &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; <input name="Grade" type="radio" value="4"/> &nbsp; Year 4
		</div>
		
		<div class="content3">
      <label for="email" class="col-sm-2  control-label" style="margin-left:-15px">Clubuser*  </label>
			
				&nbsp; &nbsp; &nbsp;<input name="Identity" type="radio" checked="checked" value="Yes"/> &nbsp; Yes, I am.
                &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<input name="Identity" type="radio" value="No"/> &nbsp; No, I'm not.
			
		</div>
		<!-- <div class="content2">
      <label for="email" class="col-sm-2  control-label" style="margin-left:-15px">Major &nbsp; </label>
			
					
				 &nbsp;&nbsp; &nbsp; &nbsp;<input name="Major" type="radio" checked="checked"/>&nbsp;Electronic Information<br>
				 &nbsp;&nbsp; &nbsp; &nbsp;<input name="Major" type="radio" checked="checked"/>&nbsp;Biological Sciences<br>
				 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<input name="Major" type="radio" checked="checked"/>&nbsp;Architecture<br>
				 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<input name="Major" type="radio" checked="checked"/>&nbsp;Foreign Language<br>
				 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;<input name="Major" type="radio" checked="checked"/>&nbsp;Mathematics
				
		</div> -->
		
		
		<div class="form-group">
        <label for="phone" class="col-sm-2  control-label"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
        <div class="col-sm-10  input-parent">
          <span></span>
        </div>
      </div>
			
		<div class="form-group">
		          <div class="col-sm-12">
		              <input type="submit" class="btn btn-primary form-control" id="submit" value="Submit" /> 
		          </div>
		       </div>
		<h4><br></h4>
			<tr height="10">
				<td width="40">
					<font color="red">${error}</font>
				</td>
			</tr>
	
     
    
      
    </form>
   <ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
  </div>
</div>
   </div>
<footer>
</footer>
</body>
</html>