<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="br.com.lhegau.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Java Beans Set</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Java Beans Set</h1>
					<form action="javaBeansGet.jsp" method="post">
							<table border="1">
							
							<tr><td>Nome: </td><td><input type="text" name="nome" id="idNome"/></td></tr>
							<tr><td>Segundo Nome: </td><td><input type="text" name="segundoNome" id="idSegundoNome"/></td></tr>
							<tr><td>Idade: </td><td><input type="text" name="idade" id="idIdade"/></td></tr>
							</table>
							<input type="submit" name="incluir" id="idIncluir" value="Incluir" />
						</form>
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>