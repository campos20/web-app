<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<c:import url="common/header.jsp" />

<body>
	<div class="jumbotron">
		<h1>
			Seja bem vindo, <c:out value="${usuario}" />!
		</h1>
	</div>

	<c:import url="common/footer.jsp" />

</body>
</html>