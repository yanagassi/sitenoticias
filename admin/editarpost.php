<?php
	require_once('../sources/func.php');
	include("seguranca.php");
	protegePagina(); 
	$pagina = new admin();	
	$pagina -> postRecebe();  
	$pagina = new main();
	$pagina -> conecta();
	$idnoticia = $_GET["noticia"];
	$query = mysql_query("SELECT * FROM post WHERE id=$idnoticia") or die ("Erro na consulta da noticia....");	
	$dados = mysql_fetch_array($query);
	$id = $dados["id"];
	$titulo = $dados["titulo"];
	$post = $dados["post"];
	$data = $dados["data"];
	
?>
<!DOCTYPE html>
<html>
<head>
	<title>Editar Postagem</title>
	<link rel="stylesheet" type="text/css" href="../view/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../view/css/pacoteSeis.css">
</head>
<body>
	<div class="topo"><center><a href="index.php" id="titDiv">Editar Postagem</a></center></div>
	<a  id="voltar" href="./post.php">Voltar</a>
	<div class="editPost">
	<form action="./editar.php" method='POST'>
		<input type="text" style="display: none;" name="id" id='id' value="<?php  echo $id; ?>">
		<a id="titLabel"> Titulo : </a> <input name='titulo' id='titulo' type='text' value='<?php echo "$titulo"; ?>'><BR>
		<a id="postLabel"> Postagem: </a> <br><textarea name='post' id='post'  ><?php echo "$post";?></textarea>
	<button type="submit">Salvar</button>
	</div>
</body>
</html>