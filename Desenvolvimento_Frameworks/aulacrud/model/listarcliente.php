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
        <h1>Lista de clientes</h1>
            <?php
                include_once '../factory/conexao.php';
                $consultar = "select * from tbcliente";
                $executar = mysqli_query($conn, $consultar);

                if(mysqli_num_rows($executar)){
                    while($linha = mysqli_fetch_array($executar)){  ?>
                        <div class="cont-lista">
                        <form action="editarcliente.php" method="get">
                            <label>
                                Nome:
                                <input type="text" name="nome" value="<?php echo $linha["nome"] ?>">
                            </label>
                            <label>
                                E-mail:
                                <input type="text" name="email" value="<?php echo $linha["email"] ?>">
                            </label>
                            <button id="btn-excluir"><a href="excluircliente.php?cod=<?php echo $linha['cod'];?>&nome=<?php echo $linha['nome'];?>&email=<?php echo $linha['email']; ?> ">X</a></button>
                            <input type="hidden" name="cod" value="<?php echo $linha['cod'] ?>">
                            <input id="btn-editar" type="submit" value="Editar">    
                        </button>
                            
                        </form>
                        </div>
                        
                <?php } 
                } else {?>
                    
                        <h3>Não há clientes para listar. Cadastre um primeiro.</h3>
                    <?php
                }
                ?>
                
        
        
        
        <a href="../view/telamenu.php">
            Voltar
        </a>
    </div>
    
</body>
</html>