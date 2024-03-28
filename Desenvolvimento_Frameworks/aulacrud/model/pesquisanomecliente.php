<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/listar.css">
    <title>Exibir clientes</title>
    <?php 
        session_start();
        if((!isset($_SESSION['login']) == true) && (!isset($_SESSION['senha']) == true)){
            echo "<script>
                alert('Acesso inválido, faça login primeiro!');
                window.location.href='../index.php';
            </script>";
        }

    ?>
</head>
<body> 
    <div class="container">
    <?php 
        include_once '../factory/conexao.php';

        $pesqnome = $_POST["cxpesquisacliente"];
        $consultar = "select * from tbcliente where nome = '$pesqnome'";
        $executar = mysqli_query($conn, $consultar);

        if(mysqli_num_rows($executar)){
            while($linha = mysqli_fetch_array($executar)){
        
    ?>
        <div class="cont-lista">
            <form action="" method="get">
                <label>
                    Nome:
                    <input type="text" name="cxnome" value="<?php echo $linha["nome"] ?>">
                </label>
                <label>
                    E-mail:
                    <input type="text" name="cxemail" value="<?php echo $linha["email"] ?>">
                </label>
                
            </form>
        </div>

    <?php   } 
    
        } else {
            ?>
                    
            <h3>Cliente não encontrado</h3>

        <?php
                }
        ?>

        <a href="../view/telamenu.php">
            Voltar
        </a>
    </div>
    
</body>
</html>