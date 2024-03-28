<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir produto</title>
    <link rel="stylesheet" href="../css/excluir.css">
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
        <p>Tem certeza que deseja <span>excluir</span> o item abaixo?</p>
        <table>
            <tr>
                <td>Produto:</td><td><?php echo $_GET['produto']?></td>
            </tr>
            <tr>
                <td>Data de validade:</td><td><?php echo $_GET['datavalidade']?></td>
            </tr>
            <tr>
                <td>Quantidade:</td><td><?php echo $_GET['qtde']?></td>
            </tr>
            <tr>
                <td>Valor:</td><td><?php echo $_GET['valor']?></td>
            </tr>
        </table>
        <form method="post" action="">
            <input type="hidden" name="id" value="<?php echo $_GET['id']; ?>">
            <button type="submit" name="excluir">Excluir</button>
        </form>
        <a href="listarproduto.php"><button>Voltar</button></a>
    </div>
    
</body>
</html>

<?php 
    include_once '../factory/conexao.php';
    if(isset($_POST['excluir'])){
        $cod = $_GET['id'];
        $excluir = "delete from tbproduto where cod='$cod'";
    
        $executar = mysqli_query($conn, $excluir);

        if($executar){
            echo "<script>alert('Produto deletado com successo');
            window.location.href='listarproduto.php';
        </script>";
        }else{
            echo "<script>alert('Dados não encontrados')</script>";
        }
    }
?>