<?php
    session_start();
    if(isset($_SESSION["email"])){
        $email = $_SESSION["email"];
    }
    if(isset($_SESSION["senha"])){
        $senha = $_SESSION["senha"];
    }
    if(empty($email) OR empty($senha)){
        echo "Você não fez o login!";
        echo "<p><a href='login.html'>Página de login</a></p>";
        exit;
    }
    else{
        include "conecta_mysql.inc";
        $sql = "SELECT * FROM cliente WHERE email = '$email';";
        $res = mysqli_query($mysqli, $sql);

        // testa se não encontrou o e-mail no banco de dados
        if(mysqli_num_rows($res) != 1){
            unset($_SESSION["email"]);
            unset($_SESSION["senha"]);
            echo "Você não fez o login!";
            echo "<p><a href='login.html'>Página de login</a></p>";
            exit;
        }
        else{
            $cliente = mysqli_fetch_array($res);
            // testa se a senha está errada
            if($senha != $cliente["senha"]){
                unset($_SESSION["email"]);
                unset($_SESSION["senha"]);
                echo "Você não fez o login!";
                echo "<p><a href='login.html'>Página de login</a></p>";
                exit;
            }
        }
        mysqli_close($mysqli);
    }
?>