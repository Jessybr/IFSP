<?php 
    $server = "localhost";
    $db = "bd_loja";
    $user = "root";
    $password = "";

    try {
    $conexao = new PDO("mysql:host=$server;dbname=$db", $user, $password);
    $conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch(PDOException $e) {
        echo "Erro na conexão com o banco de dados: " . $e->getMessage();
    }catch(Exception $e) {
        echo "Erro genérico: " . $e->getMessage();
    }

?>