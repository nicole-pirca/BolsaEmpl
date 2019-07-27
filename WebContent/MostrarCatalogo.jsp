<%@page import="administracion.ControladorAdm"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>TIPOS DE SERVICIOS</title>
	

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
</head>
<body>

<div class ="container">
<header class="menu">
		<a href="MostrarCatalogo.jsp"> <img src="images/logo2.png">
		</a> BOLSA DE EMPLEO PICHINCHA
	</header>
  <div class="mx-auto" style="width: 250px;">
	   <h1>SERVICIOS</h1>
	<%
		ArrayList catalogos = ControladorAdm.listarCatalogos();
	%>
	
	
	
	
	
	
	<form name="formaCatalogo" action="RegistroServicio2.jsp" method="post">

		<div class="row">
			<div class="col-sm-9">
				<label for="catalogo"> Escoja un tipo de servicio</label> <select
					name="catalogo" id="catalogo">
					 </br>
					<option value="0">Escoja una Opción</option>
					<%
						for (int i = 0; i < catalogos.size(); i++) {
							Vector catalogo = (Vector)catalogos.get(i);
							String idCatalogo = catalogo.get(0).toString().trim();
							String Nombrecatalogo = catalogo.get(1).toString().trim();
					%>
					<option value="<%=idCatalogo%>"><%=Nombrecatalogo%>
					</option>
						</br>
					<%
						}
					%>
				</select>
			</div>
		</div>
		
			</br>
		<div>
			<input class="btn btn-primary" type="submit" value="Enviar">
			<a class="btn btn-primary" href="index.jsp">Pantalla Principal</a>	
		</div>
	</form>
	<!--  
	<table>
		<%
			for (int i = 0; i < catalogos.size(); i++) {
				Vector catalogo = (Vector) catalogos.get(i);
				String idCatalogo = catalogo.get(0).toString().trim();
				String Nombrecatalogo = catalogo.get(1).toString().trim();
		%>
		<tr>
			<th><%=idCatalogo%></th>

			<th><%=Nombrecatalogo%></th>
		</tr>
		<%
			}
		%>
	</table>

-->


</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>



</body>
</html>