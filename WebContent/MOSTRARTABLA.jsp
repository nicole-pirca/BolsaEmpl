<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="administracion.ControladorAdm"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%ArrayList servicios = ControladorAdm.listarServicios("4");%>

<table style="width:100%">
			
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