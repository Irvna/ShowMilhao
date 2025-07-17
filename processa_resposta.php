<?php
    session_start();
    
    if(isset($_POST['formulario'])){
        $q_id = $_POST['id_questao'];
        $resposta = $_POST['resposta'];
        $SQL = "SELECT * FROM questoes WHERE id='$q_id'";
        require_once 'ConectaBanco.php';
        $bd = new ConectaBanco();
        $res = $bd->query($SQL);
        $res = mysqli_fetch_assoc($res);

        if($res['correta'] == $resposta){
            echo "Acertou <br>";
            $_SESSION['pergunta'] = $_SESSION['pergunta']  + 1;
            $_SESSION['status'] = "acertou_questao";
            header("location:sorteia_questao.php");
        }
        else{
            echo "Errou";
        }
        
    }
