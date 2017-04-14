<?php
	require('../sources/func.php');
	include("seguranca.php");
	protegePagina(); 
	$pagina = new main();
	$pagina -> conecta();
	$pagina = new admin();
	$pagina -> sairSessao();
?>