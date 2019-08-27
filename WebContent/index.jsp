<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<style type="text/css">
			.welcome
			{
				text-align:center;
				font-size:25px;
				margin-top:10px;
				font-family:Impact;	
		    }
			
	</style>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
		<div class="welcome">
						<u>Welcome to Player Page</u>
		</div>
		<br/>
		<pre>
			<form action="CurdJsp.jsp" method="post">
			Command : <input type="text" name="query"/><br/>				  			
			 		<input type="submit" value="Execute"/><br/>
			</form>
				  				<br/><br/>
			Write Commands for :<br/>
			1. select * from player
			2. insert into player values(playerId,'Player Name','Player City')
			3. update player set playerDetails=value where playerId 
			4. create table tableName(id number(size),name varchar2(size),city varchar2(size)) 			
		</pre>	
				 
				  	
				 
</body>
</html>