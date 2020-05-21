<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<metacharset="utf-8">
	<meta charset="utf-8" />
	<title>Alterar Pais</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>  
	<link href="https://fonts.googleapis.com/css?family=Alfa+Slab+One" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
	<div id="main"class="container">
		<h3 class="page-header">País</h3>
		<form action="ManterPais.do" method="post">
			<input type="hidden" class="form-control" id="id" name="id">
			<div class="row">
				<div class="form-group col-md-12">
					<label for="nome" class="control-label">Nome:</label>
					<input type="text" class="form-control" id="nome" name="nome" placeholder="Nome">
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-6">
					<label for="populacao" class="control-label">População:</label>
					<input type="number" class="form-control" id="populacao" name="populacao" placeholder="População">
				</div>
				<div class="form-group col-md-6">
					<label for="area" class="control-label">Área:</label>
					<input type="number" class="form-control" id="area" name="area" placeholder="Área">
				</div> 
			</div>
			<hr/>
			<div id="actions"class="row">
				<div class="col-md-12">
					<button type="submit"class="btn btn-primary" name="acao" value="Criar">Salvar</button>
					<a href="index.html"class="btn btn-danger">Cancelar</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>