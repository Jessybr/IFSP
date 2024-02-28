<?php 
include_once '../factory/conexão.php';
include_once '../control/calcularIMC.php';

$insere = $con->prepare('INSERT INTO dados (nome, peso, altura) VALUES(:nome, :peso, :altura)');
$insere->bindParam(":nome", $nome);
$insere->bindParam(":peso", $peso);
$insere->bindParam(":altura", $altura);
$insere->execute();
?>