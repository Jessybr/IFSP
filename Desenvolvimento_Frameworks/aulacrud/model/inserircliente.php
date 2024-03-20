<?php

    if($_POST['cxnome']!=""){
        include_once '../factory/conexao.php';
        $nome = $_POST['cxnome'];
        $email = $_POST['cxemail'];
        $sql = "INSERT INTO tbcliente (nome, email) values ('$nome', '$email')";
        $query = mysqli_query($conn, $sql);
        echo "Dados cadastrados com sucesso";
    }else{
        echo "Dados não cadastrado";
    }
?>