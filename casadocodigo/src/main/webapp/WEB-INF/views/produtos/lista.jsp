<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

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

		<c:if test="${mensagem != null}">
			<div class="row justify-content-sm-center">
				<div class="alert alert-success" role="alert">
					<c:out value="${mensagem }" />
				</div>
			</div>
		</c:if>


		<div class="row justify-content-sm-center">
			<div class="col-md-12">
				<h4>Livros cadastrados</h4>

				<table class="table table-sm table-hover">
					<thead>
						<tr>
							<th>Título</th>
							<th>Descrição</th>
							<th>Páginas</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${produtos}" var="produto">

							<tr>
								
								<td><a href="${s:mvcUrl('PC#detalhe').arg(0,produto.id).build()}">${produto.titulo}</a></td>
								
								<td>${produto.descricao}</td>
								<td>${produto.paginas}</td>
							</tr>

						</c:forEach>
					</tbody>
				</table>


			</div>
		</div>
	</div>
</body>
</html>