<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Variaveis</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>

	<%
	String texto = "Ah, agora rodou!";
	int inteiro = 10;
	float flo = 20;
	double doub = 30;
	boolean b = true;
	char c = 'X';
	%>

	<header id="header">
	<h1>Variaveis</h1>
	</header>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Variaveis</h1>
					<table border="1">
					
						<tr><td>Variaveis com out.print</td></tr>
						<tr><td>String</td><td><% out.println(texto); %></td></tr>
						<tr><td>Int</td><td><% out.println(inteiro); %></td></tr>
						<tr><td>Float</td><td><% out.println(flo); %></td></tr>
						<tr><td>Double</td><td><% out.println(doub); %></td></tr>
						<tr><td>Boolean</td><td><% out.println(b); %></td></tr>
						<tr><td>Char</td><td<% out.println(c); %>></td></tr>
						
					</table>
					<hr />
					<table border="1">
					
						<tr><td>Variaveis com %= </td></tr>
						<tr><td>String</td><td><%=texto%></td></tr>
						<tr><td>Int</td><td><%=inteiro%></td></tr>
						<tr><td>Float</td><td><%=flo%></td></tr>
						<tr><td>Double</td><td><%=doub%></td></tr>
						<tr><td>Boolean</td><td><%=b%></td></tr>
						<tr><td>Char</td><td<%=c%>></td></tr>
						
					</table>
					
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>