<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Casa do Codigo</title>


<style type="text/css">
	.msg-erro{
		color: red;
		background-color: #FFE2E2;
		border: 1px solid #FFBFBF;
		border-radius: 10px;
		padding: 5px;
 		float: right;
	}
</style>


<jsp:include page="../usualHTML/bootstrap-import.jsp"></jsp:include>
<jsp:include page="../usualHTML/navbar.jsp"></jsp:include>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h4>Cadastro de Livros</h4>

				<!-- 				mvcUrl("INICIAIS DO CONTROLE#metodo").build() para criar a URL -->
				<form:form action="${s:mvcUrl('PC#gravar').build()}" method="POST"
					commandName="produto" enctype="multipart/form-data">

					<div class="form-group">
						<label for="titulo">Título</label>
						<form:input class="form-control" path="titulo" />
						<form:errors class="msg-erro" path="titulo" />


					</div>
					<div class="form-group">
						<label for="descricao">Descrição</label>
						<form:textarea class="form-control" path="descricao"/>
						<form:errors class="msg-erro" path="descricao" />
					</div>
					<div class="form-group">
						<label for="paginas">Páginas</label>
						<form:input class="form-control" path="paginas"/>

						<form:errors class="msg-erro" path="paginas" />
					</div>
					<div class="form-group">
						<label for="dataLancamento">Data de Lançamento</label>
						<form:input class="form-control" path="dataLancamento" />

						<form:errors class="msg-erro" path="dataLancamento" />
					</div>

					<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
						<div class="form-group">
							<label>${tipoPreco}</label>
							<form:input class="form-control" path="precos[${status.index}].valor" />							

 							<form:input
								class="form-control" type="hidden"
								path="precos[${status.index}].tipo" value="${tipoPreco}" />
						</div>
					</c:forEach>
					
					<div class="form-group">
						<label for="sumario">Sumário</label>
						<input class="form-control-file" name="sumario" type="file" />
					</div>

					<button class="btn btn-info" type="submit">Cadastrar</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>