<?php 
    include_once '../factory/conexao.php';
    $cod = $_GET['id'];
    $excluir = "delete from tbproduto where cod='$cod'";
    
    $executar = mysqli_query($conn, $excluir);

    if($executar){
        echo "<script>alert('Produto deletado com successo')</script>";
        echo "<a href='../model/listarproduto.php'>";
        
    }else{
        echo "<script>alert('Dados não encontrados')</script>";
    }
?>