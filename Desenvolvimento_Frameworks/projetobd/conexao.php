<?php

try {
    $conexao = new PDO ("mysql:host=localhost;dbname=FUNCIONARIOS","root", "");
} catch(PDOException $e){
    echo "Erro com banco de dados: " . $e->getMessage();
} catch(Exception $e){
    echo "Erro generico: " . $e->getMessage();
}
?>