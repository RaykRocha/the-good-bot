<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>

<title>The Good Bot</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/album.css" rel="stylesheet">

</head>

<body>

	<header>
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container d-flex justify-content-between">
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
				<div>
					<a href="${contextPath}/bot/form?page=bot-novo"><button
							class="navbar-toggler collapsed text-info" type="button"
							data-toggle="collapse" data-target="#navbarHeader"
							aria-controls="navbarHeader" aria-expanded="false"
							aria-label="Toggle navigation">
							<strong> Novo Bot </strong>
						</button></a> <a href="${contextPath}/segment/form?page=segment-novo"><button
							class="navbar-toggler collapsed text-success" type="button"
							data-toggle="collapse" data-target="#navbarHeader"
							aria-controls="navbarHeader" aria-expanded="false"
							aria-label="Toggle navigation">
							<strong> Novo Seguimento</strong>
						</button></a>
				</div>
			</div>
		</div>
	</header>

	<main role="main">
		<div class="album py-5 bg-secondary">
			<div class="container">
				<h2 class="text-center">
					<strong>Registro e configuração do The Good Bot</strong>
				</h2>
				<c:if test="${not empty msg}">
					<div class="alert alert-warning alert-dismissible fade show"
						role="alert">
						<strong>${msg}</strong>
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				</c:if>

				<br>
				<div class="row">
					<c:forEach items="${bots}" var="bot">
						<div class="col-md-4">
							<div class="card text-white bg-dark mb-4 shadow-sm">
								<div class="card-header">
									<div class="container d-flex justify-content-between">
										<h5>${bot.name}</h5>
										<h5>ID ${bot.id_bot}</h5>
									</div>
								</div>
								<div class="card-body">
									<p class="text-center">
										<strong>Mensagem de Boas Vindas:</strong> ${bot.welcome_msg}
									</p>
									<p class="text-center">
										<strong>Mensagem de despedida:</strong> ${bot.farewell_msg}
									</p>
									<p class="text-center">
										<strong>Tempo de inatividade:</strong> ${bot.downtime}
										segundos
									</p>
									<div class="d-flex justify-content-end">

										<form:form action="${contextPath}/bot/${bot.id_bot}"
											method="delete">
											<div class="btn-group ">
												<a class="btn btn-sm btn-outline-success"
													href="${contextPath}/bot/${bot.id_bot}">Detalhes</a> <a
													class="btn btn-sm btn-outline-warning"
													href="${contextPath}/bot/form?page=bot-editar&id=${bot.id_bot}">Editar</a>
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
	</main>

	<footer class="text-muted bg-dark">
		<div class="container">
			<p class="float-right">
				<a href="#">Voltar ao topo</a>
			</p>
			<p>
				Projeto desenvolvido para o challenge <a
					href="https://www.fiap.com.br/graduacao/n2020/">N2020</a>.
			</p>
		</div>
	</footer>

	<script src="js/jquery-3.3.1.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/holder.min.js"></script>
</body>
</html>