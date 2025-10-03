<%@ page import="model.Customer" %>
<%@ page import="java.util.LinkedList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<style type="text/css">
		<jsp:includepage="styles\ClientList.css"></jsp:include>
	</style>
	<title>Web Project V</title>

	<link rel="stylesheet" type="text/css"
		href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
		
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$('#myTable').DataTable();
		});
	</script>
</head>
<body class="layout">
  <!-- Navigation | Left side -->
  <nav class="sidebar">
    <h3 class="sidebar__title">Menú</h3>
    <ul class="sidebar__list">
      <li class="sidebar__item active">Listado Cliente</li>
      <li class="sidebar__item">Alta Cliente</li>
      <li class="sidebar__item">
      	<a href="ServletHome?session=1" class="sidebar__link" >Cerrar Session</a>
      </li>
    </ul>
  </nav>

  <!-- Body | Right side -->
  <main class="main-content">
    <h2 class="main-content__title">Listado de Clientes</h2>
    <p class="main-content__user">
      <!-- TODO: This have to be a session variable -->
      Usuario: <%=session.getAttribute("login")%>
    </p>
    <!-- Add the rest of the list-->
    <% 
    	LinkedList<Customer> list = new LinkedList<>(); 
    	if (request.getAttribute("list-client") != null)
    		list =(LinkedList<Customer>)request.getAttribute("list-client");
    %>
	    <table id="myTable" class="display">
    	<% if (list != null ) { %>
		    <thead>
	        <tr>
	            <th>DNI</th>
	            <th>CUL</th>
	            <th>Nombre y Apellido</th>
	            <th>Sexo</th>
	            <th>Fecha de Nacimiento</th>
	            <th>Dirección</th>
	            <th>Nacionalidad</th>
	            <th>Localidad</th>
							<th>Provincia</th>
	        </tr>
	    	</thead>
        <% for (Customer customer : list ) { %>
		    <tbody>
	        <tr>
            <td><%=customer.getCustomerId()%></td>
            <td><%=customer.getTaxId()%></td>
            <td><%=customer.getFirstName() + " " 
            	+ customer.getLastName()%> </td>
            <td><%=customer.getGender()%></td>
            <td><%=customer.getBirthDate()%></td>
            <td><%=customer.getAddress()%></td>
            <td><%=customer.getNationality()%></td>
            <td><%=customer.getCity()%></td>
            <td><%=customer.getProvince()%></td>
	        </tr>
		    	<%}%>
		    </tbody>
		    <%}%>
		</table>
  </main>
  

</body>
</html>