<!--HTML-->

<head>
    <link rel="icon" href="img/1.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
</head>

<body>
    <div class="msg">
        <h1>Todos os campos devem ser preenchidos!</h1>
        <br>
        <br>
        <div>
            <a href="../questao/insere_questao.php" class="BotaoMsg">Voltar</a>
        </div>
    </div>
</body>

<!--CSS-->
<style>
    body {
        font-family: sans-serif;
        font-size: 0.9em;
        background-color: #111;
    }

    .msg {
        color: #FFD700;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        margin: 100px;
    }

    .BotaoMsg {
        background-color: #FFD700;
        color: #111;
        border: solid 1px #705f00;
        padding: 10px 30px 10px 30px;
        font-size: 18px;
        border-radius: 10px;
        text-decoration: none;
    }
</style>