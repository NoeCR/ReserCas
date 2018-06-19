<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Página para listar los usuarios</title>
</head>
<body>
<%@ page import="resercas.Cliente"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="java.util.List"%>
<form action ="cp_cli.jsp" method="post" name="formulario">       
	<table class="table">
<%
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	
	Query clientes = sesion.createQuery("from Cliente");
	List<Cliente> clins = clientes.list();
	for(Cliente c: clins){
%>
	<tr class="active">			
			<td><input type="radio" name="optradio" value="<%=c.getIdcli()%>" onclick="document.getElementById('<%=c.getIdcli()%>').disabled = ! document.getElementById('<%=c.getIdcli()%>').disabled;"></td>
        	<td><%=c.getNombre()%></td>
        	<td><%=c.getMail()%></td>
        	<td><button type="submit" name="panelCentral" value="reservas" id="<%=c.getIdcli()%>" class="btn btn-default btn-md input-reserva cp_list" disabled>Reservas</button></td>
        </tr>

<%} %>
	</table>
	 <button type="submit" name="panelCentral" value="add_emp" class="btn btn-default btn-md input-reserva cp_list" >Emplear</button>
	 <button type="submit" name="panelCentral" value="elim_cli" class="btn btn-default btn-md input-reserva cp_list" onclick="return confirm('¿Esta seguro de querer eliminar este cliente?')">Eliminar</button>
	 <button type="submit" name="panelCentral" value="add_user" class="btn btn-default btn-md input-reserva cp_list" >Nuevo</button>
 </form>
</body>
</html>