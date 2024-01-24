<?php
include_once 'config.php'; 

if(isset($_POST['btncadastrar'])){
    if(!empty($_POST['id']) && !empty($_POST['descricao']) && !empty($_POST['imagem']) && !empty($_POST['preco'])){
        $id = $_POST['id'];
        $descr = $_POST['descricao'];
        $imag = $_POST['imagem'];
        $preco = $_POST['preco'];
    

    $cria = $conexao->prepare("INSERT INTO tabprodutos(proId, proDescricao, proImagem, proPreco) VALUES(:id, :descr, :imag, :preco)");
    $cria->bindParam(":id", $id);
    $cria->bindParam(":descr", $descr);
    $cria->bindParam(":imag", $imag);
    $cria->bindParam(":preco", $preco);
    $cria->execute();
    header('Location: ../cadastroProduto.php');
    exit(); 

    } else {
        $_SESSION['var'] = "Preencha todos os campos!!";
        header('Location: ../cadastroProduto.php');
        echo "Preencha todos os campos!!";
        exit(); 
    }
}

?>