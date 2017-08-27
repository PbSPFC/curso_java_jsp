<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>template</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%@include file="header.jsp" %>
	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>For</h1>
					<h3>Laco for em jsp</h3>
					
					<table border="1">
					<%
					for(int i = 1; i <= 10; i++){
						out.print("<tr><td>Repetição: " + i + "</td></tr>");
					}
					%>
					</table>
					
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>