<?php

session_start();

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Configurações</title>
    <link rel="stylesheet" href="Style/config.css">
</head>
<body>
<header>
    <h1 class="titulo">Jogo da memória</h1>
</header>

<div class="sub-titulo"><h2>Dificuldade do Jogo</h2></div>

<div class="start">
        <form method="POST" action="facil.php">
            <input id="voltar" type="hidden" name='acao' value="Fácil" />
            <input id="voltar" type="submit" value="Fácil"/>
        </form>
</div>

<div class="start">
        <form method="POST" action="dificil.php">
            <input id="voltar" type="hidden" name='acao' value="Difícil" />
            <input id="voltar" type="submit" value="Difícil"/>
        </form>
</div>

<div class="start">
    <button><a href="index.php">Voltar</a></button>
</div>

</body>
</html>