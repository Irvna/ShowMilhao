<?php
if (session_status() === PHP_SESSION_NONE) {//verifica se possui uma secao iniciada ou nao
    session_start();
}

//mostra quantas cartas podem ser usadas
//0 - usou todas as chances
//1 - ainda pode usar uma carta
if ($_SESSION['Usocartas'] >= 1) {
    $usoDasCartas = 0;
} else {
    $usoDasCartas = 1;
}
?>
<!--HTML-->

<body>
    <div id="cabecalho">
        <?php $base_url = "/ShowMilhao"; ?>
        <div class="titulo">
            <a href="<?php echo $base_url; ?>/inicio_jogo.php">🏆 Show do Milhão</a>
        </div>
        <div class="centro">
            <div>
                <div>Questão</div>
                <div>
                    <p><strong><?php echo $_SESSION['pergunta'] - 1; ?></strong>
                    <p>
                </div>
            </div>
            <div>
                <div>Pontuação</div>
                <div>
                    <p><strong><?php echo $_SESSION['pontuacao']; ?></strong>
                    <p>
                </div>
            </div>
            <div>
                <div>Pulos</div>
                <div>
                    <p><strong><?php echo $_SESSION['pulos']; ?></strong>
                    <p>
                </div>
            </div>
            <div>
                <div>Cartas</div>
                <div>
                    <p><strong><?php echo $usoDasCartas ?></strong>
                    <p>
                </div>
            </div>
        </div>
        <div class="acoes">
            <a href="./questao/insere_questao.php">Adicionar Questão</a>
        </div>
    </div>
    <!--CSS-->
    <style>
        body {
            margin: 0;
            font-family: sans-serif;
        }

        #cabecalho {
            background-color: #111;
            /* fundo escuro */
            color: #FFD700;
            /* amarelo dourado */
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 30px;
            height: 60px;
            box-shadow: 1px 2px 15px rgba(255, 215, 0, 0.5);
        }

        #cabecalho .titulo {
            font-size: 20px;
            font-weight: bold;
        }

        #cabecalho .titulo a {
            text-decoration: none;
            color: #FFD700;
        }

        #cabecalho .centro {
            display: flex;
            gap: 40px;
            font-size: 14px;
        }

        #cabecalho .centro div {
            text-align: center;
        }

        #cabecalho .acoes {
            display: flex;
            gap: 20px;
            font-size: 14px;
        }

        #cabecalho .acoes a {
            text-decoration: none;
            color: #FFD700;
            font-weight: bold;
        }
    </style>