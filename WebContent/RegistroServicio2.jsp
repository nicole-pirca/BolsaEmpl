<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="administracion.ControladorAdm"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css">


<meta charset="ISO-8859-1">
<title>Registrar Servicios 2</title>
</head>
<body>

<div class ="container">
<header class="menu">
		<a href="MostrarCatalogo.jsp"> <img src="images/logo2.png">
		</a> BOLSA DE EMPLEO PICHINCHA
	</header>
  <div class="mx-auto" style="width: 500px;">
	 
 
		</br> 

	<%
		String catalogo = request.getParameter("catalogo") != null ? request.getParameter("catalogo") : "0";
		String nombreCatalogo = ControladorAdm.verCatalogo(catalogo);
		ArrayList servicios = ControladorAdm.listarServicios(catalogo);
	%>


	<%
		if (catalogo.equals("0")) {
	%>
	No ha seleccionado nada
	<%
		} else {
	%>
	<%=nombreCatalogo%>
	<%
		}
	%>

	</br> 

	<form name="MostrarServicios" onsubmit="checkBoxValidation()"
		action="PersonaServicio.jsp" method="post">

		<label for="servicio"> Escoja los Servicios</label>

		<div class="form-row">
		

			<%
				for (int i = 0; i < servicios.size(); i++) {
					Vector servicio = (Vector) servicios.get(i);
					String idServicio = servicio.get(0).toString().trim();
					String nombreServicio = servicio.get(1).toString().trim();
			%>
			<p class="text-left">
			<div class="col-sm-5">
				<input type="checkbox" id="cbox1" name="servicio"
				
					value="<%=idServicio%>" style="margin-left: 1rem"><%=nombreServicio%></p>
					
			</div>
			<%
				}
			%>
		</div>
		
		 <input class="btn btn-primary" type="submit" value="Guardar">
         <a class="btn btn-primary" href="MostrarCatalogo.jsp">Regresar</a>		
		

	</form>


</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</body>
</html>