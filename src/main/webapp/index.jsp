<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=UTF-8">
<title>Login</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<%
	// Entre esses simbolos, podemos escrever java
String erro = null;

// Checa se o usuario e a senha estao corretos
if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit") != null) {
%>
<jsp:useBean id="loginBean"
	class="com.alexandrecampos.webapp.bean.LoginBean">
	<jsp:setProperty name="loginBean" property="*" />
</jsp:useBean>
<%
	if (loginBean.isValid()) {
	// Usuario validado. Mostrar as mensagens de boas vindas
	out.println("<h2>Bem vindo</h2>");
	out.println("Login efetuado com sucesso!");
	return;
} else {
	erro = "Usuário ou senha inválidos. Tente novamente.";
}
%>

<%
}
%>
<body>
	<div class="jumbotron">
		<h2>Login</h2>
	</div>
	<!-- Checa se o usuario foi validado -->
	<%
		if (erro != null) {
	%>
	<span class="text-danger"> <%
 	out.print(erro);
 %>
	</span>
	<%
		}
	%>

	<form method="post" class="text-center">

		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="basic-addon1">Usuário</span>
			</div>
			<input type="text" class="form-control" placeholder="Usuário"
				aria-label="Usuário" aria-describedby="basic-addon1" name="usuario">
		</div>

		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="basic-addon2">Senha</span>
			</div>
			<input type="password" class="form-control" placeholder="Senha"
				aria-label="Senha" aria-describedby="basic-addon2" name="senha">
		</div>

		<button type="submit" name="submit" class="btn btn-primary">Entrar</button>
		<button type="reset" class="btn btn-warning">Reset</button>
	</form>

	<!-- Dependencias bootstrap -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>