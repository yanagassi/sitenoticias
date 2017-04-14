<?php
	include("../view/admin.php");
	include("seguranca.php"); 
	require_once("../sources/func.php");

	protegePagina(); 
	$pagina = new main();
	$pagina -> conecta();
?>

