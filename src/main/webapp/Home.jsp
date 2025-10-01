<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
<jsp:includepage="styles\Home.css"></jsp:include>
</style>
<title>Web Project V</title>
<!-- Bootstrap CSS from CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<
<body>
	<div class="container-login">
		<div class="card-login">
			<h3>Iniciar Sesion</h3>
			<!-- Form -->
			<form action="ServletHome" method="post">
				<div class="mb-3">
					<label for="username" class="form-label">Usuario:</label> <input
						type="text" class="form-control" id="username" name="username"
						placeholder="Ingrese su nombre de usuario" required>
				</div>

				<div class="mb-3">
					<label for="password" class="form-label">Contraseña:</label> <input
						type="password" class="form-control" id="password" name="password"
						placeholder="Ingrese su contraseña" required>
				</div>

				<input type="submit" name="btnSend" class="btn btn-primary w-100"
					value="Ingresar" />
			</form>
		</div>
		<!-- If the user is invalid -->
		<%
		    if (request.getAttribute("message") != null) { 
		%>
		    <p class="error-message" id="error-msg">Usuario invalido</p>
		<% 
		    } 
		%>		
	</div>



	<!-- Footer -->
	<footer>
		<p>&copy; 2025 GRUPO 11 | PR4 | UNT-FRGP</p>
	</footer>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js">
	</script>
	
	<script>
  // whether there is a erros
	  const errorMsg = document.getElementById("error-msg");
	  if (errorMsg) {
	    // After 3 seg, add the class.
	    setTimeout(() => {
	      errorMsg.classList.add("fade-out");
	    }, 3000);
	
	    // After 4 seg, delete from DOM.
	    setTimeout(() => {
	      errorMsg.remove();
	    }, 4000);
	  }
  </script>
</body>
</html>