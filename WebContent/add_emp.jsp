<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar empleado</title>
</head>
<body>
<%@ page import="resercas.Cliente" %>
<%@ page import="resercas.Empleado" %>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%
		SessionFactory sf = new Configuration().configure().buildSessionFactory();
		Session sesion = sf.openSession();
		Transaction tx = sesion.beginTransaction();
		
		java.util.Date ahora = new java.util.Date();
		java.util.Date fecha = new java.util.Date(ahora.getTime());
		
		
		Cliente c = (Cliente)sesion.load(Cliente.class, Integer.parseInt(request.getParameter("optradio")));
		
		Empleado e = new Empleado(c.getNombre(),fecha,c.getPassword());
		
		sesion.delete(c);
		sesion.save(e);
		tx.commit();
		sesion.close();
		response.sendRedirect("cp_emp.jsp");
%>
</body>
</html>