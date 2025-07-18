<?php
    session_start();
    include("ConectaBanco.php");
    include("questoes_valores.php");

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
?>

<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
    <link rel="stylesheet" href="./css/style_questoes.css">
</head>
    <?php
        include "index_cabecalho.php";
    ?>
<div class="wrapper">
    <div id="questao">
        <h1>Questão <?= $_SESSION['pergunta'] ?> </h1><br>
        <h3>Dificuldade: <?= $questao['dificuldade'] ?></h3>
        <h3>Categoria: <?= $questao['categoria'] ?></h3>
        <p id="valor">Valor: <?=$questao_valor[$_SESSION['pergunta']-1]?></p>
        <br>
        <h2><?= $questao['pergunta'] ?></h2>
        <br>
        <form action="processa_resposta.php" method="post">
            <input type="hidden" name="id_questao" value="<?= $questao['id'] ?>">
            <button type="submit" name="resposta" value="A" class="opcao"><?= $questao['alternativa_a'] ?></button><br>
            <button type="submit" name="resposta" value="B" class="opcao"><?= $questao['alternativa_b'] ?></button><br>
            <button type="submit" name="resposta" value="C" class="opcao"><?= $questao['alternativa_c'] ?></button><br>
            <button type="submit" name="resposta" value="D" class="opcao"><?= $questao['alternativa_d'] ?></button>
        </form>
    </div>
    <a href='#' id="BotaoJogo">Parar aqui!</a>
</div>
</body>
