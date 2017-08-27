<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cookie</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<%
	Cookie nome = new Cookie("nome", request.getParameter("nome"));
	Cookie sobrenome = new Cookie("sobrenome", request.getParameter("sobrenome"));
	
	nome.setMaxAge(60*60);
	sobrenome.setMaxAge(60*60);
	
	response.addCookie(nome);
	response.addCookie(sobrenome);
	
%>
</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Cookie</h1>
					
					<table>
							<tr>
								<td>Nome: </td>
								<td><%= request.getParameter("nome") %></td>
							</tr>
							<tr>
								<td>Sobrenome:</td>
								<td><%= request.getParameter("sobrenome") %></td>
							</tr>
						</table>
						
					<a href="cookieRead.jsp">Ler Cookies</a>
					
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>