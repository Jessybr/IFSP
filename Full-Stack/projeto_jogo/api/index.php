<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jogo da Memória</title>
    <link rel="stylesheet" href="Style/index.css">
</head>
<body>
<?php 
if (isset($_POST['acao']) && $_POST['acao'] == "reset") {
    // pq??
    session_destroy();
    session_start();
    unset($_GET['l']);
    unset($_GET['c']);
    unset($cont);
    header("Location: index.php");
}
 ?>
<header>
    <h1 class="titulo">Jogo da memória</h1>
</header>
    <div class="start">
        <a href="config.php">
            <button>Começar</button>
        </a>
    </div>
    <div class="start">
        <button id="tutorial">Como Jogar</button>
    </div>

    <div id="tutor_cont"></div>
    
    <footer><h3>Desenvolvido por Jéssica Bueno Ramos.</h3> </footer>
<script src="Script/config.js"></script>
</body>
</html>
