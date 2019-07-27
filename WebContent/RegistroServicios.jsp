<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.util.*"%>
<!DOCTYPE html>

<%
	String servicios[] = { "Pintor", "Albañil", "Mecanico", "Artesano", "Carpintero" };
%>

<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Registrar Servicios</title>
</head>

<body>

	<header class="menu">
		 <img src="images/logo2.png">
		 <a href="index.jsp">Regresar</a>
		
	</header>

	<form name="AgregarServicios" onsubmit="checkBoxValidation()"
		action="PersonaServicio.jsp" method="post">

		<label for="servicio"> Escoja los Servicios</label>

		<%
			for (int i = 0; i < servicios.length; i++) {
		%>

		<p>
			<input type="checkbox" id="cbox1" name="servicio"
				value="<%=servicios[i]%>"><%=servicios[i]%></p>

		<%
			}
		%>

		<div>
			<input class="btn btn-primary" type="submit" value="Enviar">
		</div>

	</form>
	<%
		String services[] = request.getParameterValues("servicio");
		if (services != null) {
	%>
	<h4>Servicios seleccionados:</h4>
	<ul>
		<%
			for (int i = 0; i < services.length; i++) {
		%>
		<li><%=services[i]%></li>
		<%
			}
		%>
	</ul>
	<%
		}
	%>

</body>
</html>