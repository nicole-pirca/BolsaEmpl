
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>

<%@page import="administracion.ControladorAdm"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="administracion.Adm"%>

<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="bootstrap/css/estilo.css" rel="stylesheet" type="text/css">


<meta charset="ISO-8859-1">
<title>Servicios Registrados</title>
</head>
<body>

<div class ="container">
<header class="menu">
		<a href="MostrarCatalogo.jsp"> <img src="images/logo2.png">
		</a> BOLSA DE EMPLEO PICHINCHA
	</header>
  <div class="mx-auto" style="width: 400px;">

	<%
		String codigPersona = "1";
	%>

<%

   ArrayList persona = ControladorAdm.listarPersona();
%>
	
		
	
	<p class="text-justify">REGISTRO DE:  <%=persona %></p>
	
	
	
	
	
		


	<p>Usted ha seleccionado los siguientes servicios:</p>

	<%
		String services[] = request.getParameterValues("servicio");
		if (services != null) {
	%>

	<h4>Servicios Registrados:</h4>
	<ul>
		<%
			for (int i = 0; i < services.length; i++) {
		%>
		<%
			String nombreServicio = "" + ControladorAdm.verServicio(services[i].toString().trim());
		%>

		<!-- ><li><%=services[i]%></li> -->
		<li><%=nombreServicio%></li>


		<%
			//Adm.registrarServicioArtesano(services[i].toString().trim(),codigPersona, "1");
		%>
		<%
			}
		%>

		
	</ul>
	<%
		} else {
	%>
	no has seleccionado nada
	<%
		}
	%>
	
	 <a class="btn btn-success" href="index.jsp">ACEPTAR
	
	</a>	
	
	<script>
	alert("Registro Exitoso");
	</script>
	 
	 
	 


		
		
         
	
	
</body>
</html>