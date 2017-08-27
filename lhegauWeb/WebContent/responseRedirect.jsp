<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Response Redirect</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Response Redirect</h1>
					
					<%
						int x = Integer.parseInt(request.getParameter("valor"));
						if(x == 1){
							response.sendRedirect("pag1.jsp");
						}else if(x == 2){
							response.sendRedirect("pag2.jsp");
						}else{
							response.sendRedirect("index.jsp");
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