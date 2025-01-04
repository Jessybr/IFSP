<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <?php
        include_once "../control/pessoa.php";
    ?>
</head>
<body>
    
    <?php 
        $aluno1 = new Pessoa;
        $aluno1->nome = "Jéssica";
        $aluno1->idade = 19;
        $aluno1->email = "jessica@email.com";
        $aluno1->fone = "(11)98398493";
        $aluno1->cadastroaluno();

        $aluno2 = new Pessoa;
        $aluno2->nome = "Guilherme";
        $aluno2->idade = 19;
        $aluno2->email = "guilherme@email.com";
        $aluno2->fone = "(11)98353455";
        $aluno2->cadastroaluno();

        $professor1 = new Pessoa;
        $professor1->nome = "João";
        $professor1->idade = 19;
        $professor1->email = "joao@email.com";
        $professor1->fone = "(11)986566455";
        $professor1->cadastroprofessor();

        $professor2 = new Pessoa;
        $professor2->nome = "Angela";
        $professor2->idade = 19;
        $professor2->email = "angela@email.com";
        $professor2->fone = "(11)95444432";
        $professor2->cadastroprofessor();

        $dependente1 = new Pessoa;
        $dependente1->nome = "Faber";
        $dependente1->idade = 19;
        $dependente1->email = "faber@email.com";
        $dependente1->fone = "(11)98777777";
        $dependente1->cadastrodependente();

        $dependente2 = new Pessoa;
        $dependente2->nome = "Enzo";
        $dependente2->idade = 19;
        $dependente2->email = "enzo@email.com";
        $dependente2->fone = "(11)92112222";
        $dependente2->cadastrodependente();
    ?>
</body>
</html>