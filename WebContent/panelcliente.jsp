<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Panel de control del cliente</title>
</head>
<body>
	<h1>Beinvenido al panel del cliente</h1>
	<form action="cp_cli.jsp" method="post">
		<div id="admin-panel">		
			<div class="item-panel">
				<button type="submit" value="reservas" name="panelCentral" class="item-panel-content">									
						<h3>Mis Reservas</h3>
						<span class="glyphicon glyphicon-list"></span>						
				</button>
			</div>
			<div class="item-panel">
				<button type="submit" value="reservar" name="panelCentral" class="item-panel-content">				
						<h3>Reservar</h3>						
						<span class="glyphicon glyphicon-home"></span>
				</button>			
			</div>
			<div class="item-panel">
				<button type="submit" value="pago" name="panelCentral" class="item-panel-content">						
						<h3>Preferencias de pago</h3>							
						<span class="glyphicon glyphicon-cog"></span>						
				</button>
			</div>			
		</div>		
	</form>	
</body>
</html>