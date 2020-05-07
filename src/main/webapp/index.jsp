<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>

<c:import url="common/header.jsp"></c:import>

<c:set var="erro" value="${null}" />

<!-- Pessoa clicou em Entrar -->
<c:if
	test="${\"POST\".equalsIgnoreCase(pageContext.request.method) && pageContext.request.getParameter(\"submit\") != null}">

	<!-- Cria um objecto com usuario e senha -->
	<jsp:useBean id="loginBean"
		class="com.alexandrecampos.webapp.bean.LoginBean">
		<jsp:setProperty name="loginBean" property="*" />
	</jsp:useBean>

	<!-- Decisao -->
	<c:choose>
		<c:when test="${!loginBean.isValid()}">
			<c:set var="erro"
				value="Usuário ou senha inválidos. Tente novamente." />
		</c:when>

		<c:otherwise>
			<c:redirect url="/boas-vindas.jsp"></c:redirect>
		</c:otherwise>
	</c:choose>

</c:if>

<body>
	<div class="jumbotron">
		<h2>Login</h2>
	</div>

	<c:if test="${erro != null}">
		<span class="text-danger"> <c:out value="${erro}"></c:out>
		</span>
	</c:if>

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

	<c:import url="common/footer.jsp"></c:import>

</body>
</html>