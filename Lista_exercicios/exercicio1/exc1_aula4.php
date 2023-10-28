<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercício 1</title>
    <link rel="stylesheet" href="exc1_aula4.css">
</head>
<body>
    <form method="get" class="formu">
        <div class="pg1">
            <label>Você é pedestre(1) ou motorista(2)?<br>
                <input type="number" name="ped_mot" min="1" max="2" required>
            </label>
        </div><br>
        <div class="pedr">
            <p>Se você for um pedreste:</p>
            <label>Você está na faixa de pedrestes? (1 = sim - 2 = não)<br>
                <input type="number" name="faixa" min="1" max="2">
            </label><br>
            <label>O semáforo está vermelho para os carros? (1 = sim - 2 = não)<br>
                <input type="number" name="sem_p" min="1" max="2">
            </label>
        </div><br><br>

        <div class="motor">
            <p>Se você for um motorista:</p>
            <label>Está usando o cinto de segurança? (1 = sim - 2 = não)<br>
                <input type="number" name="cinto" min="1" max="2">
            </label><br>
            <label>Bebeu alguma bebida alcoólica? (1 = sim - 2 = não)<br>
                <input type="number" name="bebida" min="1" max="2">
            </label><br>
            <label>O semáforo está verde? (1 = sim - 2 = não)<br>
                <input type="number" name="sem_m" min="1" max="2">
            </label>
        </div><br>
        <input type="submit" value="Verificar">
    </form>

    <?php 
$ped_mot = isset($_GET["ped_mot"]) ? $_GET["ped_mot"] : 0;
$sem_p = isset($_GET["sem_p"]) ? $_GET["sem_p"] : 0;
$sem_m = isset($_GET["sem_m"]) ? $_GET["sem_m"] : 0;
$faixa = isset($_GET["faixa"]) ? $_GET["faixa"] : 0;
$bebida = isset($_GET["bebida"]) ? $_GET["bebida"] : 0;
$cinto = isset($_GET["cinto"]) ? $_GET["cinto"] : 0;
$resp;

if($ped_mot == 1){
    if($faixa == 1 && $sem_p == 1){
        $resp = "<p>Você pode atravessar.</p>";
    }else{
        $resp = "<p>Você não pode atravessar.</p>";
    }
}else{
    if($sem_m == 1 && $bebida == 2 && $cinto == 1){
        $resp = "<p>Você pode dirigir.</p>";
    }else{
        $resp = "<p>Você não pode dirigir.</p>";
    }
}

echo "<div class='resp' style='
background-color: rgb(255, 255, 255);
margin: 25px auto;
width: 60%;
padding: 7px;
text-align: center;
border-radius: 10px;' >$resp</div>";
?>


    
</body>
</html>