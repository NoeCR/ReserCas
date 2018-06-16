<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Habitaciones</title>
</head>
<body>
<%@ page import="resercas.Habitacion"%>
<%@ page import="resercas.Imagen"%>
<%@ page import="java.util.List"%>
<%@ page import="org.hibernate.Session"%> 
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Transaction"%>
<%@ page import="org.hibernate.cfg.Configuration"%>
<%@ page import="org.hibernate.Query"%>


  					
<%
	List<Habitacion> habit = (List<Habitacion>)request.getAttribute("listadoHabitaciones");
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	Session sesion = sf.openSession();
	for(Habitacion h: habit){
		Query img = sesion.createQuery("from Imagen where h_id = ?");
		img.setInteger(0, h.getIdhab());
		List<Imagen> listaImg = img.list();
%>
	<div class="flex-container-hotel">
		<div style="flex-grow: 0"class="" >  
			<div id="<%=h.getIdhab() %>" class="carousel slide" data-ride="carousel">
  			 	<!-- Indicators -->
    			<ol class="carousel-indicators">
   				   <li data-target="#<%=h.getIdhab() %>" data-slide-to="0" class="active"></li>
   				   <li data-target="#<%=h.getIdhab() %>" data-slide-to="1"></li>
    			  <li data-target="#<%=h.getIdhab() %>" data-slide-to="2"></li>
   				</ol>
  			<div class="carousel-inner">
<%
		for(int i = 0; i < listaImg.size(); i++){
			if(i == 0){
%>
	<!-- Slide de imagenes para las habitaciones -->
			<div class="item active">
        		<img src="./img/habit/<%=listaImg.get(i).getUrl()%>.jpg" alt="Imagen habitacion">
     		</div>
<%}else{ %>	
			<div class="item">
        		<img src="./img/habit/<%=listaImg.get(i).getUrl()%>.jpg" alt="Imagen habitacion">
     		</div>
<% }} %>	
		<!-- Left and right controls -->
		    <a class="left carousel-control" href="#<%=h.getIdhab() %>" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#<%=h.getIdhab() %>" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right"></span>
		      <span class="sr-only">Next</span>
		    </a>
		</div>		
			
		</div>
	</div>  		
 		<div style="flex-grow: 10">
 			<form action="cp_cli.jsp" method="post">
 			<input name="idHab" type="hidden" value="<%=h.getIdhab()%>">
 				<h3>habitación <%=h.getHotel().getNombre() %></h3>
 				<p>Camas: <%=h.getCamas() %></p>
 				<p>Precio: <%=h.getPrecio()%> &euro;</p>			
 					<label>Reservar</label>
 					<button type="submit" class="btn btn-primary ok" name="verHab"><span class="glyphicon glyphicon-ok"></span></button>
 			</form> 			 
 		</div>
	</div>
<% } 
	sesion.close();
%>
</body>
</html>