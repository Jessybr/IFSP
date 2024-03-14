<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Cliente</title>
    <link rel="stylesheet" href="../css/cadastro.css">
</head>
<body>
    <div class="container">
        <form action="../model/inserircliente.php" method="post">
            <label>
                Nome:
                <input type="text" name="cxnome">
            </label>
            <label>
                E-mail:
                <input type="text" name="cxemail">
            </label>
            <input type="submit" value="Gravar">
        </form><br>
        
        
        <a href="../model/listarcliente.php">
            Listar cliente
        </a>
        <a href="../index.php">
            Voltar
        </a>
    </div>

</body>
</html>