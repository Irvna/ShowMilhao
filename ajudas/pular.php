<?php
session_start();
//se a pulos disponiveis o status é modificado e as variaveis alteradas para a proxima questao
//não pode pular a questao topa tudo
if (isset($_SESSION['pulos']) && $_SESSION['pulos'] >= 1 && $_SESSION['pergunta'] <= 15) {
    $_SESSION['pulos'] -= 1;
    $_SESSION['status'] = 'pulou_questao';
    $_SESSION['pergunta'] += 1;
    $_SESSION['mensagem_pulo'] = "Pulou questão!";
    $aux = 1;
} else { //caso não ouver mais pulos a mensagem é diferente o botão leva diretamente para a área jogo novamente
    $aux = 0;
    $_SESSION['mensagem_pulo'] = "Você NÃO tem mais pulos disponíveis.";
}
?>
<!--HTML-->
<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
</head>
<?php
include "../index_cabecalho.php";
?>
<div class="wrapper">
    <div id="bloco">
        <h1><?= $_SESSION['mensagem_pulo'] ?></h1><br>
        <img src="../img/coelho.png" alt="coelho pulando">
        <h3 id="pont">Sua pontuação: <?php echo $_SESSION["pontuacao"]; ?></h3>
        <?php
        if ($aux == 0) {//se não possuir mais pulos retorna para a area do jogo
            echo "<a href='../area_jogo.php' id='BotaoJogo'>Voltar</a>";
        } elseif ($aux == 1) {//se possuir pulos vai para a proxima questao
            echo "<a href='../questao/sorteia_questao.php' id='BotaoJogo'>Continuar</a>";
        }
        ?>
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
    }

    #bloco img {
        width: 200px;
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