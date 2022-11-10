<?php
    include "envia_email.php";

    $nome = "Fulano de tal";
    $data = "10/11/2022";
    $email = "clecio.santos.1@cp2.edu.br";

    $assunto = "Exemplo de e-mail pelo PHP";

    $mensagem = "Dados cadastros:<br>";
    $mensagem .= "<br><b>Nome:</b> $nome";
    $mensagem .= "<br><b>Data:</b> $data";
    $mensagem .= "<br><b>E-mail:</b> $email";

    if(envia_email($email, $assunto, $mensagem)){
        echo "E-mail enviado com sucesso!";
    }
    else{
        echo "Falha no envio do e-mail";
    }
?>