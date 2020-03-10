<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">

		<a class="navbar-brand" href="${s:mvcUrl('HC#index').build()}">
			Casa do Código </a>


		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li><a href="${s:mvcUrl('PC#listar').build()}"> Lista de
						Produtos </a></li> |
				<li><a href="${s:mvcUrl('PC#form').build()}"> Cadastro de
						Produtos </a></li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li class="nav-item"><a href="#"> <security:authentication
							property="principal" var="usuario" /> Usuário:
						${usuario.username }
				</a></li>
				<li class="nav-item"><a href="<c:url value="/logout" />">Sair</a></span>
				</li>
			</ul>

		</div>
	</div>
</nav>