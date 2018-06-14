<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Habitaciones</title>
</head>
<body>
<%@ page import="resercas.Habitacion"%>
<%@ page import="resercas.Imagen"%>
<%@ page import="java.util.List"%>
<%
	List<Habitacion> habit = (List<Habitacion>)request.getAttribute("listadoHabitaciones");
	for(Habitacion h: habit){
%>
	<div class="flex-container-hotel">
  		<div style="flex-grow: 2"class="" ></div>  		
 		<div style="flex-grow: 8">Hola
 			 
 		</div>
	</div>
<% } %>
</body>
</html>