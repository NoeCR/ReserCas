<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Eliminar clientes</title>
</head>
<body>
<%@ page import="resercas.Cliente"%>
<%@ page import="org.hibernate.Session"%> 
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="org.hibernate.Transaction"%>
<%
	String id_cli = request.getParameter("optradio");
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	Transaction tx = sesion.beginTransaction();
	
	if(id_cli != null){
		Cliente cli = (Cliente)sesion.load(Cliente.class,Integer.parseInt(id_cli));
		sesion.delete(cli);		
	}
	tx.commit();
	sesion.close();
	response.sendRedirect("cp_emp.jsp");
%>
	
</body>
</html>