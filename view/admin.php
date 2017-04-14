<?php require_once('../sources/func.php'); $pagina = new main(); $pagina -> conecta();  ?>

<!DOCTYPE html>
<html>
<head>
	<title>Area de Administração</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="../view/css/pacoteTres.css">
	<link rel="stylesheet" type="text/css" href="../view/css/bootstrap.css">
</head>
<body>
	<div class="topo">
		<center>	
			<a id="logo" href="../index.php">Admin Nome</a>
		</center>
		<a id="sair"  id="sair" href="../admin/sair.php">Sair</a>
	</div>

	<div class="barra">
	<a href="/admin/user-include.php"> <img  id="addUserImg" width="50" src="../view/img/addUser.png">	</a>
	<a href="/admin/post.php"><img width="50" id="editPost" src="../view/img/editPost.png"></a>
	<a href="/admin/addpost.php"> <img   id="addpost" width="50" src="../view/img/newPost.png"> </a>
	</div>
		<div class="rank">
			<div class="maisAcess">
				<center>
					<a id="TituloMA">Noticias mais acessadas:</a>
				</center>
			</div>
			<?php $pagina -> rank();?>
	</div>

	<div class="NVIndex">
		<a>Nº Visitas INDEX:</a> <?php $pagina -> visitaIndex(); ?>
	</div>

	<div class="editarTemp">
		<div class="titleTemp">
			<center>
				<a class="editTEmp">Editar Temperatura</a>
			</center>
		</div>
		<div>
		<form class="form" id="foto" action="editTemp.php" method="POST" >
			<label>Graus: <input type="text" name="graus" id="graus" value='<?php $pagina -> listaGraus(); ?>'></label>
			 
			<select name="foto" form="foto">
			  <option value="Sol">Sol</option>
			  <option value="Nublado">Nublado</option>
			  <option value="Chuva">Chuva</option>
			</select>
			<button type="submit">Atualizar</button>
			</form>
		</div>
	</div>
</body>
</html>