<?php
session_start();
$pontuacao = $_SESSION['pontuacao'] ?? 0;
//Se ele parar em meio ao jogo a pontuação é fechada com a pontuação que foi definida
?>
<!--HTML-->

<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
</head>
<?php
include "index_cabecalho.php";
?>
<div class="wrapper">
    <div id="bloco">
        <?php
        if ($_SESSION['pergunta'] > 16) {
            echo "<img src='./img/trofeu.png' alt='trofeu' id='trofeu'/>";
            echo "<h2>Parabéns! Você venceu o Show do Milhão!</h2>";
        } elseif ($_SESSION['pergunta'] == 16) {
            echo "<img src='./img/fim.png' alt='Game Over'/>";
            echo "<h2>Você perdeu o TOPA TUDO. Tente Novamente!</h2>";
        } else {
            echo "<img src='./img/fim.png' alt='Game Over'/>";
            echo "<h2>Você parou em meio ao jogo ou errou uma questão. Tente Novamente!</h2>";
        }
        ?>
        <h3 id="pont">Sua pontuação: <?php echo $pontuacao; ?></h3>
        <a href='inicio_jogo.php' id="BotaoJogo">Jogar Novamente</a>
    </div>
</div>
</body>

<!--CSS-->
<style>
    * {
        margin: 0;
    }

    body {
        font-family: sans-serif;
        font-size: 0.9em;
        background-color: #111;
    }

    .wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    #bloco {
        color: #FFD700;
        display: flex;
        align-items: center;
        padding: 30px;
        justify-content: center;
        flex-direction: column;
        margin-top: 100px;
        margin-bottom: 50px;
        background-color: #141414;
        box-shadow: 1px 2px 15px rgba(255, 215, 0, 0.3);
        width: 40%;
        border-radius: 10px;
        text-align: center;
    }

    #bloco #trofeu {
        margin-bottom: 25px;
    }

    #BotaoJogo {
        background-color: #FFD700;
        border: solid 1px #705f00;
        color: #111;
        text-decoration: none;
        text-align: center;
        padding: 10px 40px 10px 40px;
        margin: 20px;
        border-radius: 10px;
        font-size: 15px;
    }

    #pont {
        color: #FFD700;
        padding: 20px;
        margin-top: 40px;
        margin-bottom: 40px;
        border: solid 1px;
        border-radius: 10px;
    }

    #bloco h1 {
        padding: 5px;
        color: #ffd90088;
    }
</style>