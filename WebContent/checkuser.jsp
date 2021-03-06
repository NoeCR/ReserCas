<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compobacion de privilegios usuario</title>
</head>
<body>

<%@ page import="resercas.Empleado"%>
<%@ page import="resercas.Cliente"%>
<%@ page import="org.hibernate.Session"%> 
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	String nombre = request.getParameter("nombre");
	String pass = request.getParameter("password");
	
	Query q = (Query) sesion.createQuery("from Empleado where nombre = ? and password = ?");
	q.setString(0, nombre);
	q.setString(1, pass);
	
	Empleado e = (Empleado) q.uniqueResult();
	
	if(e != null){
		session.setAttribute("empleado", e);
		response.sendRedirect(request.getContextPath());
	}else{
		Query c = (Query) sesion.createQuery("from Cliente where nombre = ? and password = ?");
		c.setString(0, nombre);
		c.setString(1, pass);
		Cliente cli = (Cliente) c.uniqueResult();
		sesion.close();
		if(cli !=null){
			session.setAttribute("cliente", cli);	
			response.sendRedirect(request.getContextPath());
		}		
		if(e == null && cli == null){
			response.sendRedirect(request.getContextPath());
		}
	}
	
%>
</body>
</html>