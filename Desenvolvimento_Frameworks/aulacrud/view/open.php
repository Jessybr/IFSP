<?php 
    include_once '../factory/conexao.php';
    session_start();
    $login= $_POST['cxemail'];
    $senha= $_POST['cxsenha'];

    $sql = "select *from tbusuario where email = '$login' and senha = '$senha'";
    $result = mysqli_query($conn,$sql);
    if(mysqli_num_rows($result) > 0){
        $_SESSION['login'] = $login;
        $_SESSION['senha'] = $senha;
        echo "
            <script>
                alert('Seja bem vindo!');
                window.location.href='telamenu.php';
            </script>
        ";
    }else{
        unset($_SESSION['login']);
        unset($_SESSION['senha']);
        echo "
            <script>
                alert('Email ou senha incorretos!');
                window.location.href='../index.php';
            </script>
        ";
    }
?>