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
        <h1>Lista de clientes</h1>
        <div class="cont-lista">
            <?php
                include_once '../factory/conexao.php';
                $consultar = "select * from tbcliente";
                $executar = mysqli_query($conn, $consultar);
                while($linha = mysqli_fetch_array($executar)){
            
            ?>
            <form action="" method="get">
                <label>
                    Nome:
                    <input type="text" name="cxnome" value="<?php echo $linha["nome"] ?>">
                </label>
                <label>
                    E-mail:
                    <input type="text" name="cxemail" value="<?php echo $linha["email"] ?>">
                </label>
                <a id="btn-exluir" href="excluircliente.php?id=<?php echo $linha['cod'];?>">X</a>
                <a id="btn-editar" href="editarcliente.php?id=<?php echo $linha['cod'];?>">Editar</a>
                <hr>
            </form>
            <?php } ?>
        </div>
        
        
        <a href="../view/cadastrocliente.php">
            Voltar
        </a>
    </div>
    
</body>
</html>