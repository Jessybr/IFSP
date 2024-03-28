<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir cliente</title>
    <link rel="stylesheet" href="../css/excluir.css">
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
        <p>Tem certeza que deseja <span>excluir</span> o cliente abaixo?</p>
        <table>
            <tr>
                <td>Cliente:</td><td><?php echo $_GET['nome']?></td>
            </tr>
            <tr>
                <td>Email:</td><td><?php echo $_GET['email']?></td>
            </tr>
            
        </table>
        <form method="post" action="">
            <input type="hidden" name="id" value="<?php echo $_GET['cod']; ?>">
            <button type="submit" name="excluir">Excluir</button>
        </form>
        <a href="listarcliente.php"><button>Voltar</button></a>
    </div>
    
</body>
</html>

<?php 
    include_once '../factory/conexao.php';
    if(isset($_POST['excluir'])){
        $cod = $_GET['cod'];
        $excluir = "delete from tbcliente where cod='$cod'";
        
        $executar = mysqli_query($conn, $excluir);

        if($executar){
            echo "<script>alert('Cliente deletado com successo');
                window.location.href='listarcliente.php';
            </script>";
        }else{
            echo "<script>alert('Dados não encontrados')</script>";
        }

    }
?>