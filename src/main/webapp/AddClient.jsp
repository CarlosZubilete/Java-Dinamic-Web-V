<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style type="text/css">
		<jsp:includepage="styles\AddClient.css"></jsp:include>
	</style>
	<title>Web Project V</title>
</head>
<body>
<body class="layout">
  <!-- Navigation | Left side -->
  <nav class="sidebar">
    <h3 class="sidebar__title">Menú</h3>
    <ul class="sidebar__list">
      <li class="sidebar__item">
      	<a href="ServletClientList?listclient=1" class="sidebar__link" >Listado Clientes</a>
      </li>
      <li class="sidebar__item">
      	<a class="sidebar__link active" >Alta Cliente</a>
      </li>
      <li class="sidebar__item">
      	<a href="ServletHome?session=1" class="sidebar__link" >Cerrar Session</a>
      </li>
    </ul>
  </nav>
  
 <!-- MAIN -->
	 <main class="main-content">
	  <h2 class="main-content__title">Formulario Cliente: 
		  <%
	    	if (request.getAttribute("message") != null) { 
			%>
		    <span class="error-message" id="error-msg"><%=request.getAttribute("message")%></span>
			<% 
		    } 
			%>
	  </h2>
	  <p class="main-content__user">
	    Usuario: <%=session.getAttribute("login")%>    
			
	  </p>
		<!-- FORM : NEW CLIENT -->
		<form class="form form-client" method="post" action="ServletClientList">
		  <fieldset class="form__fieldset">
		    <legend class="form__legend">Nuevo Cliente</legend>
		
		    <!-- FIRST ROW -->
		    <div class="form__group">
		      <div class="form__group_left">
		        <label for="dni" class="form__label">DNI *</label>
		        <input
		          type="number"
		          id="dni"
		          name="DNI"
		          class="form__input"
		          required
		          min="100000"
		          max="99999999"
		          value="88888888"
		        />
		        <span class="form__help">Solo números de 6 a 8 dígitos (ej: 12345678)</span>
		      </div>
		
		      <div class="form__group_right">
		        <label for="cuil" class="form__label">CUIL *</label>
		        <input
		          type="number"
		          id="cuil"
		          name="CUIL"
		          class="form__input"
		          required
		          min="10000000000"
		          max="99999999999"
		          value="20333444555"
		        />
		        <span class="form__help">Formato: 11 dígitos (ej: 20333444555)</span>
		      </div>
		    </div>
		
		    <!-- SECOND ROW -->
		    <div class="form__group">
		      <div class="form__group_left">
		        <label for="firstname" class="form__label">Nombre *</label>
		        <input
		          type="text"
		          id="firstname"
		          name="firstname"
		          class="form__input"
		          required
		          maxlength="50"
		          placeholder="Ingrese sus nombres"
		          value="Test Nombre"
		        />
		      </div>
		
		      <div class="form__group_right">
		        <label for="lastname" class="form__label">Apellido *</label>
		        <input
		          type="text"
		          id="lastname"
		          name="lastname"
		          class="form__input"
		          required
		          maxlength="50"
		          placeholder="Ingrese sus apellidos"
		          value="Test Apellido"
		        />
		      </div>
		    </div>
		
		    <!-- THIRD ROW -->
		    <div class="form__group">
		      <div class="form__group_left">
		        <label for="sexo" class="form__label">Sexo *</label>
		        <select id="sexo" name="gender" class="form__select" required>
		          <option value="0" selected>-- Seleccione --</option>
		          <option value="M">Masculino</option>
		          <option value="F">Femenino</option>
		        </select>
		      </div>
		
		      <div class="form__group_right">
		        <label for="nationality" class="form__label">Nacionalidad *</label>
		        <input
		          type="text"
		          id="nationality"
		          name="nationality"
		          class="form__input"
		          required
		          maxlength="30"
		          value="United State"
		        />
		      </div>
		    </div>
		
		    <!-- FOURTH ROW -->
		    <div class="form__group">
		      <div class="form__group_left">
		        <label for="birthday" class="form__label">Fecha de Nacimiento *</label>
		        <input
		          type="date"
		          id="birthday"
		          name="birthday"
		          class="form__input"
		          required
		          min="1900-01-01"
		          max="2025-12-31"
		        />
		      </div>
		
		      <div class="form__group_right">
		        <label for="address" class="form__label">Dirección *</label>
		        <input
		          type="text"
		          id="address"
		          name="address"
		          class="form__input"
		          required
		          maxlength="100"
		          placeholder="Calle número"
		          value="Falsa 123"
		        />
		      </div>
		    </div>
		
		    <!-- FIFTH ROW -->
		    <div class="form__group">
		      <div class="form__group_left">
		        <label for="locality" class="form__label">Localidad *</label>
		        <input
		          type="text"
		          id="locality"
		          name="locality"
		          class="form__input"
		          required
		          maxlength="50"
		          value="Villa Lañata"
		        />
		      </div>
		
		      <div class="form__group_right">
		        <label for="province" class="form__label">Provincia *</label>
		        <input
		          type="text"
		          id="province"
		          name="province"
		          class="form__input"
		          required
		          maxlength="50"
		          value="Buenos Aires"
		        />
		      </div>
		    </div>
		
		    <!-- SIXTH ROW -->
		    <div class="form__group">
		      <div class="form__group_left">
		        <label for="email" class="form__label">Correo electrónico *</label>
		        <input
		          type="email"
		          id="email"
		          name="email"
		          class="form__input"
		          required
		          maxlength="100"
		          value="testcorreo@gmail.com"
		        />
		      </div>
		
		      <div class="form__group_right">
		        <label for="phonenumber" class="form__label">Teléfono *</label>
		        <input
		          type="number"
		          id="phonenumber"
		          name="phonenumber"
		          class="form__input"
		          required
		          min="1000000"
		          max="999999999999"
		          value="1122334455"
		        />
		      </div>
		    </div>
		  </fieldset>
		  
		 	<input type="submit" name="btnAddClient" value="Guardar Cliente" class="form__submit"/>
		  
		</form>
	
	</main>
 
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
	    }, 5000);
	  }
  </script>
</body>
</body>
</html>