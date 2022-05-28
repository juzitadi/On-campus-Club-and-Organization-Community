<%@page import="java.util.List"%>
<%@page import="Objects.activity"%>
<%@page import="Service.ActivitySortingImplement"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Activities</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="applisalonion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap_homepage.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel="stylesheet" href="css/swipebox.css">
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<link rel="stylesheet" href="css/slider.css">
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
	<link rel="stylesheet" type="text/css" href="css/normalize_homepage.css" />



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
	background-color: #464749;
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
	border-right-color: #393A3C;
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

<script>

 function showActivities_Date(){
	 var form1=document.getElementByld("frmlist");
	form1.action="";
	form1.submit(); 
	
}

function showActivities_Remaining(){
	var form1=document.getElementByld("frmlist");
	form1.action="";
	form1.submit();
	
}

</script>


</head>



<%
	String whichBtn = request.getParameter("sorting");
	HttpSession hs = request.getSession();
	String userName = String.valueOf(hs.getAttribute("username"));
	
	//time sorted arraylist
	ActivitySortingImplement r = new ActivitySortingImplement();
	ArrayList<activity> resultActivities_date = new ArrayList<>();
	resultActivities_date = r.time();
/* 	 for (int j =0;j<resultActivities_date.size();j++) {
		System.out.println(resultActivities_date.get(j).toString());
	}
	 System.out.println();
	 System.out.println(); */
	
	//remain ticket sorted arraylist
	ArrayList<activity> resultActivities_ticket = new ArrayList<>();
	resultActivities_ticket = r.remainTicket();
/* 	for (int j =0;j<resultActivities_ticket.size();j++) {
		System.out.println(resultActivities_ticket.get(j).toString());
	} */
	
	//searched arraylist
		
		/* for (int j =0;j<searchedList.size();j++) {
			System.out.println(searchedList.get(j).toString());
		} */
	

%>

<%
    //Turning page
    int pageIndex=1;//default = 1
    int allActivities = 0;
    int totalActivities = 0;
    int afterSearchTotalPage = 0;
    int totalPage=0;
    int sortIndex = 2;
    ArrayList<activity> resultActivities = null;
    if (request.getParameter("sortType") != null){
    sortIndex=Integer.valueOf(request.getParameter("sortType"));
    }
    if (sortIndex == 1){
    	resultActivities = resultActivities_date;
    }
    if (sortIndex == 2){
    	resultActivities = resultActivities_ticket;
    }
    
    allActivities = resultActivities.size();
    totalActivities = resultActivities.size();
    
    
    if (totalActivities%4 == 0){
    	totalPage = totalActivities/4;
    }else{
    	totalPage = totalActivities/4+1;
    }
    ArrayList<activity> currentPageActivities = null;//the activity list of current showed page
    
    if(request.getParameter("pageIndex")!=null){
    	
    	pageIndex=Integer.valueOf(request.getParameter("pageIndex"));
    	if(request.getParameter("keyword")!=null&&request.getParameter("keyword")!=""){
    		
            String keyword=request.getParameter("keyword");
            ArrayList<activity> searchedList = new ArrayList<>();
        	searchedList = r.activitiesSearch(keyword);
        	totalActivities= searchedList.size();
        	if (totalActivities%4 == 0){
            	totalPage = totalActivities/4;
            }else{
            	totalPage = totalActivities/4+1;
            }
        	
        	if (pageIndex<totalPage){
            	ArrayList<activity> temp = new ArrayList<>();
                
                for (int i=pageIndex*4-4;i<pageIndex*4;i++){
                	
                	temp.add(searchedList.get(i));
                }
                currentPageActivities = temp;
            }
            if (pageIndex==totalPage){
            	ArrayList<activity> temp = new ArrayList<>();
                
                for (int i=pageIndex*4-4;i<totalActivities;i++){
                	
                	temp.add(searchedList.get(i));
                }
                currentPageActivities = temp;
            }
        	
        	
            }else{
            	
            	if (pageIndex<totalPage){
                	ArrayList<activity> temp = new ArrayList<>();
                    
                    for (int i=pageIndex*4-4;i<pageIndex*4;i++){
                    	
                    	temp.add(resultActivities.get(i));
                    }
                 
                    currentPageActivities = temp;
                }
                if (pageIndex==totalPage){
                	ArrayList<activity> temp = new ArrayList<>();
                    
                    for (int i=pageIndex*4-4;i<totalActivities;i++){
                    	
                    	temp.add(resultActivities.get(i));
                    }
                    currentPageActivities = temp;
                }
            }
    }else{
    	
    	if (pageIndex<totalPage){
        	ArrayList<activity> temp = new ArrayList<>();
            
            for (int i=pageIndex*4-4;i<pageIndex*4;i++){
            	
            	temp.add(resultActivities.get(i));
            }
            
       	 /* for (int j =0;j<temp.size();j++) {
     		System.out.println(temp.get(j).toString());
     	}
     	 System.out.println();
     	 System.out.println(); */
            currentPageActivities = temp;
        }
        if (pageIndex==totalPage){
        	ArrayList<activity> temp = new ArrayList<>();
            
            for (int i=pageIndex*4-4;i<totalActivities;i++){
            	
            	temp.add(resultActivities.get(i));
            }
            currentPageActivities = temp;
        }
    }
%>




<%--  <form name="frmlist" action="" method="post">
<input type="submit" name="date sorting" value="Date">
<input type="submit" name="storage sorting" value="Storage"> 
<input type="submit" class="button" name="sorting" value="Date" onclick="showActivities_Date();"/>
<input type="submit" class="button" name="sorting" value="Storage" onclick="showActivities_Remaining();"/>  
<input type="button" name="date sorting" value="Date" onclick="showActivities_Date();"/>
<input type="button" name="storage sorting" value="Storage" onclick="showActivities_Remaining();"/>
<div><%=whichBtn %></div>
 </form> --%>
 
 <!--start-home-->
<div class="main-header" id="house">
	<div class="header-strip">
		<div class="container">
		<p class="location"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> <a href="https://mail.xjtlu.edu.cn">On-Campus Club and Organization Community(ococ@xjtlu.edu.cn)</a></p>
	
	<div id="content">
		  <div id="nav">
		    <ul id="supnav">
		
		      <li><a href="#" class="a"><p><img src='images/co.png'width="20" height="20"><%=userName %></a></p></a>
		        	<div> 
		        		<a href="clubuser_release.jsp">Release activity</a> 
		        	  	<a href="clubuser_delete.jsp">Delete activity</a> 
		        	  	<a href="logIn.jsp" id="out">Log out </a></a>      	 	
		        	</div>
		      </li>
		
		    </ul>
		  </div>
	</div>
		
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
										
										<li class="menu__item"><a href="homepage.jsp" class="menu__link"><span class="menu__helper">Home</span></a></li>
										<li class="menu__item menu__item--current"><a class="menu__link"><span class="menu__helper">Activities</span></a></li>
										<li class="menu__item"><a href="gallery.html" class="menu__link"><span class="menu__helper">Clubs</span></a></li>
										<li class="menu__item"><a href="contact.html" class="menu__link"><span class="menu__helper">Organizations</span></a></li>
									</ul>
								</nav>
							</div>
					</div>
					<!-- /.navbar-collapse -->
				</nav>

			   <div class="clearfix"></div>
			</div>
	</div>
</div>
<!--//header-top-->
 <!-- //Line Slider -->
		<div class="top_banner two">
			<div class="container">
			       <div class="sub-hd-inner">
						<h3 class="tittle">OUR <span>ACTIVITIES</span></h3>
					</div>
			</div>
		</div>
		
	<!--/gallery-->	
<div id="gallery" class="gallery">
	<div class="container">
		<div class="gallery_gds w3l">
		
			<ul class="simplefilter wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
                <li data-filter="all"><a href="activities.jsp" class="menu__link">Latest</a></li>
                <li onclick="ticketSort();" class="active"  data-filter="1">Tickets left</li>
 
            </ul>
            
     <section class="container page clearfix">
     
			<div class="cloud-wrapper clearfix">
			
			
		
			
			<form id="searchForm" name="searchForm" action="showTicketActivities.jsp"  >
                   <input type="hidden" name="pageIndex" id="pageIndex"  value="1">
                <div id="search">
                    <div class="center"></div>
                    
                </div>
           
			<%
			for (int i=0;i<currentPageActivities.size();i++){
			String date = String.valueOf(currentPageActivities.get(i).getTime());
			String place = currentPageActivities.get(i).getLocation();
			String title = currentPageActivities.get(i).getActivityname();
			int ticket = currentPageActivities.get(i).getTicketNum();
			String type = currentPageActivities.get(i).getType();
			String clubname = currentPageActivities.get(i).getClubname();
			String comment = currentPageActivities.get(i).getComment();
			String href = currentPageActivities.get(i).getDetailHref();
	/* 		 for (int j =0;j<currentPageActivities.size();j++) {
					System.out.println(currentPageActivities.get(j).toString());
				}
				 System.out.println();
				 System.out.println(); */
			%>
			<a href="detail.jsp?title=<%=title %>&place=<%=place %>&date=<%=date %>&ticket=<%=ticket %>&type=<%=type %>&clubname=<%=clubname %>&comment=<%=comment %>&href=<%=href %>" class="cloud-card">
	                        <div class="cloud-card-image">
	                            <div class="cloud-scale cloud-card-image-back0<%=i%>"></div>
	                            <div class="cloud-card-image-title">
	                            
	                              <%=title %>
	                            
	                            </div>
	                        </div>
	                        <div class="cloud-card-text">
	                        	<li><strong>Date: <%=date%> </strong></li>
	                        	<li><strong>Place: <%=place %> </strong></li>
	                        	<li><strong>Ticket: <%=ticket %> </strong></li>
	                        </div>
	                    </a>
			
               
			   <%} %>
			   </form>   

                </div>
                
                <br>
                <br>
                		Current in <%=pageIndex %>th page&nbsp;&nbsp;&nbsp;
                        In total <%=totalPage %> pages&nbsp;&nbsp;&nbsp;
                        <a href="javascript:void(0);" class="turnPage" onclick="turnTopPage()">Last Page</a>&nbsp;&nbsp;&nbsp;
                        <a href="javascript:void(0);" class="turnPage" onclick="turnBottomPage()">Next Page</a>&nbsp;&nbsp;&nbsp;



			</section>
           
                
               <div class="clearfix"> </div>
            </div>
		</div>
	</div>
	</div>
	<script type="text/javascript">
var pageIndex=<%=pageIndex %>;
var totalPage=<%=totalPage %>;


//上一页
function turnTopPage(){
     if(pageIndex==1){
        return;
    }else{ 
        document.getElementById("pageIndex").value=pageIndex-1;
        document.getElementById("searchForm").submit();
     } 
 }
//下一页
function turnBottomPage(){
    if(pageIndex>=totalPage){    
        return;
       }else{
       document.getElementById("pageIndex").value=pageIndex+1;
       document.getElementById("searchForm").submit();
       }
}

function searchKeyword(){
    document.getElementById("pageIndex").value=1;
    document.getElementById("searchForm").submit();
}

function timeSort(){
	document.getElementById("sortType").value=1;
    document.getElementById("sortForm").submit();
}
function ticketSort(){
	document.getElementById("sortType").value=2;
    document.getElementById("sortForm").submit();
}

</script>

	
	<!-- swipe box js -->
				<script src="js/jquery.swipebox.min.js"></script> 
					<script type="text/javascript">
						jQuery(function($) {
							$(".swipebox").swipebox();
						});
				</script>
			<!-- //swipe box js -->

	<!--//gallery-->
	 <!-- Include jQuery & Filterizr -->
    
    <script src="js/jquery.filterizr.js"></script>
    <script src="js/controls.js"></script>

    <!-- Kick off Filterizr -->
    <script type="text/javascript">
        $(function() {
            //Initialize filterizr with default options
            $('.filtr-container').filterizr();
        });
    </script>
	<!--//gallery-->

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
</body>
</html>