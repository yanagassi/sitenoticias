<?php
	require_once('../sources/func.php');
	$pagina = new main();
	$pagina -> conecta();

	$nome = $_POST['nome']
	$usuario = $_POST['usuario'];
	$pass  = $_POST['pass'];

	$querry = "INSERT INTO usuarios (nome, usuario, senha) values ('$nome', '$usuario' , '$pass')";
	$inserir = mysql_query($querry);

	if($inserir){
		header("Location: user_include.php");
	}else{
		echo "Ouve um erro ao adicionar um usuario... Erro: ". mysql_error();
	}
?>