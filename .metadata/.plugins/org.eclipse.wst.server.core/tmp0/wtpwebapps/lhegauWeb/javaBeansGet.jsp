<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.lhegau.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Java Beans Get</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<%
	Person pessoa = new Person();
	pessoa.setNome((String) request.getParameter("nome"));
	pessoa.setSegundoNome((String) request.getParameter("segundoNome"));
	pessoa.setIdade(Integer.parseInt(request.getParameter("idade")));
	
%>
</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Java Beans Get</h1>
					
					<table border="1">
							<tr><td>Nome: </td><td><%= pessoa.getNome() %></td></tr>
							<tr><td>Segundo Nome: </td><td><%= pessoa.getSegundoNome() %></td></tr>
							<tr><td>Idade: </td><td><%= pessoa.getIdade() %></td></tr>
					</table>
					
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>