<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IMC</title>
    <link rel="stylesheet" href="../view/css/style.css">
</head>
<body>

<?php
    $nome = $_POST['nome'] ? $_POST['nome'] : '';
    $peso = $_POST['peso'] ? $_POST['peso'] : 0;
    $altura = $_POST['altura'] ? $_POST['altura'] : 0;

    include_once '../model/inserircliente.php';
    
    $imc = $peso / ($altura * $altura);
?>
    
    <div class="container">
        <h1>Olá <?php echo $nome ?></h1></br>
        <?php
            echo "Seu IMC é: " . $imc;
        ?>
        <br/><br/>
        <?php
        if($imc < 18.5){        
            echo "Classificação: Magresa";
        }else if($imc >= 18.5 && $imc <= 24.9){
            echo "Classificação: Normal";
        }else if($imc >= 25 && $imc <= 29.9 ){
            echo "Classificação: Sobrepeso I";
        }else if($imc >= 30 && $imc <= 39.9 ){
            echo "Classificação: Obesidade II";
        }else {
            echo "Classificação: Sobrepeso III";
        }
        
        ?>
    </div>

</body>
</html>
