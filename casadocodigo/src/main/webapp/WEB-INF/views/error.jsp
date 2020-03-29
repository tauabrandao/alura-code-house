<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Erro - Casa do Codigo</title>


<%@ include file="/WEB-INF/views/usualHTML/bootstrap-import.jsp"%>

</head>
<body>
	<%@ include file="/WEB-INF/views/usualHTML/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<section id="index-section" class="container middle">
				<h2>Erro genérico acontecendo!!!</h2>

				<!-- 
            Mensagem: ${exception.message}
            <c:forEach items="${exception.stackTrace}" var="stk">
                ${stk}
            </c:forEach>
        --> </section>

			</div>
		</div>
	</div>
</body>
</html>