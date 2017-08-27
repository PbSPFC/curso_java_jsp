<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Objeto Implicito</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Objeto Implicito</h1>
					
					<%
						out.println("<br/>Auth Type: " + request.getAuthType());
						out.println("<br/>Protocol: " + request.getProtocol());
						out.println("<br/>Path Info: " + request.getPathInfo());
						out.println("<br/>Context Path: " + request.getContextPath());
						out.println("<br/>Local Port: " + request.getLocalPort());
						out.println("<br/>Locale: " + request.getLocale());
						out.println("<br/>Remote user: " + request.getRemoteUser());
						out.println("<br/>Page Context: " + pageContext.getPage());
						out.println("<br/>URI: " + request.getRequestURI());
						out.println("<br/>Servlet Path: " + request.getServletPath());
					%>
					
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>