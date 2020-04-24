<%@page import="model.Pais"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exibir Pais</title>
</head>
<body>
	<% Pais pais = ((Pais)request.getAttribute("modelo")); %>
	<h3>País</h3>
	<form action="ManterPais.do" method="get">
		<label for="nome">nome:</label> <%=pais.getNome()%>
		<br /> 
		<label for="populacao">população:</label><%=pais.getPopulacao()%>
		<br />
		<label for="area">área:</label><%=pais.getArea()%>
		<br /> 
		<br />
	</form>
</body>
</html>