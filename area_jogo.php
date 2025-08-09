<?php
session_start();
include("ConectaBanco.php");
include("./questao/questoes_valores.php");

//verifica qual foi o id sorteado
$id_questao = $_SESSION['questao_atual'] ?? null;

if (!$id_questao) {
    echo "Erro: Nenhuma questão sorteada.";
    exit;
}

//procura a questão sorteado no banco pelo seu id
$sql = "SELECT * FROM questoes_show_do_milhao WHERE id = $id_questao";
$result = $conexao->query($sql);
$questao = mysqli_fetch_assoc($result);

//se as carats nunca foram usadas usadas muda a cor das erradas
if (isset($_POST['eliminadas']) && $_SESSION['Usocartas'] == 1) {
    $_SESSION['Usocartas']++; //soma +1 e nunca mais entra nesse if
    //guarda as alternativas erradas, ou seja, as que são diferente da correta
    //separando-as por a, b, c e d
    $erradas = [];
    if ($questao['correta'] != 'A') {

        $erradas[] = 'A';
    }
    if ($questao['correta'] != 'B') {
        $erradas[] = 'B';
    }
    if ($questao['correta'] != 'C') {
        $erradas[] = 'C';
    }
    if ($questao['correta'] != 'D') {
        $erradas[] = 'D';
    }

    //quantidades a eliminar
    $quantidade = $_POST['eliminadas'];
    for ($i = 0; $i < $quantidade; $i++) {
        $alt = $erradas[$i];
        //marca a cor vermelha para as alternativas erradas
        if ($alt == 'A') {
            $corA = "red";
        }
        if ($alt == 'B') {
            $corB = "red";
        }
        if ($alt == 'C') {
            $corC = "red";
        }
        if ($alt == 'D') {
            $corD = "red";
        }
    }
} else {//se não as cores continuam amarelas
    $corA = "#FFD700";
    $corB = "#FFD700";
    $corC = "#FFD700";
    $corD = "#FFD700";
}
?>
<!--HTML-->

<head>
    <meta charset="UTF-8">
    <link rel="icon" href="img/2.png" type="image/x-icon">
    <title>Show do Milhão</title>
</head>
<?php
include "index_cabecalho.php";
?>

<div class="wrapper">
    <div id="questao">
        <h1>Questão <?= $_SESSION['pergunta'] ?> </h1><br>
        <h3>Dificuldade: <?= $questao['dificuldade'] ?></h3>
        <h3>Categoria: <?= $questao['categoria'] ?></h3>
        <p id="valor">Valor: <?= $questao_valor[$_SESSION['pergunta'] - 1] ?></p>
        <br>
        <h2><?= $questao['pergunta'] ?></h2>
        <br>
        <form action="processa_resposta.php" method="post" id="form-quest">
            <input type="hidden" name="id_questao" value="<?= $questao['id'] ?>">
            <button type="submit" name="resposta" value="A" class="opcao"
                style='background-color: <?= $corA ?>;'><?= $questao['alternativa_a'] ?></button><br>
            <button type="submit" name="resposta" value="B" class="opcao"
                style='background-color: <?= $corB ?>;'><?= $questao['alternativa_b'] ?></button><br>
            <button type="submit" name="resposta" value="C" class="opcao"
                style='background-color: <?= $corC ?>;'><?= $questao['alternativa_c'] ?></button><br>
            <button type="submit" name="resposta" value="D" class="opcao"
                style='background-color: <?= $corD ?>;'><?= $questao['alternativa_d'] ?></button>
        </form>
        <div class="ajudas">
            <a href="./ajudas/pular.php" class="card-ajuda">Pular</a>
            <a href="./ajudas/cartas.php" class="card-ajuda">Cartas</a>
        </div>
    </div>
    <a href="fim_jogo.php" id="Botaoparar">Parar aqui!</a>
</div>
</body>

<!-- CSS -->
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

    #questao {
        color: #FFD700;
        display: flex;
        align-items: center;
        padding: 40px;
        justify-content: center;
        flex-direction: column;
        margin-top: 50px;
        background-color: #141414;
        box-shadow: 1px 2px 15px rgba(255, 215, 0, 0.3);
        border-radius: 10px;
        margin-bottom: 30px;
    }

    #questao h3,
    #questao h1 {
        color: rgba(255, 215, 0, 0.5);
    }

    #questao h2 {
        margin-top: 40px;
    }

    #questao form {
        margin-top: 20px;
    }

    #questao #form-quest button {
        margin-bottom: 10px;
        padding: 8px;
        width: 680px;
        border-radius: 10px;
        background-color: #FFD700;
        cursor: pointer;
        font-size: 16px;
    }

    #questao #form-quest button:hover {
        transform: scale(1.1);
        box-shadow: 0px 5px 10px rgba(255, 215, 0, 0.3);
    }

    #valor {
        margin-top: 5px;
        color: #FFD700;
        font-size: 18px;
    }

    #questao .ajudas {
        display: flex;
        justify-content: space-between;
        width: 680px;
        margin-top: 15px;
        gap: 30px;
    }

    #questao .ajudas .card-ajuda {
        width: 650px;
        padding: 8px;
        border-radius: 10px;
        background-color: green;
        color: #fff;
        cursor: pointer;
        text-align: center;
        font-size: 16px;
        text-decoration: none;
    }

    #questao .ajudas .card-ajuda:hover {
        transform: scale(1.05);
        box-shadow: 0px 5px 10px rgba(0, 128, 0, 0.3);
    }

    #Botaoparar {
        background-color: #ff3300;
        border: solid 1px #fc662b;
        color: #ffffff;
        text-decoration: none;
        text-align: center;
        padding: 10px 40px;
        border-radius: 10px;
        font-size: 15px;
        display: inline-block;
    }

    #Botaoparar:hover {
        transform: scale(1.1);
    }
</style>