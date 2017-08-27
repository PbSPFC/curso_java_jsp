<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Incluir</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<%
	try {
		String id = request.getParameter("id");
		String nome = request.getParameter("nome");
		String cidade = request.getParameter("cidade");
		String telefone = request.getParameter("telefone");
		String DRIVER = "com.mysql.jdbc.Driver";
		Class.forName(DRIVER);
		
		String sql = "insert into student values(?, ?, ?, ?)";

		String url = "jdbc:mysql://localhost:3306/apae";
		String root = "root";
		String psw = "pb";
		Connection con = DriverManager.getConnection(url, root, psw);
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, id);
		st.setString(2, nome);
		st.setString(3, cidade);
		st.setString(4, telefone);
		st.executeUpdate();
		
		sql = "SELECT * FROM STUDENT WHERE ID=" + id;
		
		ResultSet rs = st.executeQuery(sql);
%>
</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Incluir</h1>
					
					<%while (rs.next()) {%>

						<table border="1">
						<tr><td>Id: </td><td>Nome: </td><td>Cidade: </td><td>Telefone: </td></tr>
						
						<tr><td><%= rs.getString("id") %></td>
						<td><%= rs.getString("name") %></td>
						<td><%= rs.getString("city") %></td>
						<td><%= rs.getString("phone") %></td></tr>
						
						</table>

					<hr />
					<%}%>
				
				<%} catch (SQLException eSQL) {}%>
					<h3>Dados incluídos com sucesso! Voltar á <a href="index.jsp">Index</a></h3>
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>