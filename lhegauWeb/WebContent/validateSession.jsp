
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
import="javax.swing.JOptionPane"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validate</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Validate</h1>
					
					<%
					String nome = request.getParameter("username");
					String senha = request.getParameter("senha");
					
					if(nome.equals("Lagarto") && senha.equals("123")){
						
						session.setAttribute("username", nome);
						response.sendRedirect("profile.jsp");
						
					}else{
						out.println("Login ou senha inválidos!");
					}
					
					
					%>
					<hr />
					<a href="index.jsp">Index</a>
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>