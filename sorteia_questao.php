<?php
session_start();
include("ConectaBanco.php");

if (isset($_SESSION['questao_atual']) && $_SESSION['status'] == 'acertou_questao') {
    $questao_id = -1;

    // Define a dificuldade com base na pergunta atual
    if ($_SESSION['pergunta'] <= 5) {
        $_SESSION['dificuldade'] = 'fácil';
    } elseif ($_SESSION['pergunta'] <= 10) {
        $_SESSION['dificuldade'] = 'médio';
    } elseif ($_SESSION['pergunta'] <= 15) {
        $_SESSION['dificuldade'] = 'difícil';
    }

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

    header("Location: area_jogo.php");
    exit;
}
?>
