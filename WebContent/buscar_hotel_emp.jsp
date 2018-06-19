<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Buscador Hoteles</title>
</head>
<body>
	<%@ page import="resercas.Hotel"%>	
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
		   
			String buscador = request.getParameter("buscador-nombre").toLowerCase();
			
			Query q = (Query) sesion.createQuery("from Hotel where nombre like :loc");
			q.setParameter("loc", "%" + buscador + "%");		
			
			List<Hotel> hoteles =  q.list();
			
			
			request.setAttribute("listadoHotelesBuscador", hoteles);			
			request.getRequestDispatcher("cp_emp.jsp").forward(request, response);
			sesion.close();
	%>
	
</body>
</html>