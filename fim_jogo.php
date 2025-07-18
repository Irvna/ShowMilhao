<?php
    session_start();
    $pontuacao = $_SESSION['pontuacao'] ?? 0;
?>
<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
    <link rel="stylesheet" href="#">
</head>
    <?php 
        include "index_cabecalho.php"; 
    ?>
<body>
    <h1>Fim do Jogo!</h1>
    <h2>Parabéns! Você venceu o Show do Milhão!</h2>
    <p>Sua pontuação: <?php echo $pontuacao; ?></p>
    <a href="inicio_jogo.php">Jogar Novamente</a>
</body>