<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*, javax.servlet.*"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>
<%@ page import="org.apache.commons.io.*"%>
<%@ page import="javax.servlet.http.*"%>

<%
File file;
int maxFileSize = 5000*1024;
int maxMemSize = 5000*1024;
String filePath = "C:/Java-JSP/lhegauWeb/WebContent/images/";

String contentType = request.getContentType();
if((contentType.indexOf("multipart/form-data")) >= 0){
	
	DiskFileItemFactory factory = new DiskFileItemFactory();
	factory.setSizeThreshold(maxFileSize);
	factory.setRepository(new File("C:\\Java-JSP\\lhegauWeb\\WebContent\\images"));
	ServletFileUpload upload = new ServletFileUpload(factory);
	upload.setSizeMax(maxFileSize);
	try{
		
		List fileItems = upload.parseRequest(request);
		Iterator i = fileItems.iterator();
%>
<html>
	<head>
	</head>
	<body>
		<%
			while(i.hasNext()){
				
				FileItem fi = (FileItem) i.next();
				if(!fi.isFormField()){
					String fieldname = fi.getFieldName();
					String fileName = fi.getName();
					boolean isInMemory = fi.isInMemory();
					long sizeBytes = fi.getSize();
					
					String fileExt[]=fileName.split("\\.");
					file = new File(filePath + "arquivo-de-upload." + fileExt[fileExt.length-1]);
					fi.write(file);
					out.println("Upload feito com sucesso! <br/>From: " + fileName + " <br/>To: " + filePath);
					
					
					
				}
				
				
			}
		%>
	</body>
</html>
		
		
	<%}catch(Exception e){
		
	}
	
} else {%>
	<html>
		<head>
		</head>
		<body>
		<h1>Upload Falhou!</h1>
		<a href="index.jsp">Index</a>
		</body>
	</html>
<%}

%>