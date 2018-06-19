<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ReserCas Clientes</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<link rel="stylesheet" href="./css/usuario.css">
</head>
<body>
<%@ page import="resercas.Empleado"%>	
<%@ page import="resercas.Hotel"%>
<%@ page import="java.util.List"%>	
<%	   
			Empleado e = (Empleado) session.getAttribute("empleado");	
			List<Hotel> hoteles = (List<Hotel>)request.getAttribute("listadoHotelesBuscador");
			String uri = request.getParameter("panelCentral");
			if(hoteles!=null){
				uri ="modhotel";
			}
			if(e != null){
%>
<!--  Menu P�gina de gesti�n de empleados -->
	<header>
		<jsp:include page="header_empleado.jsp" />
	</header>
<!--  Contenido para la gestion de la web-->	
	<div class="flex-container-empleado">  		
  		<div style="flex-grow: 2" class="contenido-izq-emp">
  			<jsp:include page="showuser.jsp" />
  		</div>  		
  		<div style="flex-grow: 8" class="contenido-cent-emp">
	  		<% if(uri !=null){ uri +=".jsp";%>
	  			<jsp:include page="<%=uri%>" />  
	  		<%}else{ %>
	  			<jsp:include page="panelusuario.jsp" /> 
	  		<%} %>			
  		</div>
	</div>
<%}else { %>
	<span>Empleado no encontrado</span>
<% } %>	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>