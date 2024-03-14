<?php 
    include_once '../factory/conexao.php';
    $cod = $_GET['id'];
    $nome = $_GET['cxnome'];
    $email = $_GET['cxemail'];
    $editar = "update from tbcliente set nome = '$nome', email = '$email' where cod='$cod'";
    
    $executar = mysqli_query($conn, $editar);

    if($executar){
        echo "<script>alert('Cliente editado com successo')</script>";
        echo "<a href='../model/listarcliente.php'>";
        
    }else{
        echo "<script>alert('Dados não encontrados')</script>";
    }
?>