<?php
	require('../sources/func.php');
	include("seguranca.php");
	protegePagina(); 
	$pagina = new main();
	$pagina -> conecta();
	$id = $_POST['id'];
	$titulo = $_POST['titulo'];
	$post = $_POST['post'];	

	$sql = "UPDATE post SET post='$post' ,  titulo = '$titulo' WHERE id= '$id'";
	mysql_query($sql) or die ("Error: " . mysql_error());
	header("Location: ./editarpost.php?noticia=$id");

?>

