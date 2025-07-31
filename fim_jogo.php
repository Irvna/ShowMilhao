<?php
    session_start();
    $pontuacao = $_SESSION['pontuacao'] ?? 0;
    //Se ele parar em meio ao jogo a pontuação é fechada com a pontuação que foi definida
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
            <?php
                if($_SESSION['pergunta'] > 16){
                    echo "<h2>Parabéns! Você venceu o Show do Milhão!</h2>";
                } else {
                    echo "<h2>Você parou em meio ao jogo ou errou uma questão!</h2>";
                }
            ?>
            <h3 id="pont">Sua pontuação: <?php echo $pontuacao; ?></h3>
            <a href='inicio_jogo.php' id="BotaoJogo">Jogar Novamente</a>
        </div>
    </div>
</body>