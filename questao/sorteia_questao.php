<?php
session_start();
include("../ConectaBanco.php");

//sorteia as questões entre fácil, médio e difícil. Exceto a questão do topa tudo
if (($_SESSION['status'] == 'acertou_questao' || $_SESSION['status'] == 'pulou_questao') && isset($_SESSION['questao_atual'])) {
    $questao_id = -1;

    //define a dificuldade com base na pergunta atual
    if ($_SESSION['pergunta'] <= 5) {
        $_SESSION['dificuldade'] = 'fácil';
    } elseif ($_SESSION['pergunta'] <= 10) {
        $_SESSION['dificuldade'] = 'médio';
    } elseif ($_SESSION['pergunta'] <= 15) {
        $_SESSION['dificuldade'] = 'difícil';
    }

    do {
        //Sorteia uma questão aleatória da dificuldade desejada
        $categoria = $_SESSION['categoria'];
        if ($_SESSION['categoria'] === "aleatorio") {
            $sql = "SELECT id, dificuldade FROM questoes_show_do_milhao 
                WHERE dificuldade = '{$_SESSION['dificuldade']}' 
                ORDER BY RAND() 
                 LIMIT 1";
        } else {
            $sql = "SELECT id, dificuldade FROM questoes_show_do_milhao 
                    WHERE dificuldade = '{$_SESSION['dificuldade']}' and categoria = '$categoria'
                    ORDER BY RAND() 
                    LIMIT 1";
        }
        $res = $conexao->query($sql);

        if ($res && $res->num_rows > 0) {
            $linha = $res->fetch_assoc();
            $questao_id = $linha['id'];
            $dificuldade_questao = $linha['dificuldade'];
        } else {
            //erro caso nenhuma questoa foi encontrada
            die("Nenhuma questão disponível para a dificuldade: {$_SESSION['dificuldade']}");
        }

        //Continua o loop se já foi sorteada ou dificuldade diferente
    } while (in_array($questao_id, $_SESSION['perguntas_sorteadas']) || $dificuldade_questao !== $_SESSION['dificuldade']);

    //Define a nova questão atual
    $_SESSION['questao_atual'] = $questao_id;
    $_SESSION['status'] = "nova_pergunta";
    $_SESSION['perguntas_sorteadas'][] = $questao_id;

    $base_url = "/ShowMilhao";

    header("Location: $base_url/area_jogo.php");
    exit;
}
?>