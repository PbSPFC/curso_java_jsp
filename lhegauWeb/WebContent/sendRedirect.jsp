<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send Redirect</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Send Redirect</h1>
					
					<h3>Digite 1 para ir á página 1</h3>
					<h3>Digite 2 para ir á página 2</h3>
					<h4>Caso digite algo diferente de 1 ou 2, será redirecionado automáticamente para a Index</h4>
					<br />
						<form method="post" action="responseRedirect.jsp">
							<input type="text" name="valor" id="idValor" /><br/>
							<input type="submit" name="enviar" />
						</form>
				</div>
			</div>
		</main>

	<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>