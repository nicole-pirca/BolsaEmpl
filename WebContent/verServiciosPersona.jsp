<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="administracion.ControladorAdm"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Ver Servicios Persona</title>
</head>
<body>
<% ArrayList personaServicios = ControladorAdm.listarServicios("4"); %>

<table style="width:100%">
  <tr>
    <th>idPersonaServicio</th>
    <th>idServicio</th> 
    <th>Codigo Persona</th>
    <th>estado</th>
  </tr>
  <% for(int i = 0; i < personaServicios.size(); i++) {
  		Vector personaServicio = (Vector)personaServicios.get(i);
  		String idPersonaServicio = personaServicio.get(0).toString().trim();
  		String idServicio = personaServicio.get(1).toString().trim();
  		String codPersona = personaServicio.get(2).toString().trim();
  		String estado = personaServicio.get(3).toString().trim();
  	%>
   <tr>
    <td><%= idPersonaServicio %></td>
    <td><%= idServicio %></td> 
    <td><%= codPersona %></td>
    <td><%= estado %></td>
  </tr>
  
  <% } %>
 
</table>

</body>
</html>