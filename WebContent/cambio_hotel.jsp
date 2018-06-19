<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="resercas.Hotel"%>
<%@ page import="org.hibernate.Session"%> 
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="org.hibernate.Transaction"%>
<%
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	Transaction tx = sesion.beginTransaction();
	Hotel h = (Hotel) session.getAttribute("hotel");
	
	String nuevonombre = request.getParameter("nombre-hotel");
	String nuevadir = request.getParameter("direc");
	String nuevotelf = request.getParameter("telf");
	String nuevaloc = request.getParameter("localidad");
	String nuevaimg = request.getParameter("file");
	
	if(nuevonombre != "" && !nuevonombre.equals(h.getNombre())){
		h.setNombre(nuevonombre);
	}else{
		h.setNombre(h.getNombre());
	}
	if(nuevonombre != "" && nuevonombre.equals(h.getDirec())){
		h.setDirec(nuevadir);
	}else{
		h.setDirec(h.getDirec());	
	}
	if(nuevonombre != "" && nuevonombre.equals(h.getTelf())){
		h.setTelf(nuevotelf);
	}else{
		h.setTelf(h.getTelf());
		}
	if(nuevonombre != "" && nuevonombre.equals(h.getLocalidad())){
		h.setLocalidad(nuevaloc);
	}else{
		h.setLocalidad(h.getLocalidad());
		}
	if(nuevonombre != "" && nuevonombre.equals(h.getImgHotel())){
		h.setImgHotel(nuevaimg);
	}else{
		h.setImgHotel(h.getImgHotel());
		}
	
	sesion.update(h);
	tx.commit();
	sesion.close();
	response.sendRedirect("cp_emp.jsp");
%>
<h4><%= h.getNombre()%></h4>
<h4><%= h.getDirec()%></h4>
<h4><%= h.getTelf()%></h4>
<h4><%= h.getLocalidad()%></h4>
<h4><%= h.getImgHotel()%></h4>
<h4>Actualizacion realizada!</h4>
<form action="cp_emp.jsp" method="post">
	<button type="submit" class="btn btn-default" name="panelCentral" value="panelusuario">Ok</button>	
</form>
</body>
</html>