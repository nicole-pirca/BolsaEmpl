<%@page import="administracion.ControladorAdm"%>

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
<title>LISTAR SERVICIOS</title>
</head>
<body>

	<%
		ArrayList servicios = ControladorAdm.listarServicios("4");
	%>

	<form name="formaServicio" action="ResponderSolicitud.jsp"
		method="post">
		<div class="menu">
			<a href="index.jsp"> <img src="images/logo2.png">
			</a>
			Regresar al Menú
		</div>
		
		<div id="cuadro">
			<div id="cabeza">
				<h1>SERVICIOS</h1>
			</div>

			<div id="cuerpo" class="col-sm-9">
				<label for="servicio"> Escoja un Servicio</label> <select
					class="custom-select" name="servicio" id="servicio">
					<option value="0">Escoga una Opción</option>
					<%
						for (int i = 0; i < servicios.size(); i++) {
							Vector servicio = (Vector) servicios.get(i);
							String idServicio = servicio.get(0).toString().trim();
							String nombreServicio = servicio.get(1).toString().trim();
					%>
					<option value="<%=idServicio%>"><%=nombreServicio%>
					</option>
					<%
						}
					%>
				</select> <br> <br>
				<div>
					<input class="btn btn-primary" type="submit" value="Enviar">

				</div>
			</div>
		</div>
		<br>
		<div>
			<p>
			¿Conoce algún artesano aquí?
			Podemos ayudarle a contactarle. 
			</p>
			
			Escriba sus apellidos aquí:
			
			
		</div>


	</form>
	
	<form>
  <div class="form-group">
    <label for="busquedaArtesano">Apellidos del artesano:</label>
    <input type="apellidos" class="form-control" id="busquedaArtesano" aria-describedby="busquedaArtesano" placeholder="Enter apellido">
    <small id="apellidos" class="form-text text-muted">Ingrese los dos apellidos</small>
  </div>
  

  
  <table class="table"  style="width:100%">
			
			<%
				for (int i = 0; i < servicios.size(); i++) {

					Vector servicio = (Vector) servicios.get(i);
					String idServicio = servicio.get(0).toString().trim();
					String nombreServicio = servicio.get(1).toString().trim();
					//out.println(idServicio + nombreServicio);
			%>
			<tr>
				<th><%=idServicio%></th>
				<th><%=nombreServicio%></th>
			</tr>
			<%}%>

</table>
  

</body>
</html>