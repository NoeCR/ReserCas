<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agregar hoteles</title>
<link rel="stylesheet" href="./css/usuario.css">
</head>
<body>
	<form action="cp_emp.jsp" method="post">
		<div class="input-group">
		   <span class="input-group-addon"><i class="glyphicon glyphicon-header"></i></span>
		   <input id="nombre-hotel" type="text" class="form-control" name="nombre-hotel" placeholder="Nombre Hotel" required>
		</div>
		    <br />
		<div class="input-group">
		  <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
		  <input id="direc" type="text" class="form-control" name="direc" placeholder="Dirección">
		</div>
		   <br />
		<div class="input-group">
		  <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
		  <input id="telf" type="tel" class="form-control" name="telf" placeholder="Teléfono">
		</div>	
		<div class="input-group">
		  <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
		  <select class="form-control" name="localidad">
		  	<option value="" selected disabled hidden>Seleccióne Localidad</option>
		  	<option value="albocacer">Albocácer</option>
		  	<option value="almazora‎">Almazora‎</option>
		  	<option value="benicarló‎">Benicarló‎</option>
		  	<option value="benicasim‎">Benicasim‎</option>
		  	<option value="burriana">Burriana</option>
		  	<option value="cabanes">Cabanes</option>
		  	<option value="castellon de la Plana‎">Castellón de la Plana‎</option>
		  	<option value="chodos‎ ">Chodos</option>
		  	<option value="fanzara">Fanzara</option>
		  	<option value="jerica‎">Jérica‎</option>
		  	<option value="lucena del Cid‎">Lucena del Cid‎</option>		  
		  	<option value="moncofar‎">Moncófar‎</option>
		  	<option value="morella‎ ">Morella‎ </option>
		  	<option value="nules">Nules</option>
		  	<option value="onda‎ ">Onda‎ </option>
		  	<option value="oropesa del Mar‎">Oropesa del Mar‎</option>
		  	<option value="peñíscola‎">Peñíscola‎</option>
		  	<option value="puebla de Benifasar‎">Puebla de Benifasar‎</option>
		  	<option value="ribesalbes‎">Ribesalbes‎ </option>
		  	<option value="san Juan de Moro">San Juan de Moró</option>
		  	<option value="segorbe‎">Segorbe‎ </option>
		  	<option value="todolella‎">Todolella‎</option>
		  	<option value="vall d'Alba‎">Vall d'Alba‎</option>
		  	<option value="vall de Uxó‎ ">Vall de Uxó‎ </option>
		  	<option value="villarreal‎">Villarreal‎</option>
		  	<option value="vinaroz‎">Vinaroz‎</option>
		  	<option value="viver">Viver</option>
		  	<option value="zucaina">Zucaina</option>		  	
		  </select>
		</div>	
		<div class="input-group img-load">
		  <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>		 
   		  <input type="file" id="file" class="form-control img-input" name="file"  accept=".jpg, .jpeg, .png">
		</div>	
		   <br />
		<button type="submit" class="btn btn-default" name="panelCentral" value="registro_hotel">Registro</button>	    
	</form>
</body>
</html>