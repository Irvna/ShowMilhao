<?php
session_start();
?>

<!--HTML-->

<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
</head>
<?php
include "index_cabecalho.php";
?>

<body>
    <div class="mensagem">
        <?php if ($res['correta'] == $resposta): ?>
            <h2>Resposta correta! Você ganhou pontos!</h2>
            <h3 id="pont">Pontuação Total: <?= $pontuacao ?> pontos </h3>
            <script>
                setTimeout(() => {
                    window.location.href = 'sorteia_questao.php';
                }, 3000);
            </script>
        <?php else: ?>
            <div class="bloco">
                <h2>Resposta errada.</h2><br>
                <p>Resposta Correta: <strong><?= $resposta_certa ?></strong>
                <p>
                <p>Você perdeu, mas manteve metade do seus pontos!</p>
                <br>
                <h3 id="pont">Pontuação Total: <?= $pontuacao ?> pontos </h3>
                <a href="inicio_jogo.php">Jogar Novamente</a>
            </div>
        <?php endif; ?>
    </div>
</body>

<!--CSS-->
<style>
    * {
        margin: 0;
    }

    body {
        background-color: #111;
        text-align: center;
        font-family: sans-serif;
        font-size: 0.9em;
    }

    .wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    .mensagem {
        font-size: 24px;
        display: inline-block;
        align-items: center;
        justify-content: center;
    }

    .acerto {
        color: #51ff00ff;
        padding: 40px;
        margin-top: 100px;
        background-color: #141414;
        box-shadow: 1px 2px 15px rgba(255, 215, 0, 0.3);
        height: 40%;
        width: 40%;
        border-radius: 10px;
    }

    .erro {
        color: #df0000ff;
        padding: 40px;
        margin-top: 100px;
        background-color: #141414;
        box-shadow: 1px 2px 15px rgba(255, 215, 0, 0.3);
        height: 40%;
        width: 40%;
        border-radius: 10px;
    }

    #pont {
        color: #FFD700;
        padding: 20px;
        border: solid 1px;
        border-radius: 10px;
    }
</style>