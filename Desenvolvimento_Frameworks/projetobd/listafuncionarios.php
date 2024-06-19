<?php

require_once 'conexao.php';

echo "<h1>Consultando Funcionários</h1>";

$dado = '%a%';

$sql = "SELECT * FROM tabfuncionarios WHERE funNome LIKE '$dado' ORDER BY funNome";

$consulta = $conexao->prepare($sql);
$consulta->execute();

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        h1{
            margin: 20px;
        }

        img{
            width: 20vw;
        }

        body, table, form {
            width: 70%;
            text-align: center;
            margin: auto;
        }
    </style>
</head>
<body>
<table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">Senha</th>
      <th scope="col">Email</th>
      <th scope="col">Cargo</th>
      <th scope="col">Usuario</th>
      <th scope="col">Foto</th>
    </tr>
  </thead>

  <tbody>
    <?php
    while ($registro = $consulta->fetch(PDO::FETCH_ASSOC)) {
        echo "<tr>";
        foreach ($registro as $key => $value) {
            if ($key == "funFoto") {
                echo "<td>";
                echo "<img src='imagens/" . $value . ".webp' alt='Imagem'>";
                echo "</td>";
            } else {
                echo "<td>";
                echo $value;
                echo "</td>";
            }
        }
        echo "</tr>";
    }
    ?>
  </tbody>
</table>

<form action="formulario.php" method="post">
    <button type="submit" class="btn btn-primary">Voltar</button>
</form>
</body>
</html>
