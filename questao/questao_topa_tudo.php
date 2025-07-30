<?php
//neste arquivo ele sorteia 1 questão topa tudo e retorna ao usuario
session_start();
include("../ConectaBanco.php");
include("./questoes_valores.php");

if (isset($_SESSION['questao_atual']) && $_SESSION['status'] == 'acertou_questao') {
    $questao_id = -1;
    $_SESSION['dificuldade'] = 'topatudo';


    do {
         // Sorteia uma questão aleatória da dificuldade desejada
        $sql = "SELECT id, dificuldade FROM questoes_show_do_milhao 
                WHERE dificuldade = '{$_SESSION['dificuldade']}' 
                ORDER BY RAND() 
                 LIMIT 1";
        $res = $conexao->query($sql);

        if ($res && $res->num_rows > 0) {
            $linha = $res->fetch_assoc();
            $questao_id = $linha['id'];
            $dificuldade_questao = $linha['dificuldade'];
        } else {
            // Nenhuma questão encontrada
            die("Nenhuma questão disponível para a dificuldade: {$_SESSION['dificuldade']}");
        }

        // Continua o loop se já foi sorteada ou dificuldade diferente (extra segurança)
    } while (in_array($questao_id, $_SESSION['perguntas_sorteadas']) || $dificuldade_questao !== $_SESSION['dificuldade']);

    // Define a nova questão atual
    $_SESSION['questao_atual'] = $questao_id;
    $_SESSION['status'] = "nova_pergunta";
    $_SESSION['perguntas_sorteadas'][] = $questao_id;
}

if (isset($_SESSION['questao_atual'])) {
    $id = $_SESSION['questao_atual'];
    $sql_questao = "SELECT * FROM questoes_show_do_milhao WHERE id = $id";
    $res_questao = $conexao->query($sql_questao) or die("Erro ao buscar questão: " . $conexao->error);
    $questao = $res_questao->fetch_assoc();
} else {
    die("Questão não definida.");
}

?>


<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
    <link rel="stylesheet" href="../css/style_questoes.css">
</head>

<?php include "../index_cabecalho.php"; ?>

<div class="wrapper">
    <div id="questao">
        <h1>TOPA TUDO OU NADA!</h1><br>
        <p id="valor">Valor Máximo: <?=$questao_valor[15]?></p>
        <br>
        <h2><?= $questao['pergunta'] ?></h2>
        <br>
        <form action="../processa_resposta.php" method="post">
            <input type="hidden" name="id_questao" value="<?= $questao['id'] ?>">
            <input type="hidden" name="topa_tudo" value="1">
            <button type="submit" name="resposta" value="A" class="opcao"><?= $questao['alternativa_a'] ?></button><br>
            <button type="submit" name="resposta" value="B" class="opcao"><?= $questao['alternativa_b'] ?></button><br>
            <button type="submit" name="resposta" value="C" class="opcao"><?= $questao['alternativa_c'] ?></button><br>
            <button type="submit" name="resposta" value="D" class="opcao"><?= $questao['alternativa_d'] ?></button>
        </form>
    </div>
</div>
</body>
