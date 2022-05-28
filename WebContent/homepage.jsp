<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, Objects.User" %>



<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
<title>Home page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="applisalonion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap_homepage.css" rel='stylesheet' type='text/css' />
 <!-- Slick Slider -->
      <link rel="stylesheet" type="text/css" href="vendor/slick/slick.min.css"/>
      <link rel="stylesheet" type="text/css" href="vendor/slick/slick-theme.min.css"/>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<link rel="stylesheet" href="css/slider.css">
<link rel="stylesheet" href="css/reset.min.css">
<link rel="stylesheet" href="css/style.css">
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!--/web-font-->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>
<!--/script-->
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>

<script type="text/javascript">
	function myFunction1(){
		var usertype = "<%=session.getAttribute("usertype")%>";
		if (usertype == "club user"){
	 		window.location.href = "activities_add.jsp";
     	}
		else{
 			alert("You have no this privilege");
 		}
		
	}

	function myFunction2(){
		var usertype = "<%=session.getAttribute("usertype")%>";
		if (usertype == "club user"){
			window.location = "ListServlet";
     	}
		else{
 			alert("You have no this privilege");
 		}
		
	}

	function logOut(){
		var r=confirm("Confirm log out?");
		if (r==true){
			sessionStorage.clear();
			window.location.href = "logIn.jsp";
		}
		
	}
</script>


<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-style: normal;
	font-family: 宋体;
}
body {
	text-align: center;
	font-size: 12px;
}
#content {
	margin: 0 auto;
}
#content #nav {
	height: 32px;
	background-color: #222;
}
#content #nav ul {
	list-style: none;
}
#content #nav ul li {
	float: right;
	line-height: 32px;
	position: relative;
}
#nav div {
	width: 100px;
	position: absolute;
	left: 0px;
	padding-bottom: 0px;
	float: left;
	height: 0;
	overflow: hidden;
	background-color: #23abf1;
}
#content #nav li .a {
	text-decoration: none;
	color: #FFFFFF;
	line-height: 32px;
	display: block;
	border-right-width: 1px;
	border-right-style: solid;
	border-right-color: #222;
}
#nav div a {
	text-decoration: none;
	color: #FFFFFF;
	line-height: 26px;
	display: block;
}
#nav div a:hover {
	background-color: #0C7DBA;
}
</style>

</head>
<body>

     <%
	     HttpSession hs = request.getSession();
	     String userName = String.valueOf(hs.getAttribute("username"));
	     
	     
	      if (userName.equals("null")) {
	    	 response.sendRedirect("logIn.jsp");
		  } 
     %>

<!--start-home-->	
<div class="main-header" id="house">
	<div class="header-strip">
		<div class="container">

		<p class="location"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <a href="https://mail.xjtlu.edu.cn">On-Campus Club and Organization Community(ococ@xjtlu.edu.cn)</a></p>
		
		
		<div id="content">
		  <div id="nav">
		    <ul id="supnav">
		
		      <li><a href="#" class="a"><p><img src='images/co.png'width="20" height="20"><%=userName %></a></p>
		        	<div> 
		        		<a href="#" role="button" onclick="myFunction1()">Release activity</a> 
		        	  	<a href="#" role="button" onclick="myFunction2()">Delete activity</a> 
		        	  	<a href="#" role="button" onclick="logOut()">Log out </a>     	 	
		        	</div>
		      </li>
		
		    </ul>
		  </div>
		</div>
		<div class="clearfix"></div>
		</div>
	</div>
		
			<div class="header-middle">
			  <div class="header-search">
			   <form action="#" method="post">
				<div class="search">
					<input type="search" value="Search" name="search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}" required="">
				</div>
				
				<div class="sear-sub">
					<input type="submit" value=" ">
				</div>
				<div class="clearfix"></div>
			</form>
		</div>
	</div>	
		
		<!--header-top-->
			<div class="header-top">
			  <div class="container">
					 <nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					  </button>
						<div class="logo">
							<img src="images/logo.png" height="65" />
						</div>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						  <div class="top-menu">
							<nav class="menu menu--francisco">
									<ul class="nav navbar-nav menu__list">
										<li class="menu__item menu__item--current"><a href="homepage.html" class="menu__link"><span class="menu__helper">Home</span></a></li>
										<li class="menu__item"><a href="activities.jsp" class="menu__link"><span class="menu__helper">Activities</span></a></li>
										<li class="menu__item"><a href="club.jsp" class="menu__link"><span class="menu__helper">Clubs</span></a></li>
										<li class="menu__item"><a href="organization.jsp" class="menu__link"><span class="menu__helper">Organizations</span></a></li>
									</ul>
								</nav>
							</div>
					</div>
					<!-- /.navbar-collapse -->
				</nav>

			   <div class="clearfix"></div>
			</div>
	</div>
<!--//header-top-->
 <!-- //Line Slider -->
	 <div class="top_banner">
		<!-- SVG Arrows -->
		<div class="svg-wrap">
			<svg width="64" height="64" viewBox="0 0 64 64">
				<path id="arrow-left" d="M46.077 55.738c0.858 0.867 0.858 2.266 0 3.133s-2.243 0.867-3.101 0l-25.056-25.302c-0.858-0.867-0.858-2.269 0-3.133l25.056-25.306c0.858-0.867 2.243-0.867 3.101 0s0.858 2.266 0 3.133l-22.848 23.738 22.848 23.738z" />
			</svg>
			<svg width="64" height="64" viewBox="0 0 64 64">
				<path id="arrow-right" d="M17.919 55.738c-0.858 0.867-0.858 2.266 0 3.133s2.243 0.867 3.101 0l25.056-25.302c0.858-0.867 0.858-2.269 0-3.133l-25.056-25.306c-0.858-0.867-2.243-0.867-3.101 0s-0.858 2.266 0 3.133l22.848 23.738-22.848 23.738z" />
			</svg>
		</div>
		
		<div class="sleekslider">
			<!-- Slider Pages -->
			<div class="slide active bg-1">
				<div class="slide-container">
					<div class="slide-content">
						<p>Welcome to <span class="s-p">OCOC</span>!</p>	
					</div>

				</div>
			</div>
			<div class="slide bg-2">
				<div class="slide-container">
					<div class="slide-content">
						<p>This is <span class="s-p">cse208</span> project </p>	

					</div>
				</div>				
			</div>
			<div class="slide bg-3">
				<div class="slide-container">
					<div class="slide-content">
						<p>NB <span class="s-p">70%sweet</span>GROUP</p>	

					</div>
				</div>				
			</div>
			<div class="slide bg-4">
				<div class="slide-container">
					<div class="slide-content">
					<p>Hello <span class="s-p">XJTLU</span> ~~~ </p>		

					</div>
				</div>				
			</div>
			<div class="slide bg-5">
				<div class="slide-container">
					<div class="slide-content">
					<p>Welcome to <span class="s-p">club</span>system</p>	

					</div>
				</div>				
			</div>

			
			<!-- Pagination -->
			<nav class="pagination">
				<span class="current"></span>
				<span></span>
				<span></span>
				<span></span>
				<span></span>
			</nav>

			<!-- Navigation Tabs -->
			<nav class="tabs">
				<div class="tab-container">
					<ul>
						<li class="current"><a href="#"><span>01</span> Slide</a></li>
						<li><a href="#"><span>02</span> Slide</a></li>
						<li><a href="#"><span>03</span> Slide</a></li>
						<li><a href="#"><span>04</span> Slide</a></li>
						<li><a href="#"><span>05</span> Slide</a></li>
					</ul>
				</div>
			</nav>
		</div>

		<!-- JavaScripts -->
		<script type="text/javascript" src="js/sleekslider.min.js"></script>
		<script type="text/javascript" src="js/app.js"></script>
      <!--welcome-->
 </div>

        <!-- /Line Slider -->
	</div>
    <!--footer-->
	
		
		
	<div class="grid_2" id="tender">
   	 <div class="container">
	       <div class="sub-hd">
						<h3 class="tittle"><span>SUCCESSFUL </span>ACTIVITIES</h3>
					</div>
   	  <div class="box_1 one">
   	 	<div class="col-md-6">
   	 	       <div class="col_1_of_2 span_1_of_2 multi-gd-text">
				   <a href="single.html"><img src="images/S2.jpg" class="img-responsive" alt=""></a>
				   <div class="story_desc">
				   	  <h3>Mark McRoberts</h3>
				   	  <p>New York</p>
				   </div>
 				</div>
				<div class="col_1_of_2 span_1_of_2">
				   <h4>Volunteer Firefighter Threatened By Tongue Tumor</h4>
				   <p class="p1">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim venia.</p>
 				</div>
				<div class="clearfix"></div>
		</div>
   	 	<div class="col-md-6">
   	 	      <div class="col_1_of_2 span_1_of_2 multi-gd-text">
				   <a href="single.html"><img src="images/A6.jpg" class="img-responsive" alt=""></a>
				   <div class="story_desc">
				   	  <h3>Mark McRoberts</h3>
				   	  <p>New York</p>
				   </div>
 				</div>
				<div class="col_1_of_2 span_1_of_2">
				   <h4>Volunteer Firefighter Threatened By Tongue Tumor</h4>
				   <p class="p1">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim venia.</p>
 				</div>
				<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
   	  </div>
   	  <div class="box_2">
   	 	<div class="col-md-6">
   	 	       <div class="col_1_of_2 span_1_of_2 multi-gd-text">
				   <a href="single.html"><img src="images/A2.jpg" class="img-responsive" alt=""></a>
				   <div class="story_desc">
				   	  <h3>Mark McRoberts</h3>
				   	  <p>New York</p>
				   </div>
 				</div>
				<div class="col_1_of_2 span_1_of_2">
				   <h4>Volunteer Firefighter Threatened By Tongue Tumor</h4>
				   <p class="p1">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim venia.</p>
 				</div>
				<div class="clearfix"></div>
		</div>
   	 	<div class="col-md-6">
   	 	      <div class="col_1_of_2 span_1_of_2 multi-gd-text">
				   <a href="single.html"><img src="images/A5.jpg" class="img-responsive" alt=""></a>
				   <div class="story_desc">
				   	  <h3>Mark McRoberts</h3>
				   	  <p>New York</p>
				   </div>
 				</div>
				<div class="col_1_of_2 span_1_of_2">
				   <h4>Volunteer Firefighter Threatened By Tongue Tumor</h4>
				   <p class="p1">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim venia.</p>
 				</div>
				<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
   	  </div>
   	 </div>
   </div>
		<!--//team-->
			<!---news-->
						<div class="review-slider">
		<div class="sub-hd">
						<h3 class="tittle"><span>LATEST</span> ACTIVITIES</h3>
					</div>
							<script type="text/javascript">
						$(window).load(function() {
							
						  $("#flexiselDemo1").flexisel({
								visibleItems:4,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 3000,    		
								pauseOnHover: false,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: { 
									portrait: { 
										changePoint:480,
										visibleItems: 2
									}, 
									landscape: { 
										changePoint:640,
										visibleItems: 3
									},
									tablet: { 
										changePoint:800,
										visibleItems: 4
									}
								}
							});
							});
						</script>
						<script type="text/javascript" src="js/jquery.flexisel.js"></script>	
				</div>		
   <!--//news-->
  
   <!--/reviews-->
	<div id="review" class="testimonials-review">
		<div class="container">
		<div class="sub-hd">
						<h3 class="tittle lost"><span>Comments</span> on popular activities</h3>
					</div>
				<div class="testimonials">
				  <div class="monials">
				      <!--//screen-gallery-->
						<div class="sreen-gallery-cursual">
							 <!-- required-js-files-->
							<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
							    $(document).ready(function() {
							      $("#owl-demo").owlCarousel({
							        items : 1,
							        lazyLoad : true,
							        autoPlay : true,
							        navigation : false,
							        navigationText :  false,
							        pagination : true,
							      });
							    });
							    </script>
								 <!--//required-js-files-->
						       <div id="owl-demo" class="owl-carousel">
					                   <div class="item-owl">

                                            <p class="speech">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.</p>
                                            <div class="client-info">
                                                <img src="images/t1.jpg" alt=" " />

                                                <h4>John Allen</h4>
                                                <span>Lorem ipsum dolor</span>
                                            </div>
                                        </div><!-- /.item -->
					                     <div class="item-owl">

                                            <p class="speech">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.</p>
                                            <div class="client-info">
                                                <img src="images/t2.jpg" alt=" " />

                                                <h4>John Doe</h4>
                                                <span>Lorem ipsum dolor</span>
                                            </div>
                                        </div><!-- /.item -->
					                      <div class="item-owl">
										  <p class="speech">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque id arcu neque, at convallis est felis.</p>
                                            <div class="client-info">
                                                <img src="images/t3.jpg" alt=" " />

                                                <h4>John Leo</h4>
                                                <span>Lorem ipsum dolor</span>
                                            </div>
                                        </div><!-- /.item -->
				              </div>
						<!--//screen-gallery-->
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>	
	<!--//reviews-->
	<!--/start-footer-section-->
			<div class="footer-section">
				<div class="container">
					<div class="footer-grids wow bounceIn animated" data-wow-delay="0.4s">
						<p style="text-align:center"><font size="5" color="white"> Thank you for using OCOC</font></p>
						<div class="clearfix"></div>
					</div>
			</div>
		</div>
	<!--//end-footer-section-->
	<!--//footer-->
	<div class="footer-bottom">
		<div class="container">
			<p>Copyright &copy; 2020.70% SWEET GROUP All rights reserved.</p>
		</div>
	</div>
		<!--start-smooth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
								<!--end-smooth-scrolling-->
		<a href="#house" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<script src="js/bootstrap.js"></script>

<script>
	var supnav = document.getElementById("supnav");

	var nav = document.getElementById("nav");

	var btns = document.getElementsByTagName("li");

	var subnavs = nav.getElementsByTagName("div");

	var paddingbottom = 20;

	var defaultHeight = 0;

	function drop(obj, ivalue) {

		var a = obj.offsetHeight;

		var speed = (ivalue - obj.offsetHeight) / 8;

		a += Math.floor(speed);

		obj.style.height = a + "px";

	}

	window.onload = function() {

		for (var i = 0; i < btns.length; i++) {

			btns[i].index = i;

			btns[i].onmouseover = function() {

				var osubnav = subnavs[this.index];

				var sublinks = osubnav.getElementsByTagName("a");

				if (osubnav.firstChild.tagName == undefined) {

					var itarheight = parseInt(osubnav.childNodes[1].offsetHeight) * sublinks.length + paddingbottom;

				} else {

					var itarheight = parseInt(osubnav.firstChild.offsetHeight) * sublinks.length + paddingbottom;

				}

				clearInterval(this.itimer);

				this.itimer = setInterval(function() {

					drop(osubnav, itarheight);

				},

				30);

			}

			btns[i].onmouseout = function() {

				var osubnav = subnavs[this.index];

				clearInterval(this.itimer);

				this.itimer = setInterval(function() {

					drop(osubnav, defaultHeight);

				},

				30);

			}

		}

	}

</script>
</body>
</html>