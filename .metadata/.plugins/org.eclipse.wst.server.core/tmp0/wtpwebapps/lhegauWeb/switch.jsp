<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Switch</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Switch</h1>
					
					<%
					int dia = Integer.parseInt(request.getParameter("dia"));
					
					switch(dia){
					case 1:
						out.println("<h2>O dia da semana escolhido � Domingo</h2>");
						break;
					case 2:
						out.println("<h2>O dia da semana escolhido � Segundo</h2>");
						break;
					case 3:
						out.println("<h2>O dia da semana escolhido � Ter�a</h2>");
						break;
					case 4:
						out.println("<h2>O dia da semana escolhido � Quarta</h2>");
						break;
					case 5:
						out.println("<h2>O dia da semana escolhido � Quinta</h2>");
						break;
					case 6:
						out.println("<h2>O dia da semana escolhido � Sexta</h2>");
						break;
					case 7:
						out.println("<h2>O dia da semana escolhido � S�bado</h2>");
						break;
					default:
						out.println("<h2>O dia da semana escolhido � inv�lido</h2>");
					}
					
					%>
					
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>