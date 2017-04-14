<?php 
	require_once('../sources/func.php');
	$pagina = new main();
	$pagina -> conecta();
	include("seguranca.php");

	protegePagina(); 

	$titulo = $_POST["titulo"];
	$post  = $_POST["post"];
 	$foto = $_FILES["foto"];
		
			// Pega extensão da imagem
			preg_match("/\.(gif|bmp|png|jpg|jpeg){1}$/i", $foto["name"], $ext);
 
        	// Gera um nome único para a imagem
        	$nome_imagem = md5(uniqid(time())) . "." . $ext[1];
 
        	// Caminho de onde ficará a imagem
        	$caminho_imagem = "../bancoFotos/" . $nome_imagem;
 
			// Faz o upload da imagem para seu respectivo caminho
			move_uploaded_file($foto["tmp_name"], $caminho_imagem);
		

	$query = "INSERT INTO post (titulo, post, visita, foto) values ('$titulo', '$post', 0,'".$nome_imagem."')";
	$inserir = mysql_query($query);

	if ($inserir){
		header("Location: /admin/addpost.php");
	}else{
		echo "nao foi enviada..";
		echo "Error: ". mysql_error();
	}

 ?>



