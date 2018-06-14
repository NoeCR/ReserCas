<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buscar habitaciones</title>
</head>
<body>
	<%@ page import="resercas.Hotel"%>
	<%@ page import="resercas.Habitacion"%>
	<%@ page import="org.hibernate.Session"%>
	<%@ page import="org.hibernate.SessionFactory"%>
	<%@ page import="org.hibernate.Transaction"%>
	<%@ page import="org.hibernate.cfg.Configuration"%>
	<%@ page import="org.hibernate.Query"%>
	<%@ page import="java.util.Date" %>
	<%@ page import="java.util.List"%>
	<%
		    SessionFactory sf = new Configuration().configure().buildSessionFactory();
			Session sesion = sf.openSession();
		   
			String hotel = request.getParameter("idHot");
			
			Query hab = (Query) sesion.createQuery("from Habitacion where hotel =?");
			hab.setInteger(0, Integer.parseInt(hotel));		
			
			List<Habitacion> habitaciones =  hab.list();
			
			request.setAttribute("listadoHabitaciones", habitaciones);			
			request.getRequestDispatcher("index.jsp").forward(request, response);
	%>
	
</body>
</html>