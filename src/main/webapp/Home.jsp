<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
<
jsp
 
:include
 
page
="
styles\Home
.css
"
>
</
jsp
:include
>
</style>
<title>Web Project</title>
<!-- Bootstrap CSS from CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div
		class="container d-flex justify-content-center align-items-center vh-100">
		<div class="card shadow-lg p-4 rounded-4"
			style="max-width: 400px; width: 100%;">
			<h3 class="text-center mb-4 text-primary">Login</h3>
			<!-- Form -->
			<form action="" method="post">
				<div class="mb-3">
					<label for="usuario" class="form-label">User</label> <input
						type="text" class="form-control" id="usuario" name="usuario"
						placeholder="Ingrese su usuario" required>
				</div>

				<div class="mb-3">
					<label for="contrasena" class="form-label">Password</label> <input
						type="password" class="form-control" id="contrasena"
						name="contrasena" placeholder="Ingrese su contraseña" required>
				</div>

				<button type="submit" class="btn btn-primary w-100">Send</button>
			</form>
		</div>
	</div>
	<!-- Footer with copyright -->
	<footer class="bg-dark text-light text-center py-3 mt-auto">
		<p class="mb-0">&copy; 2025 TP5_UNT_FRGP_5 | UNT-FRGP</p>
	</footer>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>