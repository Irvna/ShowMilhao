<?php 
session_start();

$_SESSION['pergunta']       = 1;
$_SESSION['pulos']          = 3;
$_SESSION['cartas']         = 1;
$_SESSION['categoria']      = "";
$_SESSION['perguntas_sorteadas'] = [];
$_SESSION['status'] = 'nova_pergunta';
$_SESSION['indice_questao_inicio'] = 1;


//conta quantas questões tem no banco. Ajustar para categorias.
$SQL = "SELECT COUNT(*) AS total FROM questoes ";
if(strlen($_SESSION['categoria']) >0){
    $cat = $_SESSION['categoria'];
    $SQL = $SQL . " WHERE categoria ='$cat'";
}
include_once 'ConectaBanco.php';
$bd = new ConectaBanco();

$res = $bd->query($SQL);
$res = mysqli_fetch_assoc($res);

$_SESSION['indice_questao_fim'] = $res['total'];


$_SESSION['questao_atual']  = rand(1, $res['total']);
array_push($_SESSION['perguntas_sorteadas'], $_SESSION['questao_atual'] );


header("location:area_jogo.php");
