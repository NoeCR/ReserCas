<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registro de hoteles</title>
</head>
<body>
<%@ page import="resercas.Hotel" %>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	Transaction tx = sesion.beginTransaction();
	String nombre = request.getParameter("nombre-hotel");
	String dir = request.getParameter("direc");
	String telf = request.getParameter("telf");
	String img = request.getParameter("file");
	String loc = request.getParameter("localidad");
	Hotel hot = new Hotel(nombre,dir,telf,img,loc); 
	try{
		sesion.save(hot);
		tx.commit();
		sesion.close();
	
	
%>
	<div class="show-hotel">
		<h1>Hotel registrado</h1>	
		<p><%=nombre %></p>
		<p><%=dir %></p>
		<p><%=telf %></p>
		<p><%=loc %></p>
		<p><img src="./img/<%=hot.getImgHotel()%>" alt="Imagen Hotel" /></p>	
	</div>
	
	<form>
<%
	}catch (Exception e) {
        out.println("No se ha podido guardar el registro del hotel:  " +  e);
    }
%>		
	</form>
</body>
</html>