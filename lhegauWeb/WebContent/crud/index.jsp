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
		String id = null;
		int x;
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
				
				<%
					while (rs.next()) {
						id = rs.getString("id");
					}
					x = Integer.parseInt(id);
					x++;
					id = "" + x;
				%>
						<form action="new.jsp" method="post">
							<input type="hidden" name="id" id="idId" value="<%= id %>" />
							<input type="submit" name="new" id="idNew" value="Incluir" />
						</form>
						<hr />
					<br />
					
					<h2>Lista dos Estudantes</h2>
				
				<%
					rs = st.executeQuery(sql);
					while (rs.next()) {
				%>
						<table border="1">
						<tr><td>Id: </td><td>Nome: </td><td>Cidade: </td><td>Telefone: </td></tr>
						
						<tr><td><%= rs.getString("id") %></td>
						<td><%= rs.getString("name") %></td>
						<td><%= rs.getString("city") %></td>
						<td><%= rs.getString("phone") %></td></tr>
						
						<tr><td>Ações: </td>
						<td><a href="delete.jsp?id=<%=rs.getString("id")%>">Excluir</a></td>
						<td><a href="edit.jsp?id=<%=rs.getString("id")%>">Alterar</a></td></tr>
						</table>
						<br />
					<%}%>
				
				<%} catch (SQLException eSQL) {}%>
			</div>
		</div>
		</main>

		<%@include file="menu.jsp"%>

	</div>

	<%@include file="footer.jsp"%>

</body>
</html>