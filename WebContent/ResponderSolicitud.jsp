<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="administracion.*" %>
<% 
String servicio = request.getParameter("servicio") !=null ? request.getParameter("servicio") :"0";
String nombreServicio= ControladorAdm.verServicio(servicio);

%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EjemploB</title>
</head>
<body>
	<h1>AQUI se va a mostrar los artesanos dado un servicio</h1>
	<h1>
	<%if(servicio.equals("0")){ %>
		No ha seleccionado nada
	<%}else{ %>
		<%= servicio %>
		<%= nombreServicio %>
		
	<%}%>
	</h1>
</body>
</html>

