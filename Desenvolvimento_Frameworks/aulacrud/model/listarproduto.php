<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exibir clientes</title>
    <link rel="stylesheet" href="../css/listar.css">
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
                $consultar = "select * from tbproduto";
                $executar = mysqli_query($conn, $consultar);

                if(mysqli_num_rows($executar)){
                    while($linha = mysqli_fetch_array($executar)){
            
            ?>
                        <div class="cont-lista">
                        <form action="editarproduto.php" method="get">
                            <label>
                                Produto:
                                <input type="text" name="produto" value="<?php echo $linha["produto"] ?>">
                            </label>
                            <label>
                                Data de validade:
                                <input type="date" name="datavalidade" value="<?php echo $linha["datavalidade"] ?>">
                            </label>
                            <label>
                                Quantidade:
                                <input type="number" name="qtde" value="<?php echo $linha["qtde"] ?>">
                            </label>
                            <label>
                                Valor:
                                <input type="text" name="valor" value="<?php echo $linha["valor"] ?>">
                            </label>
                            
                            <button id="btn-exluir"><a href="excluirproduto.php?id=<?php echo $linha['cod'];?>&produto=<?php echo $linha['produto'];?>&datavalidade=<?php echo $linha['datavalidade'];?>&qtde=<?php echo $linha['qtde'];?>&valor=<?php echo $linha['valor'];?>">X</a></button>
                            <input type="hidden" name="cod" value="<?php echo $linha['cod'] ?>">
                            <input id="btn-editar" type="submit" value="Editar">    
                            
                        
                        </form>
                        </div>
            
            <?php 
                    }
                }else{
                    ?>
                    
                        <h3>Não há produtos para listar. Cadastre um primeiro.</h3>
                    <?php
                }
                ?>
        
        <a href="../view/telamenu.php">
            Voltar
        </a>
    </div>
    
</body>
</html>