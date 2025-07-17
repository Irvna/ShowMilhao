<?php
session_start();

if(isset($_SESSION['questao_atual']) && $_SESSION['status'] == 'acertou_questao'){
    $questao = -1;
    do{
        $questao = rand($_SESSION['indice_questao_inicio'], $_SESSION['indice_questao_fim']);
        $_SESSION['questao_atual'] = $questao;
        $_SESSION['status'] = "nova_pergunta";
        echo "$questao "; print_r($_SESSION['perguntas_sorteadas']);

    }
    while ( in_array($questao, $_SESSION['perguntas_sorteadas']));


    array_push($_SESSION['perguntas_sorteadas'], $questao);
    header("location:area_jogo.php");

}