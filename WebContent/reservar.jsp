<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina de Reservas</title>
</head>
<body>
<%@ page import="resercas.Cliente"%>
<%@ page import="resercas.Hotel"%>
<%@ page import="resercas.Habitacion"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="java.util.Date" %>
<%	   
try{
			Cliente c = (Cliente) session.getAttribute("cliente");		
			Habitacion h = (Habitacion) session.getAttribute("habitacion");
			if(c == null){
%>
	<div class="error-login">
		<h3>Debe estar registrado para poder reservar</h3>
	</div>
<% }else{ %>
	<p>Aqui va el formulario de reservas</p>
	<p>Se ha de hacer la comprobacion de que un usuario este Logeado, si no lo reconoce debera registrarse</p>
	<p>Antes de hacer la inserccion en la tabla reserva se ha de comprobar que la habitacion este disponible</p>	
	<p>Se debe hacer el calculo del total de la reserva que sera el precio * las noches</p>
	<form action="reservado.jsp" method="post" class="flex-container-reserva">
		<div class="reserva-usuario">
			<input type="hidden" name="iduser" value="<%=c.getIdcli() %>">
			<label><%=c.getNombre() %></label>
			<label><%=c.getMail()%></label>
		</div>
		<div class="reserva-habitacion">
			<input type="hidden" name ="idhab" value="<%=h.getIdhab() %>" />
			<label><%=h.getHotel().getNombre() %></label>
			<label><%=h.getCamas() %></label>
			<label><%=h.getPrecio() %></label>
		</div>
	</form>
<% }}catch(Exception e){ %>
	<h1>No se cargan los datos <%=e %></h1>
<%} %>
</body>
</html>