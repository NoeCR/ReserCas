<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title class="index-titulo">ReserCas</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<link rel="stylesheet" href="./css/index.css">
  	
</head>
<body>
<!-- Menu Header página principal -->
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ReserCas</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<!-- Modal para el registro de usuarios -->
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Regístrate</h4>
        </div>
        <div class="modal-body">
          <!-- ////////////////////////////////// -->
            <form action="registro.jsp" method="post">
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
			      <input id="nombre" type="text" class="form-control" name="nombre" placeholder="Nombre">
			    </div>
			    <br />
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
			      <input id="email" type="text" class="form-control" name="email" placeholder="Email">
			    </div>
			    <br />
			    <div class="input-group">
			      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
			      <input id="password" type="password" class="form-control" name="password" placeholder="Password">
			    </div>	
			    <br />
			   <button type="submit" class="btn btn-default" name="registro">Registro</button>	    
			</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

<!-- Contenido central de la página principal con el buscador de Hoteles de Castellón -->  
<%@ page import="resercas.Hotel"%>
<%@ page import="resercas.Habitacion"%>
<%@ page import="java.util.List"%>
<%
	List<Hotel> hoteles = (List<Hotel>)request.getAttribute("listadoHoteles");
	List<Habitacion> habitaciones = null;
	if(hoteles == null){
%>
	<jsp:include page="index_buscador.jsp" />  
	
<% }else{ 
		if(habitaciones == null){
			request.setAttribute("listHotel", hoteles);
			request.getRequestDispatcher("index_hoteles.jsp").forward(request, response);
	%>  		
			<jsp:include page="index_hoteles.jsp" /> 	
			 
	<% }else{ %>
			
			<jsp:include page="index_habitaciones.jsp" />  
<% } } %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </body>
</html>