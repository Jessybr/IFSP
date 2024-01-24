<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eleição - Segundo Turno</title>
    <link rel="stylesheet" href="exc5_aula4.css">
</head>
<body>
    <header>
        <h1>Eleição - Segundo Turno</h1>
    </header>
    <div class="container">
        <h3>Candidatos:</h3>
        <ul>
            <li>83-Alibabá</li>
            <li>93-Alcapone</li>
            <li>00-Voto em branco</li>
        </ul>
    </div>
    <div class="votos">
        <form method="get">
            <label>Número do Candidato:
                <br><input type="number" name="voto" min="0" max="100">
            </label>
            <input type="submit" value="Votar">
            <input type="reset" value="Limpar">
        </form>
    </div>

<?php
    $voto = isset($_GET["voto"]) ? $_GET["voto"] : null;

    $votos_alibaba = 0;
    $votos_alcapone = 0;
    $votos_branco = 0;
    $votos_nulos = 0;
    $totalVotos = 0;

    if ($voto == 83) {
        echo "<div class='cand_esld'>
        <h3>Candidato escolhido:</h3>
        <p>83-Alibabá</p>
        <h3>Confirmar Voto?</h3>
        <form method='get'>
            <input type='hidden' name='candidato' value='83'>
            <input type='submit' value='Sim'>
            <input type='reset' value='Não'>
        </form>
    </div>";
    } elseif ($voto == 93) {
        echo "<div class='cand_esld'>
        <h3>Candidato escolhido:</h3>
        <p>93-Alcapone</p>
        <h3>Confirmar Voto?</h3>
        <form method='get'>
            <input type='hidden' name='candidato' value='93'>
            <input type='submit' value='Sim'>
            <input type='reset' value='Não'>
        </form>
    </div>";
    } elseif ($voto == 0) {
        echo "<div class='cand_esld'>
        <h3>Candidato escolhido:</h3>
        <p>Voto em Branco</p>
        <h3>Confirmar Voto?</h3>
        <form method='get'>
            <input type='hidden' name='candidato' value='0'>
            <input type='submit' value='Sim'>
            <input type='reset' value='Não'>
        </form>
    </div>";
    } else {
        echo "<div class='cand_esld'>
        <h3>Candidato escolhido:</h3>
        <p>Voto Nulo</p>
        <h3>Confirmar Voto?</h3>
        <form method='get'>
            <input type='hidden' name='candidato' value='nulo'>
            <input type='submit' value='Sim'>
            <input type='reset' value='Não'>
        </form>
    </div>";
    }

    $totalVotos++;

    if (isset($_GET["candidato"])) {
        $candidato = $_GET["candidato"];
        
        switch ($candidato) {
            case "83":
                $votos_alibaba++;
                break;
            case "93":
                $votos_alcapone++;
                break;
            case "0":
                $votos_branco++;
                break;
            default:
                $votos_nulos++;
                break;
        }
    }

    $totalVotos = $votos_alibaba + $votos_alcapone + $votos_branco + $votos_nulos;

if ($totalVotos == 10) {
    echo "<div class='resul'>
    <h1>Resultados Finais</h1>
    <p>Candidato 83-Alibabá: $votos_alibaba votos</p>
    <p>Candidato 93-Alcapone: $votos_alcapone votos</p>
    <p>Votos em Branco: $votos_branco votos</p>
    <p>Votos Nulos: $votos_nulos votos</p>";

    if ($votos_alibaba > $votos_alcapone) {
        echo "<p>Candidato eleito: 83-Alibabá</p>";
    } elseif ($votos_alcapone > $votos_alibaba) {
        echo "<p>Candidato eleito: 93-Alcapone</p>";
    } else {
        echo "<p>Nenhum candidato eleito.</p>";
    }

    echo "</div>";
}
?>
</body>
</html>
