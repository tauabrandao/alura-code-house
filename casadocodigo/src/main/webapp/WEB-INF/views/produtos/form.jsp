<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

				<form action="/casadocodigo/produtos/cadastrar" method="post">
					<div class="form-group">
						<label for="titulo">Título</label> <input type="text"
							class="form-control" name="titulo" placeholder="Título do Livro" />
					</div>
					<div class="form-group">
						<label for="descricao">Descrição</label>
						<textarea class="form-control" rows="10" cols="20"
							name="descricao"></textarea>
					</div>
					<div class="form-group">
						<label for="paginas">Páginas</label> <input type="text"
							class="form-control" name="paginas"
							placeholder="Quantidade de páginas" />
					</div>

					<button class="btn btn-info" type="submit">Cadastrar</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>