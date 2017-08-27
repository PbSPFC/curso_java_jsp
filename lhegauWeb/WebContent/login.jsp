<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div align="center" class="innertube">
					<h1>Login</h1>
					
					<div align="center">
					<form action="validateSession.jsp" method="post">
					
					<table>
					
					<tr><td>Nome: </td><td><input type="text" name="username" id="idUsername"/></td></tr>
					<tr><td>Senha: </td><td><input type="password" name="senha" id="idSenha"/></td></tr>
					<tr><td><input type="submit" value="Logar" name="entrar"/></td></tr>
					
					</table>
					
					</form>
					</div>
					
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>