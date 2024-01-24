<!DOCTYPE html>
<html lang="pt-br">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
   <link rel="stylesheet" href="style/cabecalhoRadape.css">
   <title>Loja</title>
   <link rel="shortcut icon" href="images/store-frontICON.ico" type="image/x-icon">
   <link rel="stylesheet" href="style/cadastroP.css">
</head>
<body>
<?php
include_once 'config/cabecalho.php';
include_once 'config/config.php'; ?>

<div class="row formu">
<?php 
    if(isset($_SESSION['var'])){
        echo "<h3 class='text-center'>".$_SESSION['var']."</h3>";
    }
?>
    <div><h2>Cadastro de Produtos</h2></div>
    <form class="col s9" action="config/criaProduto.php" method="post">
        <div class="row">
            <div class="input-field col s9">
                <input id="id" type="text" name="id" class="validate">
                <label for="id">ID</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s9 ">
                <input id="descricao" type="text" name="descricao" class="validate">
                <label for="descricao">Descrição</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s9">
                <input id="imagem" type="text" name="imagem" class="validate">
                <label for="imagem">Imagem</label>
            </div>
        </div>
        <div class="row">
            <div class="input-field col s9 ">
                <input id="preco" type="text" name="preco" class="validate">
                <label for="preco">Preço</label>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <input name="btncadastrar" class="btn waves-effect waves-light" type="submit" value="Cadastrar Produto">
            </div>
        </div>
    </form>
    </div>


  <?php
include_once "config/rodape.php";?>
    
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>