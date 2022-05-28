<%@page import="Objects.activity"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	<script src ="http://code.jquery.com/jquery-1.10.2.js"> </script>
	<script src ="http://code.jquery.com/jquery-migrate-1.2.1.js"> </script>
	<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">

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
		} else if (String.valueOf(hs.getAttribute("usertype")).equals("normal user")){
			 response.sendRedirect("homepage.jsp");
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
				<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.gridtable {
    font-family: verdana,arial,sans-serif;
    font-size:11px;
    color:#333333;
    border-width: 1px;
    border-color: #666666;
    border-collapse: collapse;
}
table.gridtable th {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #666666;
    background-color: #dedede;
}
table.gridtable td {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #666666;
    background-color: #ffffff;
}
</style>
 

<div class="con left">
   	<div class="div_any" style="height:300px;overflow-y:auto">
       
       
        	<form class="form-horizontal" action="ListServlet" id="selectform">
	            <div class="panel" >
	            	<div class="panel-heading" style="height: 10px;margin-top: 0px;">
	                    <div class="form-group" style="margin-left: 70px;">
	                       
                          
	                    </div>
	                </div>
	                <div class="index_liebr_table" >
		               <table class="table table-bordered table-hover" style="width: 85%;margin:0px auto;">
		                    <thead>
			                    <th>Club Name</th>
				                <th>Activity Name</th>
				                <th>Location</th>				           
				                <th>Type</th>				               
				                <th>Operation</th>
		                    </thead>
		                    <tbody>
		                    
		                    <c:forEach items="${listAll}" var="entry">
		                            <tr>
		                                <td>${entry.clubname}</td>
		                                <td>${entry.activityname}</td>
		                                <td>${entry.location}</td>		                                
		                                <td>${entry.type}</td>		                               
		                                <td>
		                                	<a href="#" role="button"  class="btn btn-sm btn-danger" onclick="deleteUser('${entry.activityID }');">Delete</a>
		                                </td>
		                            </tr>
		                        </c:forEach>
		                                             
		                        
		                    </tbody>
		                </table><br><br>
						
	                </div>
	            </div>
            </form>
    </div>
</div>
<script>
   	function deleteUser(id) {
        if (confirm("Confirm delete?")){
            $.post("/DeleteServlet",{method: "post",id: id}, function(data){
            	window.location.href="ListServlet";
            });
        }
    };
</script>
   </div>
</body>
</html>