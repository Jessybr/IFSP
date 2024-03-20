<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/filtrar.css">
</head>
<body>
        <div class="container">
            <form action="../model/pesquisanomecliente.php" method="post">
                <label>
                    Digite o nome completo:
                    <input type="text" name="cxpesquisacliente">
                    <input type="submit" value="Pesquisar">
                </label>
            </form>
            <a href="../view/telamenu.php">
            Voltar
            </a>
        </div>
</body>
</html>