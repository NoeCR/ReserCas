<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro Usuario</title>
</head>
<body>
<%@ page import="resercas.Cliente"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	Transaction tx = sesion.beginTransaction();
	
	
	
	String nombre = request.getParameter("nombre");
	String mail = request.getParameter("email");
	String pass = request.getParameter("password");
	
	Cliente c = new Cliente(nombre,mail,pass);
	sesion.save(c);
	tx.commit();	
	session.setAttribute("cliente", c);
	sesion.close();
%>
</body>
</html>