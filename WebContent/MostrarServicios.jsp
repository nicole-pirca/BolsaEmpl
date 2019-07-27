<%@page import="administracion.ControladorAdm"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Mostrar Servicios</title>
</head>
<body>
<% 
String catalogo = request.getParameter("catalogo") !=null ? request.getParameter("catalogo") :"0";
String nombreCatalogo= ControladorAdm.verCatalogo(catalogo);
//----------- quemado
String idtiposervicio = "11";
ArrayList servicios = ControladorAdm.listarServicios(idtiposervicio);
%>

<h1> Hola Aqui voy a mostrar los servicios dado un catalogo</h1>

<%if(catalogo.equals("0")){ %>
		No ha seleccionado nada
	<%}else{ %>
		<%= nombreCatalogo %> 
	<%}%>

	
	
	<form name="MostrarServicios" onsubmit="checkBoxValidation()" action="PersonaServicio.jsp"
		 method="post">

		<label for="servicio"> Escoja los Servicios</label>

		<%
			for (int i = 0; i < servicios.size(); i++) {
				Vector servicio = (Vector) servicios.get(i);
				String idServicio = servicio.get(0).toString().trim();
				String nombreServicio = servicio.get(1).toString().trim();
		%>
		<span class="border border-primary">
		<p>
			<input type="checkbox" id="cbox1" name="servicio"
				value="<%=idServicio%>"><%=nombreServicio%></p>
		<%}%>

		<div>
		</span>
			<input class="btn btn-primary" type="submit" value="Guardar">
		</div>

	</form>




</body>
</html>