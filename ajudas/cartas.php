<?php
session_start();
$_SESSION['url_cartaEscolhida'] = ''; //enviar a url da imagem
// Verifica se o jogador já usou a ajuda das cartas, true = usou, false = não usou
if (isset($_SESSION['cartas']) && $_SESSION['cartas'] === true) {
    $mensagem = 'Você já usou a ajuda das cartas!';
    $mostrarResultado = true;
} else {
    $mostrarResultado = false;
    $_SESSION['Usocartas'] += 1;
    $_SESSION['cartas'] = true;
}
?>
<!-- HTML -->
<head>
    <title>Show do Milhão</title>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
</head>
<?php include "../index_cabecalho.php"; ?>
<div class="wrapper">
    <div id="bloco">
        <h1>Ajuda das Cartas</h1>

        <?php if (!$mostrarResultado): ?>
            <p>Escolha uma das cartas abaixo para revelar quantas respostas erradas serão eliminadas:</p>
            <form method="POST" action="processa_cartas.php">
                <div class="cartas">
                    <button type="submit" name="usar_carta" value="0">
                        <img src="../img/coringa.png" alt="Coringa">
                        <?php $_SESSION['url_cartaEscolhida'] = '../img/coringa.png';?>
                    </button>
                    <button type="submit" name="usar_carta" value="1">
                        <img src="../img/as.png" alt="Carta A">
                        <?php $_SESSION['url_cartaEscolhida'] = '../img/as.png';?>
                    </button>
                    <button type="submit" name="usar_carta" value="2">
                        <img src="../img/2copas.png" alt="Carta 2">
                        <?php $_SESSION['url_cartaEscolhida'] = '../img/2copas.png';?>
                    </button>
                    <button type="submit" name="usar_carta" value="3">
                        <img src="../img/3copas.png" alt="Carta 3">
                        <?php $_SESSION['url_cartaEscolhida'] = '../img/3copas.png';?>
                    </button>
                </div>
            </form>
        <?php else: ?>
            <div class="resultado">
                <h2><?= $mensagem ?></h2>
                <a href="../area_jogo.php" id="BotaoCarta">Voltar</a>
            </div>
        <?php endif; ?>
    </div>
</div>

<!-- CSS -->
<style>
    * {
        margin: 0;
    }

    body {
        font-family: sans-serif;
        background-color: #111;
        color: #FFD700;
    }

    .wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    #bloco {
        background-color: #141414;
        box-shadow: 1px 2px 15px rgba(255, 215, 0, 0.3);
        padding: 30px;
        border-radius: 10px;
        text-align: center;
        margin-top: 100px;
        margin-bottom: 50px;
    }

    h1 {
        margin-bottom: 15px;
        color: #ffd700cc;
    }

    .cartas {
        display: flex;
        justify-content: space-around;
        flex-wrap: wrap;
        margin-top: 30px;
    }

    .cartas button {
        background: none;
        border: none;
        margin: 10px;
        cursor: pointer;
    }

    .cartas img {
        width: 300px;
        transition: transform 0.3s;
    }

    .cartas img:hover {
        transform: scale(1.1);
    }

    .resultado a {
        background-color: #FFD700;
        border: solid 1px #705f00;
        color: #111;
        text-decoration: none;
        padding: 10px 30px;
        border-radius: 10px;
        font-size: 16px;
        margin-top: 250px;
    }

    .resultado h2{
        margin-bottom: 30px;
    }
</style>
