<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercício 4</title>
    <link rel="stylesheet" href="exc4_aula4.css">
</head>
<body>
    <header>
        <h1>Calcular IMC</h1>
    </header>
    <form method="get" class="formu">
        <div class="container">
            <label>Peso (Kg):
                <input type="number" name="peso" id="mes" required min="1" max="500">
            </label>
            <label>Altura (Cm):
                <input type="number" name="altura" id="mes" required min="1" max="500">
            </label>
        </div><br><br>
        <div class="botao">
            <input type="submit" value="Pesquisar">
            <input type="reset" value="Limpar">
        </div><
    </form>
    
<?php 
$altura = isset($_GET["altura"]) ? $_GET["altura"] : 1;
$peso = isset($_GET["peso"]) ? $_GET["peso"] : 1;
$altura /= 100; 
$resp = $peso / ($altura * $altura);
$exibir;

if($resp < 18.5){
    $exibir = "<p>Situação: Baixo peso.<p/><p>Seu IMB: $resp<p/>";
}elseif($resp >= 18.5 && $resp <= 24.99){
    $exibir = "<p>Situação: Normal.<p/><p>Seu IMB: $resp<p/>";
}elseif($resp >= 25 && $resp <= 29.99){
    $exibir = "<p>Situação: Sobrepeso.<p/><p>Seu IMB: $resp<p/>";
}elseif($resp > 30){
    $exibir = "<p>Situação: Obesidade.<p/><p>Seu IMB: $resp<p/>";
}

echo "<div class='container2'>$exibir<div/>";

echo "<div class='container3'>
    <h2>Tabela<h2/><img src='imctab.png' alt='Tabela IMC'>
</div>";
?>


</body>
</html>