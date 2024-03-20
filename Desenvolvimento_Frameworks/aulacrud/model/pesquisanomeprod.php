<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exibir clientes</title>
    <link rel="stylesheet" href="../css/listar.css">
</head>
<body>  
    <div class="container">
    <?php 
        include_once '../factory/conexao.php';

        $produto = $_POST['cxpesquisaproduto'];
        $consultar = "select * from tbproduto where produto = '$produto'";
        $executar = mysqli_query($conn, $consultar);

        if(mysqli_num_rows($executar)){
            while($linha = mysqli_fetch_array($executar)){

        
    ?>
        <div class="cont-lista">
            <form action="" method="post">
                <label>
                    Produto:
                    <input type="text" name="cxproduto" value="<?php echo $linha["produto"] ?>">
                </label>
                <label>
                    Data de validade:
                    <input type="date" name="cxdatavalidade" value="<?php echo $linha["datavalidade"] ?>">
                </label>
                <label>
                    Quantidade:
                    <input type="number" name="cxquantidade" value="<?php echo $linha["qtde"] ?>">
                </label>
                <label>
                    Valor:
                    <input type="text" name="cxvalor" value="<?php echo $linha["valor"] ?>">
                </label>
                
                <button id="btn-exluir"><a href="excluirproduto.php?id=<?php echo $linha['cod'];?>">X</a></button>
                <button id="btn-editar"><a href="editarproduto.php?id=<?php echo $linha['cod'];?>">Editar</a></button>
                
            
            </form>
        </div>

<?php       }
    
        } else {
            ?>
                    
            <h3>Produto não encontrado</h3>
            
    <?php
        }
    ?>

        <a href="../view/telamenu.php">
            Voltar
        </a>
    </div>
    
</body>
</html>