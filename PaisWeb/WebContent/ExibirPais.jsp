<%@page import="model.Pais"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Exibir Pais</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
	<c:import url="Menu.jsp" />
	<div id="main" class="container">
		<h3 class="page-header">País #${modelo.id }</h3>
		<div class="row">
			<div class="col-md-12">
				<p><strong>Nome</strong></p> 
				<p>${modelo.nome}</p>
			</div>
		</div>
		<div class="row">	
			<div class="col-md-6">
				<p><strong>População</strong></p> 
				<p>${modelo.populacao}</p>
			</div>
			<div class="col-md-6">
				<p><strong>Área</strong></p> 
				<p>${modelo.area}</p>
			</div>
		</div>
		<hr />
		<div id="actions" class="row">
			<div class="col-md-12">
				<a href="index.jsp" class="btn btn-primary">Voltar</a>
			</div>
		</div>
	</div>
</body>
</html>