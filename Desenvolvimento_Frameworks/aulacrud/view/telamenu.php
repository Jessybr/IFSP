<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro Geral</title>
    <link rel="stylesheet" href="../css/menu.css">
    <?php 
        session_start();
        if((!isset($_SESSION['login']) == true) && (!isset($_SESSION['senha']) == true)){
            echo "<script>
                alert('Acesso inválido, faça login primeiro!');
                window.location.href='../index.php';
            </script>";
        }

        $logado = $_SESSION['login'];    
    ?>
</head>
<body>
    <div class="container">
    <h1>Menu</h1>
        <div class="cont-menu">

        <?php 
            echo "Perfil: ".$logado;
            echo "<a href='sair.php' id='btn-sair'>Sair</a>";
        ?>
            
            <a href="cadastrocliente.php">
                Cadastrar cliente
            </a>
            <a href="cadastroproduto.php">
                Cadastrar produto
            </a>
            <a href="../model/listarcliente.php">
                Listar clientes
            </a>
            <a href="../model/listarproduto.php">
                Listar produtos
            </a>
            <a href="filtrarcliente.php">
                Filtrar clientes
            </a>
            <a href="filtrarproduto.php">
                Filtrar produtos
            </a>
        </div>
    </div>
</body>
</html>