<?php
session_start();

// Verifica se clicou em alguma carta
if (isset($_POST['usar_carta'])) {
    //as cartas são ilustrativas, então o valor é gerado aleatoriamente
    $cartaEscolhida = $_POST['usar_carta'];
    $eliminadas = rand(0, 3);
    $imgCarta = $_SESSION['url_cartaEscolhida'];

    /*if (isset($_POST['id_questao'])) {
        $q_id = intval(value: $_POST['id_questao']);

        // Recupera a resposta correta
        $sql = "SELECT correta FROM questoes_show_do_milhao WHERE id = $q_id";
        $res = $conexao->query($sql);
        $dados = mysqli_fetch_assoc($res);
    }*/

    $mensagem = "Você eliminou <strong>{$eliminadas}</strong> alternativa(s) errada(s)!";
}
?>

<!-- HTML -->

<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
</head>

<?php include "../index_cabecalho.php"; ?>

<div class="wrapper">
    <div class="mensagem">
        <img src="<?= $imgCarta ?>" alt="Carta escolhida">
        <h2><?= $mensagem ?></h2>
        <form action="../area_jogo.php" method="post">
            <button type="submit" name="eliminadas" id="BotaoCartas" value="<?= $eliminadas ?>">
                Continuar
            </button>
        </form>
    </div>
</div>

<style>
    * {
        margin: 0;
    }

    body {
        background-color: #111;
        text-align: center;
        font-family: sans-serif;
    }

    .wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    .mensagem {
        color: #FFD700;
        display: flex;
        align-items: center;
        padding: 40px;
        justify-content: center;
        flex-direction: column;
        margin-top: 100px;
        background-color: #141414;
        box-shadow: 1px 2px 15px rgba(255, 215, 0, 0.3);
        font-size: 24px;
        border-radius: 10px;
    }

    .mensagem img {
        margin-bottom: 25px;
        width: 200px;
    }

    #BotaoCartas{
        background-color: #FFD700;
        border: solid 1px #705f00;
        color: #111;
        text-decoration: none;
        text-align: center;
        padding: 10px 40px 10px 40px;
        margin-top: 20px;
        border-radius: 10px;
        font-size: 15px;
        cursor: pointer;
    }
</style>