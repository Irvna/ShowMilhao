<?php
    session_start();
    $pontuacao = $_SESSION['pontuacao'] ?? 0;
?>
<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
    <link rel="stylesheet" href="./css/style_fimJogo.css">
</head>
    <?php 
        include "index_cabecalho.php"; 
    ?>
<body>
    <div class="wrapper">
        <div id="bloco">
            <h1>Fim do Jogo!</h1><br>
            <h2>Parabéns! Você venceu o Show do Milhão!</h2>
            <h3 id="pont">Sua pontuação: <?php echo $pontuacao; ?></h3>
            <a href='inicio_jogo.php' id="BotaoJogo">Jogar Novamente</a>
        </div>
    </div>
</body>