<!DOCTYPE html>
<html lang="pt-br">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
   <link rel="stylesheet" href="style/cabecalhoRadape.css">
   <title>Loja</title>
   <link rel="shortcut icon" href="images/store-frontICON.ico" type="image/x-icon">
   <link rel="stylesheet" href="style/produtos.css">
</head>
<body>
   <?php
      include_once 'config/cabecalho.php';
      include_once 'config/config.php';
      ?>
      <h3>Produtos para venda</h3>
   <div class="conteiner1">
   <?php
      
      function mostrarDados($linha)
      {
         echo "<div class='cardP'>
                  <div class='cardC'>
                     <img src='images/{$linha['proImagem']}.webp'>
                     <p>{$linha['proDescricao']}</p>
                  </div>
                  <div class='cardC'>
                     <h5>R$ {$linha['proPreco']}</h5>
                     <a href='carrinho.php?codigo={$linha['proId']}' class='btn'>Comprar</a>
                  </div>
               </div>";
      }
      $consulta = $conexao->prepare('Select * from tabprodutos');
      $consulta->execute();
      while ($linha = $consulta->fetch(PDO::FETCH_ASSOC)) {
         mostrarDados($linha);
      }
   ?>   

   </div>

<?php
include_once "config/rodape.php";
?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>