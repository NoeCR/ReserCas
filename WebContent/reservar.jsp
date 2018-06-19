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
<%@ page import="resercas.Imagen"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.List"%>
<%	   
		Date ahora = new java.util.Date();
		Date fecha = new java.util.Date(ahora.getTime());
		try{
			SessionFactory sf = new Configuration().configure().buildSessionFactory();
			Session sesion = sf.openSession();
			
			Cliente c = (Cliente) session.getAttribute("cliente");		
			Habitacion h = (Habitacion) session.getAttribute("habitacion");
			
			Query img = sesion.createQuery("from Imagen where h_id = ?");
			img.setInteger(0, h.getIdhab());
			List<Imagen> listaImg = img.list();
			if(c == null){
%>
				<div class="error-login">
					<h3>Debe estar registrado para poder reservar</h3>
				</div>
			<% }else if(h == null){ 					
					%>
						<div class="error-login">
							<h3>Selecciona una habitación</h3>
						</div>
						<jsp:include page="index_buscador.jsp" />  	
					<%
				}else{			
			%>
			<form action="cp_cli.jsp" method="post" class="flex-container-reserva">
				<div class="reserva-usuario">
					<input type="hidden" name="iduser" value="<%=c.getIdcli() %>">
					<label><%=c.getNombre() %></label><br />
					<label><%=c.getMail()%></label>
				</div>
				<div class="reserva-habitacion">
					<input type="hidden" name ="idhab" value="<%=h.getIdhab() %>" />
					<div class="reserva-img">
						<label><%=h.getHotel().getNombre() %></label><br />
						<img src="./img/habit/<%=listaImg.get(0).getUrl()%>.jpg" alt="Imagen habitacion">
					</div>
					<div class="reserva-datos">
						<label><%=h.getCamas() %></label><br />
						<label><%=h.getPrecio() %>&euro;</label><br />
						<label>Noches:</label>					
									<select class="form-control reser-dias" id="sel1" name="dias">
										<%
											for (int i = 1; i < 31; i++) {
										%>
										<option value="<%=i%>"><%=i%></option>
										<%
											}
										%>
									</select><br />
						<label>Fecha de entrada:</label>	<br />			
						<input type="date"	name="fecha_ini" value="<%=new SimpleDateFormat("dd/MM/yyyy").format(fecha)%>" min="<%=new SimpleDateFormat("dd/MM/yyyy").format(fecha)%>" max="hoy+30dias" step="1"/><br />	
						<label>Fecha de salida:</label><br />
						<input type="date"	name="fecha_out" /><br />	
						<button type="submit" name="panelCentral" value="completar" class="btn btn-default btn-md input-reserva" >Completar</button>
					</div>
					
				</div>
			</form>
<% }}catch(Exception e){ %>
	<h1>No se cargan los datos <%=e %></h1>
<%} %>
</body>
</html>