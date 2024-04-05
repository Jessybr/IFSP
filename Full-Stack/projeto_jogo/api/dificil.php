<?php

session_start();

?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jogo da Memória</title>
    <link rel="stylesheet" href="Style/jogo.css">
</head>
<body>
<header>
    <h1>Jogo da memória</h1>
</header>
<?php

if (isset($_POST['acao']) && $_POST['acao'] == "Voltar") {
    session_destroy();
    session_start();
    unset($_GET['l']);
    unset($_GET['c']);
    header("Location: index.php");
}

if ((isset($_POST['acao']) && $_POST['acao'] == "Voltar") || (isset($_POST['acao']) && $_POST['acao'] == "Difícil")) {
    $dificil = [
        ["abelha", "hidreletrica", "onca", "gato", "solar", "macaco"],
        ["onca", "gato", "abelha", "macaco", "solar", "hidreletrica"]
    ];
    $_SESSION['dificil'] = $dificil;


    $_SESSION['final_tab'] = [
        [false, false, false, false, false, false],
        [false, false, false, false, false, false]
    ];

    $pontos = 10;
    $_SESSION['pontos'] = $pontos; 
}


// limita as jogadas apenas até 2
if (!isset($_SESSION['n_jogadas']) || $_SESSION['n_jogadas'] >= 2) {
    $_SESSION['n_jogadas'] = 1;
} else {
    $_SESSION['n_jogadas'] = $_SESSION['n_jogadas'] + 1;
}



// TRUE quando o usuário acerta a carta!
if (isset($_SESSION['n_jogadas']) && $_SESSION['n_jogadas'] == 2 &&  !isset($_POST['acao'])) {
    if (isset($_GET['l']) && isset($_GET['c']) && isset($_SESSION['l_antigo']) && isset($_SESSION['c_antigo']) &&  $_SESSION['dificil'][$_GET['l']][$_GET['c']] == $_SESSION['dificil'][$_SESSION['l_antigo']][$_SESSION['c_antigo']]) {
        $_SESSION['final_tab'][$_GET['l']][$_GET['c']] = true;
        $_SESSION['final_tab'][$_SESSION['l_antigo']][$_SESSION['c_antigo']] = true;
        $_SESSION['pontos'] += 5;
    }else {
        $_SESSION['pontos'] -= 2;
    }
}

// verifica se você já fez 1 jogada
if (
    isset($_GET["l"]) && isset($_GET["c"])
    && isset($_SESSION['n_jogadas']) && $_SESSION['n_jogadas'] == 1
) { // verifica se você já fez uma jogada
    $_SESSION['l_antigo'] = $_GET['l'];
    $_SESSION['c_antigo'] = $_GET['c'];
}

?>

<main id="primeiro">
<div id="principal">
<div class="pontos">
        <p>Modo: Difícil</p>
        <p>Pontos: <span id="pontos">
            <?php if(isset($_SESSION['pontos'])) {
                echo $_SESSION['pontos']; } ?>
        </span> </p>
    </div>

    <?php if (isset($_SESSION['final_tab'])) {  ?>

        <div class="tabuleiro" style="display: flex; justfy-content: center">
            <table class="table">

                <?php for ($l = 0; $l < 2; $l++) {    ?>
                    <tr> 
                        <?php for ($c = 0; $c < 6; $c++) {    ?>

                            <!-- mostra uma carta com conteúdo DA JOGADA ATUAL -->
                            <?php if (isset($_GET["l"]) && isset($_GET["c"]) && $_GET['l'] == $l && $_GET['c'] == $c) { ?>
                                <td>
                                    <!-- mostra uma CARTA VIRADA PARA cima -->
                                    <div class="cartas">
                                    <a href="?l=<?= $l ?>&c=<?= $c ?>">
                                        <img src="imag/<?= $_SESSION['dificil'][$l][$c] ?>.jpg ">
                                    </a>
                                    </div>
                                </td>
                                <!-- mostra uma carta com conteúdo da jogada ANTERIOR -->
                            <?php } else if (
                                $_SESSION['n_jogadas'] >= 1
                                && (isset($_SESSION['l_antigo']) && (isset($_SESSION['c_antigo'])))
                                && ($_SESSION['l_antigo'] == $l && $_SESSION['c_antigo'] == $c)
                            ) { ?>

                                <!-- mostra uma CARTA VIRADA PARA CIMA -->
                                <td>
                                <div class="cartas">
                                    <a href="?l=<?= $_SESSION['l_antigo'] ?>&c=<?= $_SESSION['c_antigo'] ?>">
                                        <img src="imag/<?= $_SESSION['dificil'][$_SESSION['l_antigo']][$_SESSION['c_antigo']] ?>.jpg ">
                                    </a>
                                    </div>
                                </td>
                            <?php }
                            else
                            if (isset($_SESSION['final_tab']) && $_SESSION['final_tab'][$l][$c] == true) {
                                ?>

                                <!-- mostra uma CARTA VIRADA PARA CIMA -->
                                <td>
                                <div class="cartas">
                                    <img src="imag/<?= $_SESSION['dificil'][$l][$c] ?>.jpg ">
                                    </div>
                                </td>

                            <?php } else { ?>

                                <!-- mostra uma CARTA VIRADA PARA BAIXO -->
                                <td>
                                <div class="cartas">
                                    <a href="?l=<?= $l ?>&c=<?= $c ?>">
                                        <img src="imag/verso.jpg ">
                                        </div>
                                </td>
                            <?php } ?>

                        <?php } ?>
                    </tr>
                <?php } ?>
            </table>

        </div>

    <?php } ?>

    <?php 
    $cont = 0;
    function Contagem($cont){
    for ($i = 0; $i < 2; $i++) {
        for ($j = 0; $j < 4; $j++) {
            if ($_SESSION['final_tab'][$i][$j] == true){
               $cont++;
            }
        }
    }
    return $cont;
    }
    $cont = Contagem($cont);
    if($cont == 8){
        echo "<div class='cont_pontos'>
        <h2>VOCÊ GANHOU!</h2>
        <div class='start'>
        <button><a href='index.php'>Voltar</a></button>
        </div>
        </div>";
    }
    ?>


    <div class="start">
            <form method="POST" action="index.php">
                <input id="voltar" type="hidden" name='acao' value="Voltar" />
                <input id="voltar" type="submit" value="Voltar"/>
            </form>
        </div>

    </div>

</div>
</main>

<script src="Script/jogoConfig.js"></script>
</body>
</html>