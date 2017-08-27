<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deletar</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<%
	try {
		String id = request.getParameter("id");

		String DRIVER = "com.mysql.jdbc.Driver";
		Class.forName(DRIVER);
		
		String sql = "delete from student where id=?";

		String url = "jdbc:mysql://localhost:3306/apae";
		String root = "root";
		String psw = "pb";
		Connection con = DriverManager.getConnection(url, root, psw);
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setString(1, id);

		st.executeUpdate();
	} catch (SQLException eSQL) {}
%>
</head>
<body>
	<%@include file="header.jsp" %>

	<div id="wrapper">

		<main>
			<div id="content">
				<div class="innertube">
					<h1>Deletar</h1>
				
					<h3>Dados atualizados com sucesso! voltar á <a href="index.jsp">Index</a></h3>
					
				</div>
			</div>
		</main>

		<%@include file="menu.jsp" %>
	
	</div>

	<%@include file="footer.jsp" %>

</body>
</html>