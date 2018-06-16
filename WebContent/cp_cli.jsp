<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Perfil Empleado</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<link rel="stylesheet" href="./css/usuario.css">
</head>
<body>
<%@ page import="resercas.Cliente"%>
<%@ page import="resercas.Habitacion"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%   
			SessionFactory sf = new Configuration().configure().buildSessionFactory();
			Session sesion = sf.openSession();
			
			Cliente c = (Cliente) session.getAttribute("cliente");	
			
			String uri = request.getParameter("panelCentral");	
			if(request.getParameter("idHab")!=null){
				Habitacion hab = (Habitacion) sesion.load(Habitacion.class,Integer.parseInt(request.getParameter("idHab")));
				session.setAttribute("habitacion", hab);
				hab.getPrecio(); //daba error al hacer una carga Lazy de la Habitacion, he usado un metodo para forzar que tenga que cargar el objeto en memoria
				hab.getHotel().getNombre();
				uri = "reservar";
				sesion.close();
			}
%>

<!--  Menu Página de gestión de empleados -->
<% if(c != null){ %>
	<header>
		<jsp:include page="header_cliente.jsp" />
	</header>
<%}else{ %>
	<header>
		<jsp:include page="header.jsp" />
	</header>
<% } %>
<!--  Contenido para la gestion de la web-->	
	<div class="flex-container-empleado">  		
  		<div style="flex-grow: 2" class="contenido-izq-emp">  			
  			<jsp:include page="showuser.jsp" />
  		</div>  		
  		<div style="flex-grow: 8" class="contenido-cent-emp">
	  		<% if(uri !=null){ uri +=".jsp";%>
	  			<jsp:include page="<%=uri%>" />  
	  		<%}else{ %>
	  			<jsp:include page="panelcliente.jsp" /> 
	  		<%} %>			
  		</div>
	</div>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>