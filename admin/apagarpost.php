<?php

	require_once('../sources/func.php');
	include("./seguranca.php");
	protegePagina(); 
	$pagina = new main();
	$pagina -> conecta();
	$id = $_GET['noticia'];
	$deletar = ("DELETE FROM post where id = '$id'");
	mysql_query($deletar) or die (mysql_error());
	header("Location:  ./post.php");
?>