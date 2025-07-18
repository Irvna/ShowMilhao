<body style="margin: 0; font-family: sans-serif;">
    <style>
        #cabecalho {
            background-color: #111; /* fundo escuro */
            color: #FFD700;         /* amarelo dourado */
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

        #cabecalho .titulo a{
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

    <div id="cabecalho">
        <div class="titulo">
            <a href="inicio_jogo.php">🏆 Show do Milhão</a>
        </div>
        <div class="centro">
            <div>
                <div>Questão</div>
                <div><strong>0/0</strong></div>
            </div>
            <div>
                <div>Pontuação</div>
                <div><strong>0</strong></div>
            </div>
        </div>
        <div class="acoes">
            <a href="insere_questao.php">Adicionar Questão</a>
        </div>
    </div>

