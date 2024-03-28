<?php 
    include_once '../factory/conexao.php';
    $cod = $_GET['cod'];
    $produto = $_GET['produto'];
    $datavalidade = $_GET['datavalidade'];
    $qtde = $_GET['qtde'];
    $valor = $_GET['valor'];
    $editar = "update tbproduto set produto = '$produto', datavalidade = '$datavalidade', qtde = '$qtde', valor = '$valor' where cod='$cod'";
    
    $executar = mysqli_query($conn, $editar);

    if($executar){
        echo "<script>alert('Cliente editado com successo')</script>";
        echo "<a href='../model/listarcliente.php'>";
        
    }else{
        echo "<script>alert('Dados não encontrados')</script>";
    }
?>