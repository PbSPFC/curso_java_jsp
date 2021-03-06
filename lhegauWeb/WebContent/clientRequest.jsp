<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Client Request</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%@include file="header.jsp"%>

	<div id="wrapper">

		<main>
		<div id="content">
			<div class="innertube">
				<h1>Client Request</h1>

				<table width="100%" border="1" align="center">
					<tr>
						<th>Nomes</th>
						<th>Valores</th>
					</tr>

					<%
						Enumeration headerNames = request.getHeaderNames();
						while (headerNames.hasMoreElements()) {
							String paraName = (String) headerNames.nextElement();
					%>
					<tr>
						<td><%=paraName%></td>
						<%
							String paraValue = request.getHeader(paraName);
						%>
						<td><%=paraValue%></td>
					</tr>
					<%
						}
					%>

				</table>

			</div>
		</div>
		</main>

		<%@include file="menu.jsp"%>

	</div>

	<%@include file="footer.jsp"%>

</body>
</html>