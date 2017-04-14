<?php  
		
?>
<!DOCTYPE html>
<html>
<head>
	<title>Incluir Usuario</title>
	<link rel="stylesheet" type="text/css" href="../view/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../view/css/pacoteSete.css">
</head>
<body>
	<div class="topo">
		<center> 
			<a id="titleTopo">Incluir Usuario</a>
		</center>
		<a  href="index.php" id="voltar">Voltar</a>
	</div>
	<div class="formulario">
		<form action="./addUser.php" method="POST">
			<label>Nome: </label><input type="text" name="nome" id="nome" ><br>
			<label>Login: </label><input type="text" name="usuario" id="usuario"> <br>
			<label>Senha: </label><input type="password" name="pass" id="pass" > <br>
			<button>Adicionar</button>
		</form>
	</div>

</body>
</html>