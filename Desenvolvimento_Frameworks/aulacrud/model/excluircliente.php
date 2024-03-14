<?php 
    include_once '../factory/conexao.php';
    $cod = $_GET['id'];
    $excluir = "delete from tbcliente where cod='$cod'";
    
    $executar = mysqli_query($conn, $excluir);

    if($executar){
        echo "<script>alert('Cliente deletado com successo')</script>";
        echo "<a href='../model/listarcliente.php'>";
        
    }else{
        echo "<script>alert('Dados não encontrados')</script>";
    }
?>