<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="administracion.ControladorAdm"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>

	<%
		ArrayList servicios = ControladorAdm.listarServicios("4");
	%>

	<div>
		<table style="width:100%">
			<tr>
				<th>idPersonaServicio</th>
				<th>idServicio</th>
				<th>Codigo Persona</th>
				<th>estado</th>
			</tr>
			<%
				for (int i = 0; i < servicios.size(); i++) {

					Vector servicio = (Vector) servicios.get(i);
					String idServicio = servicio.get(0).toString().trim();
					String nombreServicio = servicio.get(2).toString().trim();
			%>
			<tr>
				<th><%=idServicio%></th>
				<th><%=nombreServicio%></th>
			</tr>
			<%}%>

		</table>

	</div>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">First</th>
				<th scope="col">Last</th>
				<th scope="col">Handle</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Mark</td>
				<td>Otto</td>
				<td>@mdo</td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Jacob</td>
				<td>Thornton</td>
				<td>@fat</td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Larry</td>
				<td>the Bird</td>
				<td>@twitter</td>
			</tr>
		</tbody>
	</table>

</body>
</html>