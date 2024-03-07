<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Cliente</title>
</head>
<body>
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
        Listar clientes
    </a>
    <br>
    <br>
    <form action="../model/pesquisanomecliente.php" method="post">
        <label>
            Digite o nome completo:
            <input type="text" name="cxpesquisacliente">
            <input type="submit" value="Pesquisar">
        </label>
    </form>
    <br>
    <br>
    <a href="../index.php">
        Voltar
    </a>

</body>
</html>