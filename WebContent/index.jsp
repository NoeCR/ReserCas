<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ReserCas</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<link rel="stylesheet" href="./css/index.css">  	
</head>
<body>
<!-- Importaciones de paquetes JAVA -->
<%@ page import="resercas.Hotel"%>
<%@ page import="resercas.Habitacion"%>
<%@ page import="resercas.Empleado"%>
<%@ page import="resercas.Cliente"%>
<%@ page import="java.util.List"%>
<%@ page import="org.hibernate.Session"%> 
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<!-- Instancia de session para la página -->
<%
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	Empleado e = (Empleado) session.getAttribute("empleado");
	Cliente c = (Cliente) session.getAttribute("cliente");
	if(e == null){
		if(c == null){
%>
<!-- Menu Header página principal -->
		<jsp:include page="header.jsp" />
		<% }else{ %>
					<jsp:include page="header_cliente.jsp" />
				<% } }else{ %>
						<jsp:include page="header_empleado.jsp" />
				<% } %>

<!-- Contenido central de la página principal con el buscador de Hoteles de Castellón -->  
<%
	List<Hotel> hoteles = (List<Hotel>)request.getAttribute("listadoHoteles");
	List<Habitacion> habitaciones = (List<Habitacion>)request.getAttribute("listadoHabitaciones");	
	
	if(hoteles == null){
		if(habitaciones == null){	
%>
	<jsp:include page="index_buscador.jsp" />  
	
	<% }else{ %>  	
			<jsp:include page="index_habitaciones.jsp" /> 		 
		<% }}else{ %>
					<jsp:include page="index_hoteles.jsp" /> 
			
<% } %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </body>
</html>