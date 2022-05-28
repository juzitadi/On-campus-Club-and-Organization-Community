<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>On-campus Club and Organization Community</title>

<link rel="stylesheet" type="text/css" href="css/styles.css">
<style type="text/css">
body,td,th { font-family: "Source Sans Pro", sans-serif; }
body { background-color: #2B2B2B; }
</style>
</head>
<body>


<div class="wrapper">

	<div class="container">
		<h1> <br></h1>
		<h1><b>On-campus Club Community</b></h1>
		<h1> <br></h1>
		<h1> Welcome</h1>

	 	<form action="logIn" method="post">
			User name:<input type="text" name="username" /><br />
			Password:<input type="password" name="password" /><br />
			
			<button type="submit" id="login-button">Login</button>
			<h4><br></h4>
			<tr height="10">
				<td width="40">
					<font color="red">${emptyInput}</font>
				</td>
			</tr>
			<tr height="10">
				<td width="40">
					<font color="red">${wrongUsername}</font>
				</td>
			</tr>
			<tr height="10">
				<td width="40">
					<font color="red">${wrongPassword}</font>
				</td>
			</tr>
			<a href="myregister.jsp"><h4> Register</h4> </a>
		</form>	
		
	</div>
	
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

<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<!-- <script type="text/javascript">
$('#login-button').click(function(event){
	event.preventDefault();
	$('form').fadeOut(500);
	$('.wrapper').addClass('form-success');
});
</script> -->

</body>
</html>