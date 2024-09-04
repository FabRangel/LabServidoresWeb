<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/login.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/styles.css">
</head>
<title>Registro</title>

</head>
<body>
<jsp:include page="componentes/header.jsp"></jsp:include>
	<div class="container">
		<div class="login-container">
			<h1>Regístrate</h1>
			<form action="<%=request.getContextPath()%>/RegistroControlador" method="post">
				<input type="text" name="name" placeholder="Nombre" required>
				<input type="text" name="username" placeholder="Usuario" required>
				<input type="password" name="password" placeholder="Contraseña"
					required>
				<button type="submit">Enviar</button>
				<c:if test="${not empty errorMessage}">
					<p class="error">${errorMessage}</p>
				</c:if>
			</form>
		</div>
	</div>
</body>
</html>