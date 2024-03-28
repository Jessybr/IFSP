<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Cliente</title>
    <link rel="stylesheet" href="../css/cadastro.css">
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
        <form action="../model/inserirproduto.php" method="post" style="display: flex; flex-direction: column;">
            <label>
                Produto:
                <input type="text" name="cxproduto">
            </label>
            <label>
                Data de validade:
                <input type="date" name="cxdatavalidade">
            </label>
            <label>
                Quantidade:
                <input type="number" name="cxquantidade">
            </label>
            <label>
                Valor:
                <input type="text" name="cxvalor">
            </label>
            <input type="submit" value="Gravar">
        </form>
        <a href="../model/listarproduto.php">
            Listar produtos
        </a>
        <a href="../index.php">
            Voltar
        </a>
    </div>
</body>
</html>