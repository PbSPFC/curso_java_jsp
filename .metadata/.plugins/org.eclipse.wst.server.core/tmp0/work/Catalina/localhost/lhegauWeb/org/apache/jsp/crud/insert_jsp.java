/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.70
 * Generated at: 2016-09-22 20:05:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.crud;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class insert_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/crud/footer.jsp", Long.valueOf(1474072708188L));
    _jspx_dependants.put("/crud/menu.jsp", Long.valueOf(1474321376448L));
    _jspx_dependants.put("/crud/header.jsp", Long.valueOf(1474121177848L));
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Incluir</title>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\r\n");

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

      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      out.write("<header id=\"header\">\r\n");
      out.write("\t<div class=\"innertube\">\r\n");
      out.write("\t\t<div align=\"center\"><h1>Head</h1></div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</header>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"wrapper\">\r\n");
      out.write("\r\n");
      out.write("\t\t<main>\r\n");
      out.write("\t\t\t<div id=\"content\">\r\n");
      out.write("\t\t\t\t<div class=\"innertube\">\r\n");
      out.write("\t\t\t\t\t<h1>Incluir</h1>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t");
while (rs.next()) {
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<table border=\"1\">\r\n");
      out.write("\t\t\t\t\t\t<tr><td>Id: </td><td>Nome: </td><td>Cidade: </td><td>Telefone: </td></tr>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr><td>");
      out.print( rs.getString("id") );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print( rs.getString("name") );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print( rs.getString("city") );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print( rs.getString("phone") );
      out.write("</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<hr />\r\n");
      out.write("\t\t\t\t\t");
}
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t");
} catch (SQLException eSQL) {}
      out.write("\r\n");
      out.write("\t\t\t\t\t<h3>Dados incluídos com sucesso! Voltar á <a href=\"index.jsp\">Index</a></h3>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</main>\r\n");
      out.write("\r\n");
      out.write("\t\t");
      out.write("<nav id=\"nav\">\r\n");
      out.write("\t\t\t<div class=\"innertube\">\r\n");
      out.write("\t\t\t\t<h3>Left Menu</h3>\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"index.jsp\">Home</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"outPrint.jsp\">1 - Hello World</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"variables.jsp\">2 - Variaveis</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"send.jsp\">3 - Enviar</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"for.jsp\">4 - Laço For</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<h3>Left Menu</h3>\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"ifSend.jsp\">5 - Formulário If Else</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"includePage.jsp\">6 - Incluir pedaços de Páginas \"Includes\"</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"handleException.jsp\">7 - Tratamento de Exceções</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"getIp.jsp\">8 - Pegar IP</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"sendSwitch.jsp\">9 - Switch</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<h3>Left Menu</h3>\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"dateTime.jsp\">10 - Calendar</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"sendRedirect.jsp\">11 - Redirect</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"login.jsp\">12 - Login</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"declaration.jsp\">13 - Declaration</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"dateFormat.jsp\">14 - Date Format</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<h3>Left Menu</h3>\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"function.jsp\">Função</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"diretive.jsp\">Diretiva</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"objImplicito\">Objeto Implicito</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"#\">##</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"#\">##</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<h3>Left Menu</h3>\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"#\">##</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"#\">##</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"#\">##</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"#\">##</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a onmouseover=\"previewUrl(this.href,'div1')\" href=\"#\">##</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t</nav>");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<footer id=\"footer\">\r\n");
      out.write("\t<div class=\"innertube\">\r\n");
      out.write("\t\t<p>Lhegau</p>\r\n");
      out.write("\t</div>\r\n");
      out.write("</footer>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
