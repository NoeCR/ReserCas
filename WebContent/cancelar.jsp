<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina para cancelar las reservas seleccionadas</title>
</head>
<body>
<%@ page import="org.hibernate.Session"%> 
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="resercas.Reserva"%>
<%
	String[] id_reserva = request.getParameterValues("cancel");
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	Transaction tx = sesion.beginTransaction();
	if(id_reserva !=null){
		for(String st: id_reserva){
			Reserva r = (Reserva) sesion.load(Reserva.class, Integer.parseInt(st));
			out.println("Reserva cancelada, con Id: " + r.getIdreserva());			
			sesion.delete(r);
		}
	}else{
		out.print("No hay ninguna reserva que se pueda cancelar.");
	}
	tx.commit();
	sesion.close();
%>
	<form action="cp_cli.jsp" method="post">
		<button type="submit" name="" value="" class="btn btn-default btn-md input-reserva cp_list" >Ok</button>
	</form>
</body>
</html>