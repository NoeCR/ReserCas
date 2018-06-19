<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="resercas.Cliente"%>
<%@ page import="resercas.Empleado"%>
<%@ page import="resercas.Reserva"%>
<%@ page import="resercas.Calculos"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Date" %>	
	<p>Listado de reservas</p>
	<form action ="cp_cli.jsp" method="post" name="formulario-reservas">       
	<table class="table">
<%
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	Cliente c = (Cliente) session.getAttribute("cliente");
	java.util.Date ahora = new java.util.Date();
	java.util.Date fecha = new java.util.Date(ahora.getTime());
	//Bloque para recibir el id de usuario del panel de administrados para filtrar las reservas de este usuario
	if(c == null){
		try{
			int id = Integer.parseInt(request.getParameter("optradio"));
			if(id != 0){
				try{
					Query cliente = (Query)sesion.createQuery("from Cliente where idcli = ?");
					cliente.setInteger(0, id);
					if(cliente != null){
						c = (Cliente)cliente.uniqueResult();
					}
				}catch(Exception e){
					out.println("No se puede cargar el registro " + e);
				}
			}
		}catch(NumberFormatException nfe){
			out.println("De todos los clientes ");
		}
	}
	if(c != null){
		Query reservas_cli = sesion.createQuery("from Reserva where cliente = ?");
		reservas_cli.setInteger(0, c.getIdcli());
		List<Reserva> reservas = reservas_cli.list();
		for(Reserva r: reservas){
			if(Calculos.checkFechas(fecha, r.getFechaFin())){
%>			
		<tr class="success">		
			<td><label><input name="cancel" type="checkbox" value="<%=r.getIdreserva()%>"></label></td>
        	<td><%=r.getCliente().getNombre()%></td>
        	<td><%=r.getHabitacion().getHotel().getNombre()%></td>
        	<td><%=r.getHabitacion().getNumero()%></td>
        	<td><%=r.getFechaIni()%></td>
        	<td><%=r.getFechaFin()%></td>
        	<td><%=r.getTotal()%></td>
        </tr>
<%			
			}else{
%>
			<tr class="info">		
			<td><label><input name="print" type="checkbox" value="<%=r.getIdreserva()%>"></label></td>
        	<td><%=r.getCliente().getNombre()%></td>
        	<td><%=r.getHabitacion().getHotel().getNombre()%></td>
        	<td><%=r.getHabitacion().getNumero()%></td>
        	<td><%=r.getFechaIni()%></td>
        	<td><%=r.getFechaFin()%></td>
        	<td><%=r.getTotal()%></td>
        </tr>
<% 
			}			
		}
	}else{
		Query todas = sesion.createQuery("from Reserva");
		List<Reserva> reservas = todas.list();
		for(Reserva r: reservas){
			if(Calculos.checkFechas(fecha, r.getFechaFin())){
%>			
		<tr class="success">		
			<td><label><input name="cancel" type="checkbox" value="<%=r.getIdreserva()%>"></label></td>
        	<td><%=r.getCliente().getNombre()%></td>
        	<td><%=r.getHabitacion().getHotel().getNombre()%></td>
        	<td><%=r.getHabitacion().getNumero()%></td>
        	<td><%=r.getFechaIni()%></td>
        	<td><%=r.getFechaFin()%></td>
        	<td><%=r.getTotal()%></td>
        </tr>
<%			
			}else{
%>
			<tr class="info">		
			<td><label><input name="print" type="checkbox" value="<%=r.getIdreserva()%>"></label></td>
        	<td><%=r.getCliente().getNombre()%></td>
        	<td><%=r.getHabitacion().getHotel().getNombre()%></td>
        	<td><%=r.getHabitacion().getNumero()%></td>
        	<td><%=r.getFechaIni()%></td>
        	<td><%=r.getFechaFin()%></td>
        	<td><%=r.getTotal()%></td>
        </tr>
<%}
	}
		} %>		
	 </table>
	 <button type="submit" name="panelCentral" value="imprimir" class="btn btn-default btn-md input-reserva cp_list" >Imprimir</button>
	 <button type="submit" onclick="return confirm('¿Esta seguro de querer cancelar la reserva?')" name="panelCentral" value="cancelar" class="btn btn-default btn-md input-reserva cp_list" >Cancelar</button>
 </form>
</body>
</html>