<?php
    // Recebe os campos do formulário
    $email = $_POST["email"];
    $senha = $_POST["senha"];

    // Realiza a consulta no banco de dados
    include "conecta_mysql.inc";
    $sql = "SELECT * FROM cliente WHERE email = '$email';";
    $res = mysqli_query($mysqli, $sql);

    //testa se não encontrou o e-mail
    if(mysqli_num_rows($res) != 1){
        echo "E-mail inválido!";
        echo "<p><a href='login.html'>Página de login</a></p>";
    }
    else{
        $cliente = mysqli_fetch_array($res);
        // testa se a senha está errada
        if(!password_verify($senha, $cliente['senha'])){
            echo "Senha inválida!";
            echo "<p><a href='login.html'>Página de login</a></p>";
        }
        else{
            // Abre a sessão e registra as variáveis do login
            session_start();
            $_SESSION["email"] = $email;
            $_SESSION["senha"] = $cliente['senha'];
            // direciona para a página inicial
            header("Location: form_extra.php");
        }
    }
?>