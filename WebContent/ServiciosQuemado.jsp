<%@page import="administracion.ControladorAdm"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<% String servicios[] = {"Mecanico","Artesano","Carpintero"};
%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>LISTAR SERVICIOS</title>
</head>
<body>

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
					 name="servicio" id="servicio">
					<option value="0">Escoga una Opción</option>
					<%
						for (int i = 0; i < servicios.length; i++) {
							String idservicio = Integer.toString(i+1);
							String nombreServicio = servicios[i];
						//String nombreServicio = servicios.
					%>
					<option value="<%=idservicio%>"><%=nombreServicio%>
					</option>
					<%
						}
					%>
				</select> <br> <br>
				<div>
					<input type="submit" value="Enviar">

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
    <input type="apellidos"  id="busquedaArtesano" aria-describedby="busquedaArtesano" placeholder="Enter apellido">
    <small id="apellidos" >Ingrese los dos apellidos</small>
  </div>

</body>
</html>