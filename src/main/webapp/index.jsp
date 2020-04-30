<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=UTF-8">
<title>Login</title>
</head>
<%
	// Entre esses simbolos, podemos escrever java
String erro = null;

// Checa se o usuario e a senha estao corretos
if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit") != null) {
	String usuario = request.getParameter("usuario");
	String senha = request.getParameter("senha");

	if ("admin".equalsIgnoreCase(usuario) && "admin".equalsIgnoreCase(senha)) {
		// Usuario validado
		out.print("Bem vindo, " + usuario);
		return;
	} else {
		erro = "Usuário ou senha inválidos. Tente novamente.";
	}
}
%>
<body>
	<h2>Login</h2>
	<!-- Checa se o usuario foi validado -->
	<%
		if (erro != null) {
	%>
	<span style="color: red;"> <%
 	out.print(erro);
 %>
	</span>
	<%
		}
	%>

	<form method="post">
		Usuario: <input type="text" name="usuario"> <br>
		Senha: <input
			type="password" name="senha"> <br>
		<button type="submit" name="submit">Entrar</button>
		<button type="reset">Reset</button>
	</form>
</body>
</html>