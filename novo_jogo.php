<?php 
    session_start();
    include("ConectaBanco.php");

    $_SESSION['pergunta']       = 15;
    $_SESSION['pulos']          = 0;
    $_SESSION['cartas']         = 1;
    $_SESSION['categoria']      = "";
    $_SESSION['pontuacao'] = 0;
    $_SESSION['perguntas_sorteadas'] = [];
    $_SESSION['status'] = 'nova_pergunta';
    $_SESSION['indice_questao_inicio'] = 1;
    $_SESSION['dificuldade'] = 'fácil';


    //conta quantas questões tem no banco. Ajustar para categorias.
    $SQL = "SELECT COUNT(*) AS total FROM questoes_show_do_milhao";
    if(strlen($_SESSION['categoria']) >0){
        $cat = $_SESSION['categoria'];
        $SQL = $SQL . " WHERE categoria ='$cat'";
    }

    $res = $conexao->query($SQL);
    $res = mysqli_fetch_assoc($res);

    $_SESSION['indice_questao_fim'] = $res['total'];

    if ($res['total'] > 0) {
        //sorteia a questão de 1 a total de questões
        do{
            $aux = rand(1, $res['total']);
            $SQL = "SELECT dificuldade FROM questoes_show_do_milhao WHERE id = $aux";
            $res2 = $conexao->query($SQL);
            $dific = mysqli_fetch_assoc($res2);

        }while($dific['dificuldade'] !== $_SESSION['dificuldade']);

        $_SESSION['questao_atual'] = $aux;
        array_push($_SESSION['perguntas_sorteadas'], $_SESSION['questao_atual'] );
    }

    header("location:area_jogo.php");
    exit;
?>
