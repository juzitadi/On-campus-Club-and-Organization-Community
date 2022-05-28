<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
HttpSession hs = request.getSession();
String username = String.valueOf(hs.getAttribute("username"));
String email = String.valueOf(hs.getAttribute("email"));
String major = String.valueOf(hs.getAttribute("major"));
String gender = String.valueOf(hs.getAttribute("gender"));
String Grade = String.valueOf(hs.getAttribute("grade"));
int grade = Integer.parseInt(Grade);
%>

<p>Register successfully!</p>
<p>User name: <%=username %></p>
<p>Email: <%=email %></p>
<p>Gender: <%=gender %></p>
<p>Grade: Year<%=grade %></p>
<p>Major: <%=major %></p>
<br>
<a href="logIn.jsp"><h4> Please Login</h4> </a>
</body>
</html>