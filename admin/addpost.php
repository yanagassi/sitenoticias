<?php 
	require_once('../sources/func.php');
	require_once('./seguranca.php');
	protegePagina();
 ?>
 <!DOCTYPE html>
 <html>
 <head>
 	<title>Adicionar Postagem</title>
 	<meta charset="utf-8">
 	<link rel="stylesheet" type="text/css" href="../view/css/bootstrap.css">
 	<link rel="stylesheet" type="text/css" href="../view/css/pacoteCinco.css">
 </head>
 <body>
	 <div  class="topo">
		 <center>
			<a id="TitleNP">Nova Postagem</a>
		</center>
		 <a id="voltar" href="./index.php">Voltar</a>
	</div>
	<div class="areaPost">
		<form action="./add.php" method="post" enctype="multipart/form-data" name="cadastro" >

	 		<label id="labelTit">Titulo: </label><input type="text" name="titulo" id="titulo"><br>
	 		<label id="labelPost">Postagem:</label> <textarea name="post" id="post"></textarea><br>
	 		<input type="file" id="foto" name="foto"/>

 	 		<input type="submit" id="cadastrar" name="cadastrar" value="Cadastrar" />

		</form>
	</div>

 </body>
 </html>