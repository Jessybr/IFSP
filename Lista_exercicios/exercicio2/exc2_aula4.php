<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exercício 2</title>
    <link rel="stylesheet" href="exc2_aula4.css">
</head>
<body>
    <header>
        <h1>Compra de ingressos do Clube de Festa</h1>
    </header>
    <form action="exc2_aula4.php" method="get" class="formu">
        <div class="dados">
            <label>Nome:
                <input type="text" name="nome" id="nome" placeholder="Seu nome" required>
            </label>
            <label>Idade:
                <input type="number" name="idade" min="1" max="100" required>
            </label><br>
            <label>É estudante do IFSP?
                <select name="estudante" required>
                    <option value="" selected disabled>Escolha...</option>
                    <option value="sim">Sim</option>
                    <option value="nao">Não</option>
                </select>
            </label>
        </div><br>
        <div class="ingressos">
            <label>Entrada padrão: R$20,00
                <input type="number" name="entr_pd" min="1" max="100" >
            </label><br>
            <label>Entrada VIP: R$50,00
                <input type="number" name="entr_vp" min="1" max="100">
            </label><br>
            <p>*Estudantes do IFSP tem 50% de desconto na compra.</p>
            
        </div><br><br>
        <div class="botao">
            <input type="submit" value="Comprar">
            <input type="reset" value="Limpar">
        </div>
    </form>
    
    <?php 
$idade = isset($_GET["idade"]) ? $_GET["idade"] : 0;
$estudante = isset($_GET["estudante"]) ? $_GET["estudante"] : 0;
$nome = isset($_GET["nome"]) ? $_GET["nome"] : 0;
$idade_cb = 0;
$ing_pd = 20;
$ing_vp = 50;
$entr_pd = isset($_GET["entr_pd"]) ? $_GET["entr_pd"] : 0;
$entr_vp = isset($_GET["entr_vp"]) ? $_GET["entr_vp"] : 0;

if($idade >= 18){
    if($estudante === "nao"){
        if($entr_pd >= 1){
            $entr_pd *= $ing_pd;
            echo "<div class='resp'>
                <p>Olá $nome </p><p>Total a pagar: R$$entr_pd</p>
            </div>";
        }elseif($entr_vp >= 1){
            $entr_vp *= $ing_vp;
            echo "<div class='resp'>
                <p>Olá $nome </p><p>Total a pagar: R$$entr_vp</p>
            </div>";
        }
        
    }else{
        if($entr_pd >= 1){
            $entr_pd = ($entr_pd * $ing_pd) * 0.50;
            echo "<div class='resp'>
                <p>Olá $nome </p><p>Total a pagar: R$$entr_pd</p>
            </div>";
        }elseif($entr_vp >= 1){
            $entr_vp = ($entr_vp * $ing_vp) * 0.50;
            echo "<div class='resp'>
                <p>Olá $nome </p><p>Total a pagar: R$$entr_vp</p>
            </div>";
        }
    }
}else{
    $idade_cb = 18 - $idade;
    echo "<div class='resp'>Compra não realizada! <br> Você ainda não tem idade para participar do clube $nome, faltam ainda $idade_cb anos para poder ter acesso.</div>";
}
?>


</body>
</html>