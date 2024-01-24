<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercício 3</title>
    <link rel="stylesheet" href="exc3_aula4.css">
</head>
<body>
    <header>
        <h1>Feriados por mês</h1>
    </header>
    <form method="get" class="formu">
        <div class="container">
            <label>Mês:
                <input type="number" name="mes" id="mes" required min="1" max="12">
            </label>
        </div><br><br>
        <div class="botao">
            <input type="submit" value="Pesquisar">
            <input type="reset" value="Limpar">
        </div>
    </form>
    
<?php 
$mes = isset($_GET["mes"]) ? $_GET["mes"] : 0;
$resp = 0;

switch($mes){
    case 1: 
        $resp = "<h2>Feriados no mês de Janeiro<h2/><p>1 de janeiro, domingo, Confraternização Universal.<p/>";
        break;
    case 2: 
        $resp = "<h2>Feriados no mês de Fevereiro<h2/><p>Carnaval<p/>";
        break;
    case 3: 
        $resp = "<h2>Feriados no mês de Março<h2/><p>Não há feriados.<p/>";
        break;
    case 4: 
        $resp = "<h2>Feriados no mês de Abril<h2/><p>7 de abril, sexta-feira, Paixão de Cristo.<p/><p>21 de abril, sexta-feira, Tiradentes.<p/>";
        break;
    case 5: 
        $resp = "<h2>Feriados no mês de Maio<h2/><p>1 de maio, segunda-feira, Dia do Trabalho.<p/>";
        break;
    case 6: 
        $resp = "<h2>Feriados no mês de Junho<h2/><p>Não há feriados.<p/>";
        break;
    case 7: 
        $resp = "<h2>Feriados no mês de Julho<h2/><p>Não há feriados<p/>";
        break;
    case 8: 
        $resp = "<h2>Feriados no mês de Agosto<h2/><p>Não há feriados.<p/>";
        break;
    case 9: 
        $resp = "<h2>Feriados no mês de Setembro<h2/><p>17 de setembro, quinta-feira, Independência do Brasil.<p/>";
        break;
    case 10: 
        $resp = "<h2>Feriados no mês de Outubro<h2/><p>12 de outubro, quinta-feira, Nossa Senhora Aparecida.<p/>";
        break;
    case 11: 
        $resp = "<h2>Feriados no mês de Novembro<h2/><p>2 de novembro, quinta-feira, Finados.<p/><p>15 de novembro, quarta-feira, Proclamação da República.<p/>";
        break;
    case 12: 
        $resp = "<h2>Feriados no mês de Dezembro<h2/><p>25 de dezembro, segunda-feira, Natal.<p/>";
        break;
}
echo "<div class='container2'>$resp<div/>"
?>


</body>
</html>