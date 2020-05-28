<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="utf-8" />
	<title>Listar Países</title>
	    
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"/>  
	<link href="https://fonts.googleapis.com/css?family=Alfa+Slab+One" rel="stylesheet"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
	<c:import url="Menu.jsp" />
	<!-- Modal -->
	<div class="modal fade" id="delete-modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Fechar">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modaltitle" id="modalLabel">Excluir País</h4>
				</div>
				<div class="modal-body">Deseja realmente excluir este País?</div>
				<div class="modal-footer">
					<form action="ManterCliente.do" method="post">
						<input type="hidden" name="id" id="id_excluir" />
						<button type="submit" class="btn btnprimary" name="command" value="ExcluirPais">Sim</button>
						<button type="button" class="btn btndefault" data-dismiss="modal">Não</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<div id="main" class="container">
		<form id="form-cadastrar" action="ListarPaises.do" method="post">
			<div id="top" class="row">
				<div class="col-md-3">
					<h2>Países</h2>
				</div>
				<div class="col-md-6">
					<div class="input-group h5">
						<input name="data[search]" class="form-control" id="search" type="text" placeholder="Pesquisar Paises (deixe vazio para trazer todos)">
						<span class="input-group-btn">
							<button class="btn btn-primary" type="submit" name="command" value="Buscar">
								<i class="fas fa-search"></i>
							</button>
						</span>
					</div>
				</div>
				<div class="col-md-3">
					<a href="CriarPais.jsp" class="btn btn-primary pull-right h2">Novo País</a>
				</div>
			</div>
		</form>
		<hr />
		<c:if test="${not empty lista}">
			<div id="list" class="row">
				<div class="table-responsive col-md-12">
					<table class="table tablestriped" cellspacing="0" cellpadding="0">
						<thead>
							<tr>
								<th>ID</th>
								<th>Nome</th>
								<th>População</th>
								<th>Área</th>
								<th class="actions">Ações</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="pais" items="${lista}">
								<tr>
									<td>${pais.id }</td>
									<td>${pais.nome }</td>
									<td>${pais.populacao }</td>
									<td>${pais.area }</td>
									<td class="actions">
										<a class="btn btn-success btn-xs" href="ManterPais.do?acao=Visualizar&id=${pais.id}">Visualizar</a>
										<a class="btn btn-warning btn-xs" href="ManterPais.do?acao=Editar&id=${pais.id }">Editar</a> 
										<button id="btn${cliente.id}%>"type="button"class="btn btn-danger btn-xs"data-toggle="modal" datatarget="#delete-modal"data-cliente="${cliente.id }">Excluir</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

			<div id="bottom" class="row">
				<div class="col-md-12">
					<!-- paginação ainda não foi implementada -->
					<ul class="pagination">
						<li class="disabled"><a>&lt; Anterior</a></li>
						<li class="disabled"><a>1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li class="next"><a href="#" rel="next">Próximo </a></li>
					</ul>
				</div>
			</div>
		</c:if>
	</div>
	<!-- /#main -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$("#delete-modal").on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget); //botao que disparou a modal
			var recipient = button.data('cliente');
			$("#id_excluir").val(recipient);
		});
	</script>
</body>
</html>