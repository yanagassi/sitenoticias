<?php
	require('./sources/func.php');
	
	$pagina = new main();   // Declaração de classes....
	$pagina -> conecta();	// Abre conexão ...
	$pagina -> lista();		// Lista tabela ..
	$pagina -> fecharConexao();		//Fecha a conexão ...
?>