<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Casa do Codigo</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="../../styles/estilo.css" />

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h4>Cadastro de Livros</h4>

<!-- 				mvcUrl("INICIAIS DO CONTROLE#metodo").build() para criar a URL -->
				<form:form action="${s:mvcUrl('PC#gravar').build()}" method="POST"
					commandName="produto">

					<div class="form-group">
						<label for="titulo">Título</label>
						<input type="text" class="form-control" name="titulo" placeholder="Título do Livro" />
						<form:errors path="titulo"/>
						
						
					</div>
					<div class="form-group">
						<label for="descricao">Descrição</label>
						<textarea class="form-control" rows="10" cols="20"
							name="descricao"></textarea>
							
							<form:errors path="descricao"/>
					</div>
					<div class="form-group">
						<label for="paginas">Páginas</label> <input type="text"
							class="form-control" name="paginas"
							placeholder="Quantidade de páginas" />
							
							<form:errors path="paginas"/>
					</div>

					<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
						<div class="form-group">
							<label>${tipoPreco}</label> <input class="form-control"
								type="text" name="precos[${status.index}].valor" /> <input
								class="form-control" type="hidden"
								name="precos[${status.index}].tipo" value="${tipoPreco}" />
						</div>
					</c:forEach>

					<button class="btn btn-info" type="submit">Cadastrar</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>