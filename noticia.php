<?php
	require('./sources/func.php'); 
	require('./view/noticia.html');
	

	$pagina = new main();
	$pagina -> conecta();
?>

<div class="noticia">

	<?php

	$pagina -> noticia();

	$pagina -> registrarVisita();
	$pagina -> fecharConexao();
	?>
</div>