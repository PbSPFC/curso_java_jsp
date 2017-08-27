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
					<h1>IfReceber</h1><br/>
					<%
						String escolha = request.getParameter("escolha");
					
						if(escolha.toUpperCase().equals("SIM")){
							out.println("<h1>Professor ta dando um erro no códi...<h1><br/>" + 
									"<h1>Ah, agora rodou!!!</h1>");
						} else {
							out.println("<h3>Professor ta dando um erro no códi...</h3>");
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