<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

<%
	try {
		String id = request.getParameter("id");
		String DRIVER = "com.mysql.jdbc.Driver";
		Class.forName(DRIVER);
		Connection con = null;
		ResultSet rs = null;
		Statement st = null;
		String sql = "SELECT * FROM STUDENT";

		String url = "jdbc:mysql://localhost:3306/apae";
		String root = "root";
		String psw = "pb";
		con = DriverManager.getConnection(url, root, psw);
		st = con.createStatement();
		rs = st.executeQuery(sql);

%>

</head>
<body>
	<%@include file="header.jsp"%>

	<div id="wrapper">

		<main>
		<div id="content">
			<div class="innertube">
				<h1>Index - BD Students</h1>
				
				<h2>Incluir Novo Cadastro</h2>
				

						<form action="insert.jsp" method="post">
							<table border="1">
							<tr><td>Id: </td><td>Nome: </td><td>Cidade: </td><td>Telefone: </td></tr>
							<tr><td><input type="hidden" name="id" id="idId" value="<%= id %>" /><%= id %></td>
							<td><input type="text" name="nome" id="idNome" value="" /></td>
							<td><input type="text" name="cidade" id="idCidade" value="" /></td>
							<td><input type="text" name="telefone" id="idTelefone" value="" /></td></tr>
							</table>
							<input type="submit" name="incluir" id="idIncluir" value="Incluir" />
						</form>
						<hr />
					<br />
					
					
				
				<%} catch (SQLException eSQL) {}%>
			</div>
		</div>
		</main>

		<%@include file="menu.jsp"%>

	</div>

	<%@include file="footer.jsp"%>

</body>
</html>