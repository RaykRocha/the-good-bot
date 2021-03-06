<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>

<head>

<title>Bots - Editar</title>

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

	<div class="album py-4 bg-secondary">

		<div class="container">
			<div class="row">
				<div class="col-sm"></div>
				<div class="col-8 text-white bg-dark shadow-sm">
					<h2 class="text-center">
						<strong>Editar configurações do bot</strong>
					</h2>
					<form:form modelAttribute="botModel"
						action="${contextPath}/bot/${botModel.id_bot}" method="put">
						<spring:hasBindErrors name="botModel">
							<div class="alert alert-danger" role="alert">
								<form:errors path="*" class="has-error" />
							</div>
						</spring:hasBindErrors>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label class="control-label" for="nome">Nome:</label>
								<form:input type="text" name="name" id="name" path="name"
									value="${bot.name}" class="form-control" maxlength="50"
									size="50" />
								<font color="red"> <form:errors path="name"></form:errors>
								</font><br />
							</div>
							<div class="form-group col-md-6">
								<label class="control-label" for="preco">Tempo de
									inatividade (Segundos)</label>
								<form:input type="number" id="downtime" path="downtime"
									value="${bot.downtime}" name="downtime" class="form-control" />
								<font color="red"> <form:errors path="downtime"></form:errors>
								</font><br />
							</div>
						</div>


						<div class="form-group">
							<label class="control-label" for="nome">Mensagem de boas
								vindas:</label>
							<form:input type="text" name="welcome_msg" path="welcome_msg"
								id="welcome_msg" value="${bot.welcome_msg}" class="form-control"
								maxlength="50" size="50" />
							<font color="red"> <form:errors path="welcome_msg"></form:errors>
							</font><br />
						</div>

						<div class="form-group">
							<label class="control-label" for="mesnagem">Mensagem de
								despedida:</label>
							<form:input type="text" name="farewell_msg" path="farewell_msg"
								id="farewell_msg" value="${bot.farewell_msg}"
								class="form-control" maxlength="50" size="50" />

							<font color="red"> <form:errors path="farewell_msg"></form:errors>
							</font><br />
						</div>

						<div class="form-group">
							<label class="control-label" for="default_answer">Resposta
								default:</label>
							<form:input type="text" name="default_answer"
								path="default_answer" id="default_answer"
								value="${bot.default_answer}" class="form-control"
								maxlength="50" size="50" />

							<font color="red"> <form:errors path="default_answer"></form:errors>
							</font><br />
						</div>
						<hr>

						<div class="d-flex justify-content-end">
							<a class="btn btn-md btn-outline-success"
								href=" ${contextPath}/bot">Cancelar</a>
							<hr>
							<button type="submit" class="btn btn-md btn-outline-primary">Salvar</button>
						</div>
						<hr>
					</form:form>

				</div>
				<div class="col-sm "></div>
			</div>
		</div>

	</div>
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