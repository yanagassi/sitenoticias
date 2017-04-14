<?php
	require_once('../sources/func.php');
		
	$pagina = new main();
	$pagina -> conecta();

	$graus = $_POST['graus'];
	$foto = $_POST['foto'];

	$query = "UPDATE temperatura SET graus='$graus' 'º', foto='$foto'";
	mysql_query($query) or die(mysql_error());

	header("Location: ../admin/index.php");
?>