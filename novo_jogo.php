<?php
session_start();
include("ConectaBanco.php");

//inicia um novo jogos com variaveis novas e inicializadas
$_SESSION['pergunta'] = 1;  //começa na primeira pergunta
$_SESSION['pulos'] = 3; //número de pulos disponiveis
$_SESSION['cartas'] = false; //cartas(a, 1, 2, 3)
$_SESSION['Usocartas'] = 0; //cartas usadas
$_SESSION['pontuacao'] = 0; //pontuação inicial
$_SESSION['perguntas_sorteadas'] = []; //array de perguntas já sorteadas
$_SESSION['status'] = 'nova_pergunta'; //status do jogo
$_SESSION['indice_questao_inicio'] = 1; //sempre começa na primeira questão
$_SESSION['dificuldade'] = 'fácil'; //começa com questões fáceis

$_SESSION['categoria'] = $_POST['categoria-escolhida'];

//conta quantas questões tem no banco. Ajustar para categorias.
$SQL = "SELECT COUNT(*) AS total FROM questoes_show_do_milhao";
if (strlen($_SESSION['categoria']) > 0) {
    $cat = $_SESSION['categoria'];
    $SQL = $SQL . " WHERE categoria ='$cat'";
}

$res = $conexao->query($SQL);
$res = mysqli_fetch_assoc($res);

$_SESSION['indice_questao_fim'] = $res['total'];

if ($res['total'] > 0) {
    //sorteia a questão de 1 a total de questões
    //Sorteia uma questão aleatória da dificuldade desejada
    //o select retorna apenas um id e a dificuldade de maneira aleatória
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
    $res2 = $conexao->query($sql); //executa a query
    $linha = $res2->fetch_assoc(); //pega o resultado
    $questao_id = $linha['id']; //id da questão sorteada
    $_SESSION['questao_atual'] = $questao_id; //define a questão atual
    //armazena a questão atual no array de perguntas sorteadas
    array_push($_SESSION['perguntas_sorteadas'], $_SESSION['questao_atual']); 
}
//retorna para a area de jogo
header("location:area_jogo.php");
exit;
?>