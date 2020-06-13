<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>

<title>Bots - Detalhe</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet">
<link href="${contextPath}/css/album.css" rel="stylesheet">

</head>

<body>

	<header>
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="mx-auto order-0">
				<a href="${contextPath}/bot"
					class="navbar-brand d-flex align-items-center"> <svg
						xmlns="http://www.w3.org/2000/svg" width="42" height="42"
						viewBox="0 0 172 172" style="fill: #000000;">
						<g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1"
							stroke-linecap="butt" stroke-linejoin="miter"
							stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0"
							font-family="none" font-weight="none" font-size="none"
							text-anchor="none" style="mix-blend-mode: normal">
						<path d="M0,172v-172h172v172z" fill="none"></path>
						<g fill="#ffffff">
						<path
							d="M86,16.125c-5.93937,0 -10.75,4.81063 -10.75,10.75c0,3.97184 2.17347,7.39808 5.375,9.25928v12.24072h-26.875c-14.77865,0 -26.875,12.09635 -26.875,26.875v5.375h-16.125v37.625h16.125v26.875h21.5h5.375h16.125v-10.75h-10.75v-10.75h53.75v5.375h10.75v-16.125h-75.25v21.5h-10.75v-59.125c0,-8.9681 7.1569,-16.125 16.125,-16.125h64.5c8.9681,0 16.125,7.1569 16.125,16.125v48.375c0,8.9681 -7.1569,16.125 -16.125,16.125h-17.61572c-1.8612,-3.20153 -5.28744,-5.375 -9.25928,-5.375c-5.93937,0 -10.75,4.81062 -10.75,10.75c0,5.93938 4.81063,10.75 10.75,10.75c3.97183,0 7.39808,-2.17347 9.25928,-5.375h17.61572c14.77865,0 26.875,-12.09635 26.875,-26.875v-5.375h16.125v-37.625h-16.125v-5.375c0,-14.77865 -12.09635,-26.875 -26.875,-26.875h-26.875v-12.24072c3.20153,-1.8612 5.375,-5.28744 5.375,-9.25928c0,-5.93937 -4.81063,-10.75 -10.75,-10.75zM64.5,75.25c-5.93938,0 -10.75,4.81063 -10.75,10.75c0,5.93937 4.81062,10.75 10.75,10.75c5.93937,0 10.75,-4.81063 10.75,-10.75c0,-5.93937 -4.81063,-10.75 -10.75,-10.75zM107.5,75.25c-5.93937,0 -10.75,4.81063 -10.75,10.75c0,5.93937 4.81063,10.75 10.75,10.75c5.93937,0 10.75,-4.81063 10.75,-10.75c0,-5.93937 -4.81063,-10.75 -10.75,-10.75zM21.5,91.375h5.375v16.125h-5.375zM145.125,91.375h5.375v16.125h-5.375z"></path></g></g></svg>
					<strong>The Good Bot</strong>
				</a>
			</div>
		</div>
	</header>
	<div class="album py-5 bg-secondary">
		<div class="container">
			<div class="row">
				<div class="col-sm"></div>
				<div class="col-8 py-3 text-white bg-dark shadow-sm">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label class="control-label" for="nome">Nome:</label> <input
								class="form-control" type="text" placeholder="${bot.name}"
								readonly>
						</div>
						<div class="form-group col-md-6">
							<label class="control-label" for="preco">Tempo de
								inatividade:</label> <input class="form-control" type="text"
								placeholder="${bot.downtime}" readonly>
						</div>
					</div>

					<div class="form-group">
						<label class="control-label" for="preco">Mensagem de boas
							vindas:</label> <input class="form-control" type="text"
							placeholder="${bot.welcome_msg}" readonly>

					</div>

					<div class="form-group">
						<label class="control-label" for="preco">Mensagem de
							despedida:</label> <input class="form-control" type="text"
							placeholder="${bot.farewell_msg}" readonly>

					</div>

					<div class="form-group">
						<label class="control-label" for="preco">Resposta default:</label>
						<input class="form-control" type="text"
							placeholder="${bot.default_answer}" readonly>
					</div>
					<a class="btn btn-md btn-outline-default" href="${contextPath}/bot">Voltar</a>

				</div>
				<div class="col-sm "></div>
			</div>
		</div>
	</div>

	<c:if test="${not empty bot.segment}">
		<div class="album bg-secondary">
		<h2 class="text-center">
			<strong>Seguimentos de conversação</strong>
		</h2>
		<div class="container py-3">
			<div class="row">
				<c:forEach items="${bot.segment}" var="bot">
					<div class="col-md-6">
						<div class="card text-white bg-success mb-4 shadow-sm">
							<div class="card-header">
								<div class="container d-flex justify-content-between">
									<h5>${bot.nameSegment}</h5>
									<h5>ID ${bot.id_segment}</h5>
								</div>
							</div>
							<div class="card-body">
								<div class="d-flex justify-content-center">

									<form:form
										action="${contextPath}/segment/${bot.id_segment}"
										method="delete">
										<div class="btn-group ">
											<a class="btn btn-sm btn-outline-warning"
												href="${contextPath}/segment/form?page=segment-editar&id=${bot.id_segment}">Editar</a>
											<input type="submit" value="Excluir"
												class="btn btn-sm btn-outline-danger">
										</div>
									</form:form>
								</div>
							</div>

						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	</c:if>



	


	<footer class="text-muted bg-dark ">
		<div class="container ">
			<p class="float-right ">
				<a href="# ">Voltar ao topo</a>
			</p>
			<p>
				Projeto desenvolvido para o challenge <a
					href="https://www.fiap.com.br/graduacao/n2020/ ">N2020</a>.
			</p>
		</div>
	</footer>

	<script src="${contextPath}/js/jquery-3.3.1.slim.min.js"></script>
	<script src="${contextPath}/js/popper.min.js"></script>
	<script src="${contextPath}/js/bootstrap.min.js"></script>
	<script src="${contextPath}/js/holder.min.js"></script>

</body>
</html>