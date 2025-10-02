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
      <li class="sidebar__item">Listado Cliente</li>
      <li class="sidebar__item">Alta Cliente</li>
    </ul>
  </nav>

  <!-- Body | Right side -->
  <main class="main-content">
    <h2 class="main-content__title">Listado de Clientes</h2>
    <p class="main-content__user">
      <!-- TODO: This have to be a session variable -->
      Usuario: <%=request.getAttribute("usermame")%>
    </p>
    <!-- FUTLAN AGREGAR MÁS COSAS -->
	    <table id="myTable" class="display">
		    <thead>
	        <tr>
	            <th>Column 1</th>
	            <th>Column 2</th>
	        </tr>
	    	</thead>
		    <tbody>
	        <tr>
            <td>Row 1 Data 1</td>
            <td>Row 1 Data 2</td>
	        </tr>
	        <tr>
            <td>Row 2 Data 1</td>
            <td>Row 2 Data 2</td>
	        </tr>
		    </tbody>
		</table>
  </main>
  

</body>
</html>