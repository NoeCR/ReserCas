<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buscador página principal</title>
</head>
<body>
<div class="container-fluid text-center">    
  <div class="flex-container">
    <div class="">      
      	<h1 class="index-logo"></h1>
      	<form method="post" action="buscar_hotel.jsp">      	
			<input class="form-control input-buscar" type="text" name="buscador" autocomplete="on" placeholder="Inserte Localidad" />						    
    		<button type="submit" class="btn btn-primary index-lupa" name="buscar"><span class="glyphicon glyphicon-search"></span></button>  
    		<p>Selecciona tu Hotel!</p>
		</form>
    </div>
  </div>
</div>
</body>
</html>