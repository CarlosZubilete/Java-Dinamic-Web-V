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
  <h2 class="main-content__title">Formulario Cliente</h2>
  <p class="main-content__user">
    Usuario: <%=session.getAttribute("login")%>
  </p>

  <form class="form form-client">
    <fieldset class="form__fieldset">
      <legend class="form__legend">Nuevo Cliente</legend>
			<!-- FRIST ROW -->
			<div class="form__group">
	      <div class="form__group_left">
	        <label for="dni" class="form__label">DNI *</label>
	        <input type="number" id="dni" required name="DNI" class="form__input"/>
	        <span class="form__help">Solo números 6 a 8 dígitos (ej: 12345678)</span>
	      </div>
	
	      <div class="form__group_right">
	        <label for="cuil" class="form__label">CUIL *</label>
	        <input type="number" id="cuil" required name="CUIL" class="form__input"/>
	        <span class="form__help">Formato: 11 dígitos (ej: 20333444555)</span>
	      </div>
			</div>

			<!-- SECOND ROW -->
			<div class="form__group">		
	      <div class="form__group_left">
	        <label for="firstname" class="form__label">Nombre *</label>
	        <input type="text" id="firstname" required name="firstname" placeholder="Ingrese sus nombres" class="form__input"/>
	      </div>
	
	      <div class="form__group_right">
	        <label for="lastname" class="form__label">Apellido *</label>
	        <input type="text" id="lastname" required name="lastname" placeholder="Ingrese sus apellidos" class="form__input"/>
	      </div>
			</div>
			
			<!-- THIRD ROW -->
			<div class="form__group">
	      <div class="form__group_left">
	        <label for="sexo" class="form__label">Sexo *</label>
	        <select id="sexo" class="form__select" required>
	          <option value="0" selected>-- Seleccione --</option>
	          <option value="1">Masculino</option>
	          <option value="2">Femenino</option>
	        </select>
	      </div>

      <div class="form__group_right">
        <label for="nationality" class="form__label">Nacionalidad *</label>
        <input type="text" id="nationality" required name="nationality" class="form__input"/>
      </div>
		</div>
		
		<!-- FOURTH ROW -->
		<div class="form__group">
      <div class="form__group_left">
        <label for="birthday" class="form__label">Fecha de Nacimiento *</label>
        <input type="date" id="birthday" required name="birthday" class="form__input"/>
      </div>

      <div class="form__group_right">
        <label for="address" class="form__label">Dirección *</label>
        <input type="text" id="address" required name="address" placeholder="Ciudad - Calle número" class="form__input"/>
      </div>
		</div>

			<!-- FIFTH ROW -->
			<div class="form__group">
		      <div class="form__group_left">
		        <label for="locality" class="form__label">Localidad *</label>
		        <input type="text" id="locality" required name="locality" class="form__input"/>
		      </div>
		
		      <div class="form__group_right">
		        <label for="province" class="form__label">Provincia *</label>
		        <input type="text" id="province" required name="province" class="form__input"/>
		      </div>
			</div>
		
			<div class="form__group">
	      <div class="form__group_left">
	        <label for="email" class="form__label">Correo electrónico *</label>
	        <input type="email" id="email" required name="email" class="form__input"/>
	      </div>
	
	      <div class="form__group_right">
	        <label for="phonenumber" class="form__label">Teléfono *</label>
	        <input type="number" id="phonenumber" required name="phonenumber" class="form__input"/>
	      </div>
			</div>
    </fieldset>

    <input type="submit" name="btnAddClient" value="Guardar Cliente" class="form__submit"/>
  </form>
</main>
 
</body>
</html>