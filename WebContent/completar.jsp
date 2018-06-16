<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina para mostrar la Reserva</title>
</head>
<body>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.ParseException" %>
<%@ page import="resercas.Calculos" %>
<%@ page import="resercas.Cliente" %>
<%@ page import="resercas.Habitacion" %>
<%@ page import="resercas.Reserva" %>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
	<h3>Pagina donde mostrar los detalles de la reserva y dar la opcion a descargar pdf </h3>
	<%
		Cliente c = (Cliente) session.getAttribute("cliente");		
		Habitacion h = (Habitacion) session.getAttribute("habitacion");
		//Bloque para comproabr las fechas
		String fecha = request.getParameter("fecha_ini");
		int dias = Integer.parseInt(request.getParameter("dias")); 
		SimpleDateFormat fecha_format = new SimpleDateFormat("yyyy-MM-dd");
		Date nuevafecha = null;
		try{
			nuevafecha = fecha_format.parse(fecha);
		}catch(ParseException ex){
			ex.printStackTrace();	
		}
		Date fecha_out = Calculos.sumarDias(nuevafecha, dias);
		
		boolean ok = Calculos.checkFechas(nuevafecha, fecha_out);
		double total = Calculos.obtenerTotal(h.getPrecio(), dias);
		if(ok){
			try{
				SessionFactory sf = new Configuration().configure().buildSessionFactory();
				Session sesion = sf.openSession();
			    Transaction tx = sesion.beginTransaction();
			    Query q = (Query) sesion.createQuery("from Reserva where habitacion = ? and ? between fecha_ini and fecha_fin");
			    q.setInteger(0, h.getIdhab());
			    q.setDate(1, nuevafecha);
			    Reserva res = (Reserva) q.uniqueResult();
			    if(res == null){
			    	Reserva resok = new Reserva(c,h,nuevafecha,fecha_out,"Disponible");
			    	sesion.save(resok);
			    	tx.commit();
			    	out.println("Reserva efectuada!");
			    }
			}catch(Exception e){
				e.getMessage();
			}
		}
		
		out.println(nuevafecha);
		out.println(fecha_out);
		out.println(ok);
		out.println(total);
	%>
	<p><%=fecha %></p>
</body>
</html>