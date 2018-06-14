<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index Hoteles</title>	
</head>
<body>
<%@ page import="resercas.Hotel"%>
<%@ page import="java.util.List"%>
<%
	List<Hotel> hoteles = (List<Hotel>)request.getAttribute("listadoHoteles");
	for(Hotel h: hoteles){
%>
	<div class="flex-container-hotel">
  		<div style="flex-grow: 2"class="imagen-hotel" ><img src="./img/<%=h.getImgHotel()%>.jpg" alt="Imagen Hotel" /></div>  		
 		<div style="flex-grow: 8">
 			<form action="buscar_habitacion.jsp" method="post">
 			<input name="idHot" type="hidden" value="<%=h.getIdhot()%>">
 				<h3><%=h.getNombre() %></h3>
 				<p>Dirección: <%=h.getDirec() %>. Teléfono: <%=h.getTelf() %></p> 				
 					<label>Ver Habitaciones</label>
 					<button type="submit" class="btn btn-primary" name="verHab"><span class="glyphicon glyphicon-bed"></span></button>
 			</form>	 
 		</div>
	</div>
<% } %>
</body>
</html>