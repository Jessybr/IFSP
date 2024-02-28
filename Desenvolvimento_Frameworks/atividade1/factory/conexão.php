<?php 
    $banco_dados = "bd_imc";
    $user = "root";
    $senha = "";
    try{
        $con = new PDO("mysql:dbname=$banco_dados; host=localhost", $user, $senha);
    }catch( PDOException $e ) {
        echo "Erro: " . $e->getMessage();
    }

?>