<?php

	include("seguranca.php"); 
	require("../sources/func.php");

	protegePagina(); 
?>

<!DOCTYPE html>
<html>
<head>
	<title>Lista de Postagens</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../view/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../view/css/pacoteQuatro.css">
</head>
<body>
<div class="topo"> <center> <a id="topoTitle">Editar Postagens</a></center> <a id="sair" href="../admin/index.php">Voltar</a></div>
<a href="./index.php">Voltar</a>
	<div class="listNotice">
		<?php
		
		$pagina = new admin();
		$pagina -> postList();

		?>
	</div>
</body>
</html>