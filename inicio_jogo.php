<!--HTML-->

<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
</head>
<?php
include "index_cabecalho.php";
?>
<div class="wrapper">
    <div id="bloco_inicio">
        <img src="img/2.png" alt="Logo show do milhao">
        <h1>Show do Milhão</h1>
        <br>
        <p>Teste seus conhecimentos e tente chegar ao milhão</p><br><br>
        <a href='novo_jogo.php' id="BotaoJogo">Iniciar Jogo</a>
    </div>
</div>
</body><!--A tag body é aberta no cabeçalho-->

<!--CSS-->
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

    #bloco_inicio {
        color: #FFD700;
        display: flex;
        align-items: center;
        padding: 20px;
        justify-content: center;
        flex-direction: column;
        margin-top: 100px;
        margin-bottom: 50px;
        background-color: #141414;
        box-shadow: 1px 2px 15px rgba(255, 215, 0, 0.3);
        width: 40%;
        border-radius: 10px;
    }

    #bloco_inicio img {
        width: 300px;
    }

    #bloco_inicio p {
        padding: 5px;
        font-size: 18px;
        color: #ffd90088;
    }

    #bloco_inicio a {
        background-color: #FFD700;
        color: #111;
        border: solid 1px #ffd90063;
        padding: 20px 30px 20px 30px;
        font-size: 18px;
        border-radius: 10px;
        text-align: center;
        text-decoration: none;
    }

    #bloco_inicio a:hover{
        transform: scale(1.1);
        box-shadow: 0px 5px 10px rgba(255, 215, 0, 0.3);
    }
</style>