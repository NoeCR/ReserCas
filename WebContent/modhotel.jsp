<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="modhot_buscador">
		<form action="buscar_hotel_emp.jsp" method="post">
			<table class="table table-striped">
			    <thead>
			      <tr>
			        <th class="th_busc_text">Buscar</th>
			        <th class="buscar_hotel_in"><input class="form-control input_hotel_sc" type="text" name="buscador-nombre" autocomplete="on" placeholder="Inserte Nombre Hotel" /></th>
			        <th><button type="submit" class="btn btn-primary index-lupa" name="buscador-hotel"><span class="glyphicon glyphicon-search"></span></button></th>
			      </tr>
			    </thead>
			</table>
		</form>
	</div>
	<div class="hoteles_list">
<%@ page import="resercas.Hotel"%>
<%@ page import="java.util.List"%>
<%
	List<Hotel> hoteles = (List<Hotel>)request.getAttribute("listadoHotelesBuscador");
	if(hoteles != null){
		for(Hotel h: hoteles){
%>
		<div class="flex-container-hotel">
	  		<div style="flex-grow: 2"class="imagen-hotel" ><img src="./img/<%=h.getImgHotel()%>" alt="Imagen Hotel" /></div>  		
	 		<div style="flex-grow: 8">
	 			<form action="buscar_habitacion.jsp" method="post">
	 			<input name="idHot" type="hidden" value="<%=h.getIdhot()%>">
	 				<h3><%=h.getNombre() %></h3>
	 				<p>Dirección: <%=h.getDirec() %>. Teléfono: <%=h.getTelf() %></p> 				
	 					<label>Modificar</label>
	 					<button type="submit" class="btn btn-primary" name="verHab"><span class="glyphicon glyphicon-bed"></span></button>
	 			</form>	 
	 		</div>
		</div>
<% }}else{ %>
		<h1>No se han cargado los Hoteles</h1>
<%} %>
	</div>
</div>
</body>	
</html>