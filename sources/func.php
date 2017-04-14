<?php
	class main
	{
		public function conecta()  	//faz conexão com banco ...
		{
			$server = 'localhost';
			$user = 'root';
			$pass = 'yanagassi123';
			$banco = 'banco';
			$conn = mysql_connect($server, $user, $pass) or trigger_error(mysql_error(),E_USER_ERROR);
			$selecao = mysql_select_db($banco) or die ("Não conectado ao Banco de Dados ...". mysql_error());
			if(isset($selecao));
		}

		public function lista() 		//lista as postagens index ...
		{	
			$Max_Carac = 450;

			$query =mysql_query("SELECT * FROM post ORDER BY id DESC");
			$linhas = mysql_num_rows($query);
			

			for ($i=0; $i < $linhas ; $i++) { 

				$dados = mysql_fetch_array($query);
				$id = $dados["id"];
				$titulo = $dados["titulo"];
				$post = $dados["post"];
				$data = $dados["data"];
				echo("<div class='noticia'>");
				echo ("<a id='titulo' href='noticia.php?noticia=" ."$id"."'>". "$titulo" ."</a>" ."<br>");
				echo "<br>";
				echo substr("<a class='postagem' href='noticia.php?noticia=" ."$id"."'>"."$post"."</a>" , 0, $Max_Carac) ."...". "<a id='contlendo' href='noticia.php?noticia=" ."$id"."'>" . "Continue Lendo"."</a>". "<br>";
				echo "<a id='dataNoticia'>$data</a>";
				echo "</div>";

			}
				
		}

		public function visitaIndex(){
			$query =mysql_query("SELECT * FROM visita ");
			$dados = mysql_fetch_array($query);
			$visita = $dados['visita'];
			echo "$visita";

		}
		public function regIndex(){

			$query = mysql_query("SELECT * FROM visita");
			$dados = mysql_fetch_array($query);
			$visita = $dados['visita'];

			$resultado = $visita + 1;
			$up = "UPDATE visita SET visita='$resultado'";
			mysql_query($up) or die(mysql_error());
		}

		public function registrarVisita(){
			$id = $_GET['noticia'];
			$query = mysql_query("SELECT * FROM post WHERE id='$id' ");
			$dados = mysql_fetch_array($query);
			$visita = $dados['visita'];
			$data = $dados['data'];
			$result = $visita + 1;


			$update = "UPDATE post SET visita='$result', data = '$data' WHERE id= '$id'";
			mysql_query($update) or die (mysql_error());
		}
		public function listarNoticiasTitle()
		{
			$Max_Carac = 100;
		
			$query = mysql_query("SELECT * FROM post ORDER BY id DESC");
			$linhas = mysql_num_rows($query);
			

			for ($i=0; $i < $linhas ; $i++) { 

				$dados = mysql_fetch_array($query);
				utf8_encode($query);
				$id = $dados["id"];
				$titulo = $dados["titulo"];
				$post = $dados["post"];

				echo substr("<a id='tituloList' href='noticia.php?noticia=" ."$id"."'>". "$titulo" ."</a>", 0, 75)."..."."<br>";
		}
	}

		public function noticia()   //Pega o ID da noticia via URL  e coloca ela na tela...
		{
			$idnoticia = $_GET["noticia"];
			$query = mysql_query("SELECT * FROM post WHERE id=$idnoticia") or die ("Erro na consulta da noticia....");	
			$dados = mysql_fetch_array($query);
			utf8_encode($query);
			$id = $dados["id"];
			$titulo = $dados["titulo"];
			$post = $dados["post"];
			$data = $dados["data"];
			$foto = $dados["foto"];

			echo "<h1 id='tituloNoticia' > $titulo </h1>". "<br>";
			echo "<p id='data'>$data </p><br><br><br>";
			
			echo "<img id='foto' src='../bancoFotos/"."$foto". "'><br>";
			echo "<a id='post' >$post" ."</a>". "<br>";
			
		}


		function rank(){
			$query = mysql_query("SELECT * FROM post ORDER BY visita DESC");

			$linha = mysql_num_rows($query);
			
			for ($i=0; $i < 5; $i++) { 

				$dados =mysql_fetch_array($query);
				$id = $dados['id'];
				$titulo = $dados['titulo'];
				$nVisitas = $dados['visita'];

				echo "<a id='tituloLVisita' href='../noticia.php?noticia="."$id"."'>Titulo: '$titulo'</a> <br>";
				echo "<a id='visitaNum'>Numero de Visita: $nVisitas</a>";
				echo "<hr>";
				
			}
		}

		public function temperatura(){
			$query = mysql_query("SELECT * FROM temperatura");
			
			$dados = mysql_fetch_array($query);

			$graus = $dados['graus'];
			$foto = $dados['foto'];
			echo "<a id='tempJF'>Tempo em Juiz de Fora</a>";

			if ($foto == "Sol") {
				echo "<img  id='imgTemp' src='../view/img/sol.png'>";
				echo "<a id='tipoDia'>Ensolarado</a>";
				echo "<a id='graus'>$graus Graus</a>";
			}

			elseif ($foto == "Chuva") {
				echo "<img  id='imgTemp' src='../view/img/chuva.png'>";
				echo "<a id='tipoDia'>Chuvoso</a>";
				echo "<a id='graus'>$graus Graus</a>";
			}

			else{
				echo "<img  id='imgTemp' src='../view/img/Nublado.png'>";
				echo "<a id='tipoDia'>Nublado</a>";
				echo "<a id='graus'>$graus Graus</a>";
			}
		}

		public function listaGraus(){
			$query = mysql_query("SELECT * FROM temperatura");
			$dados = mysql_fetch_array($query);

			$graus = $dados['graus'];
			echo "$graus" -  'º';
		}
		public function fecharConexao() //Fecha a conexão ...
		{
		
		}

	}

	class admin  
	{
		
		function postRecebe() //REcebe as postagens e coloca nos valores...
		{

		}
		function postUpdate(){		//Pegar os formularios dos campos e fazer update

		}

		function postList()  //Lista as postagens no campo dos administradores
		{
			$Max_Carac = 200;
			$query = mysql_query("SELECT * FROM post ORDER BY id DESC");
			$linhas = mysql_num_rows($query);
			

			for ($i=0; $i < $linhas ; $i++) { 

				$dados = mysql_fetch_array($query);
				$id = $dados["id"];
				$titulo = $dados["titulo"];
				$post = $dados["post"];

				echo "Titulo : " ."$titulo" . "<br>";
				echo substr("Postagem: " ."$post" , 0, $Max_Carac) ."..." . "<br>";
				echo "<a href='editarpost.php?noticia=" . "$id" ."'> Editar Postagem </a>";
				echo "<br>";
				echo "<a href='apagarpost.php?noticia=" . "$id" ."'> Apagar Postagem </a>";
				echo "<hr>";
			}
		}



		function sairSessao()			///SAi da sessão
		{
			
			session_destroy();
			header("Location: ../index.php");
		}
	}
	
?>