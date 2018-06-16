<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Beinvenido al panel de usuario</h1>
	<form action="cp_emp.jsp" method="post">
		<div id="admin-panel">		
			<div class="item-panel">
				<button type="submit" value="reservas" name="panelCentral" class="item-panel-content">									
						<h3>Reservas</h3>
						<span class="glyphicon glyphicon-list"></span>						
				</button>
			</div>
			<div class="item-panel">
				<button type="submit" value="addhotel" name="panelCentral" class="item-panel-content">				
						<h3>añadir hoteles</h3>
						<span class="glyphicon glyphicon-plus"></span>
						<span class="glyphicon glyphicon-home"></span>
				</button>			
			</div>
			<div class="item-panel">
				<button type="submit" value="modhotel" name="panelCentral" class="item-panel-content">						
							<h3>modificar datos hotel</h3>
							<span class="glyphicon glyphicon-refresh"></span>
							<span class="glyphicon glyphicon-home"></span>						
				</button>
			</div>
			<div class="item-panel">
				<button type="submit" value="verusuarios" name="panelCentral" class="item-panel-content">						
							<h3>gestion de usuarios</h3>
							<span class="glyphicon glyphicon-user"></span>						
				</button>
			</div>
			<div class="item-panel">
				<button type="submit" value="addhabitacion" name="panelCentral" class="item-panel-content">				
							<h3>añadir habitaciones</h3>
							<span class="glyphicon glyphicon-plus"></span>
							<span class="glyphicon glyphicon-bed"></span>					
				</button>
			</div>
			<div class="item-panel">
				<button type="submit" value="modhab" name="panelCentral" class="item-panel-content">					
							<h3>modificar datos habitacion</h3>
							<span class="glyphicon glyphicon-refresh"></span>
							<span class="glyphicon glyphicon-bed"></span>					
				</button>
			</div>		
		</div>	
	</form>	
</body>
</html>