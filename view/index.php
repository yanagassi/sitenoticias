	<?php 	$pagina = new main();  $pagina -> regIndex();?>	

<!DOCTYPE html>
<html>
<head>
	<title>NOME</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../view/css/pacoteUm.css">
	<link rel="stylesheet" type="text/css" href="../view/css/bootstrap.css">
</head>
<body>
	<div class="topo">
		<center>
			<a id="logo" href="../index.php">NOME</a>
		</center>
	</div>
	<div class="barraLateral">
	<?php $pagina ->temperatura(); ?>
	</div>
	
</body>
</html>