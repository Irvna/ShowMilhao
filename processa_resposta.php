<?php
session_start();
include("ConectaBanco.php");
include("./questao/questoes_valores.php");

//Verifica se o formulário foi enviado
if (isset($_POST['resposta'])) {
    $q_id = $_POST['id_questao'];
    $resposta = $_POST['resposta'];

    //Recupera a resposta correta da questão
    $sql = "SELECT correta FROM questoes_show_do_milhao WHERE id = $q_id";
    $res = $conexao->query($sql);
    $dados = mysqli_fetch_assoc($res);

    $correta = $dados['correta'] ?? '';
    $resposta_certa = ($correta === $resposta);
    $_SESSION['correta'] = $correta;

    if ($resposta_certa) {
        $_SESSION['pergunta'] += 1;
        if($_SESSION['pontuacao'] == 0){//se é a primeira questão, não necessita incrementar o 0
            $_SESSION['pontuacao'] = $questao_valor[$_SESSION['pergunta'] - 2];
        }else{
            $_SESSION['pontuacao'] += $questao_valor[$_SESSION['pergunta'] - 2];
        }
        $_SESSION['status'] = "acertou_questao";
    } else {
        if ($_SESSION['pontuacao'] > 0) {
            $_SESSION['pontuacao'] = floor($_SESSION['pontuacao'] / 2);
        }
        $_SESSION['status'] = "errou_questao";
    }

    $pontuacao = $_SESSION['pontuacao'];
}
?>

<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
    <style>
        * {
            margin: 0; 
        }

        body{
            background-color: #111;
            text-align: center;
            font-family: sans-serif;
        }

        .wrapper{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }

        .mensagem{
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

        .acerto, .erro{
            padding: 40px;
            margin-top: 100px;
            background-color: #141414;
            box-shadow: 1px 2px 15px rgba(255, 215, 0, 0.3);
            width: 40%;
            border-radius: 10px;
        }

        .acerto{ 
            color: #51ff00ff;
        }

        .erro{
            color: #df0000ff;
        }

        h2{
            margin-bottom: 25px;
        }

        #pont{
            color: #FFD700;
            padding: 20px;
            margin-top: 40px;
            margin-bottom: 40px;
            border: solid 1px;
            border-radius: 10px;
        }

        #botao{
            background-color: #FFD700; 
            border: solid 1px rgba(255, 215, 0);
            color: #000000ff;
            text-decoration: none;
            text-align: center;
            padding: 10px 40px 10px 40px;
            border-radius: 10px;
            font-size: 15px;
            margin: 10px;   
        }
    </style>
</head>

<?php include "index_cabecalho.php"; ?>

<div class="wrapper">
    <div class="mensagem <?= $resposta_certa ? 'acerto' : 'erro' ?>">
        <?php if ($resposta_certa): ?>
            <h2>Resposta correta! Você ganhou pontos!</h2>
            <h3 id="pont">Pontuação Total Atual: <?= $pontuacao ?> pontos</h3>
            <?php
                //se a perunta é menor ou igual a 15 uma nova questão é sorteada
                if($_SESSION['pergunta'] <= 15){
                    echo "<script>
                        setTimeout(() => {
                            window.location.href = './questao/sorteia_questao.php';
                        }, 3000);
                    </script>";
                }elseif($_SESSION['pergunta'] == 16){ //se for a 16º questao o programa pergunta se deseja ver a 
                    //questao topa tudo ou finalizar ali
                    echo "<a href='./questao/questao_topa_tudo.php' id='botao'>Topa Tudo</a>";
                    echo "<a href='fim_jogo.php' id='botao'>Parar aqui!</a>";
                }else{//se acerto a questao topa tudo o jogo foi finalizado
                    header("Location: ./fim_jogo.php");
                }
            ?>
        <?php else: ?>
            <h2>Resposta errada.</h2>
            <p>Resposta correta: <strong><?= $correta ?></strong></p>
            <p>Você perdeu, mas manteve metade dos seus pontos!</p>
            <script>
                setTimeout(() => {
                    window.location.href = './fim_jogo.php';
                }, 3000);
            </script>
            
        <?php endif; ?>
    </div>
</div>
</body>
