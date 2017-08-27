<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<%
	if(session.getAttribute("username") == null || session.getAttribute("username").equals(null) || session.getAttribute("username").equals("")){
		response.sendRedirect("profileInvalido.jsp");
	}
	String nome = (String) session.getAttribute("username");
	
%>
</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Profile</h1>
					
					<h2>Username: <%= nome %></h2>
					<h3>Ah, agora rodou!</h3>
					
					<a href="logout.jsp">LogOut</a>
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>