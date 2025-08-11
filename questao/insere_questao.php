<?php
//conecta no banco de dados
include("../ConectaBanco.php");
//inicia no metodo post as variaveis do bd
if (isset($_POST['questoes_show_do_milhao'])) {
    $pergunta = $_POST['pergunta'];
    $alternativa_a = $_POST['alternativa_a'];
    $alternativa_b = $_POST['alternativa_b'];
    $alternativa_c = $_POST['alternativa_c'];
    $alternativa_d = $_POST['alternativa_d'];
    $correta = $_POST['correta'];
    $dificuldade = $_POST['dificuldade'];
    $categoria = $_POST['categoria'];

    //verifica se todos os campos foram preenchidos
    if (empty($pergunta) || empty($alternativa_a) || empty($alternativa_b) || empty($alternativa_c) || empty($alternativa_d) || empty($correta) || empty($dificuldade) || empty($categoria)) {
        //aparece somente a msg de erro e a opção de voltar para a tela de cadastro
        include "../mensagens/campos_devem_preenchidos.php";
        exit;
    }
    //insere no banco de dados
    $sql = "INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES('$pergunta','$alternativa_a','$alternativa_b','$alternativa_c','$alternativa_d','$correta','$dificuldade','$categoria')";

    //verifica se inserção e conexão com o banco de dados deu certo    
    if (!$conexao->query($sql)) {
        die("Houve um erro: " . mysqli_error($bd->$conexao));
    } else {
        //aparece somente a msg de sucesso e a opção de ir para a tela inicial do jogo
        include "../mensagens/cadastro_sucesso.php";
        exit;
    }
}
?>
<!--HTML-->

<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
</head>
<?php
include "../index_cabecalho.php";
?>
<div class="wrapper">
    <div id="inserir_quest">
        <h1>Insira uma nova pergunta no Banco de Dados</h1>
        <br>
        <form action="./insere_questao.php" method="post" id="form_inserir_quest">
            <p> Pergunta: * <input name="pergunta" type="text" placeholder="Qual a pergunta?"></p>
            <p>Dificuldade: *
                <select name="dificuldade">
                    <option value="">Selecione o Nível de Dificuldade: *</option>
                    <option value="fácil">Fácil</option>
                    <option value="médio">Médio</option>
                    <option value="difícil">Difícil</option>
                </select>
            </p>
            <p>Categoria: *
                <select name="categoria">
                    <option value="arte">Arte</option>
                    <option value="ciencia">Ciência</option>
                    <option value="literatura">Literatura</option>
                    <option value="politica">Política</option>
                    <option value="geografia">Geografia</option>
                    <option value="musica">Música</option>
                    <option value="biologia">Biologia</option>
                    <option value="jogos">Jogos</option>
                    <option value="tecnologia">Tecnologia</option>
                    <option value="matematica">Matemática</option>
                    <option value="cultura">Cultura</option>
                    <option value="historia">História</option>
                    <option value="astronomia">Astronomia</option>
                    <option value="fisica">Física</option>
                    <option value="quimica">Química</option>
                    <option value="filosofia">Filosofia</option>
                    <option value="esportes">Esportes</option>
                    <option value="conhecimentos-gerais">Conhecimentos Gerais</option>
                </select>
            </p>
            <p>Alternativa A: * <input name="alternativa_a" type="text"></p>
            <p>Alternativa B: * <input name="alternativa_b" type="text"></p>
            <p>Alternativa C: * <input name="alternativa_c" type="text"></p>
            <p>Alternativa D: * <input name="alternativa_d" type="text"></p>
            <p>Correta: *
                <select name="correta">
                    <option value="">Selecione a Alternativa Correta</option>
                    <option value="A">Alternativa A</option>
                    <option value="B">Alternativa B</option>
                    <option value="C">Alternativa C</option>
                    <option value="D">Alternativa D</option>
                </select>
            </p>

            <input type="submit" name="questoes_show_do_milhao" value="Cadastrar" id="BotaoCadastrar">
        </form>
    </div>
    <a href='../inicio_jogo.php' id="BotaoJogo">Ir para o Jogo</a>
</div>

</body>

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

    #inserir_quest {
        color: #FFD700;
        display: flex;
        align-items: center;
        padding: 50px;
        justify-content: center;
        flex-direction: column;
        margin-top: 100px;
        background-color: #141414;
        box-shadow: 1px 2px 15px rgba(255, 215, 0, 0.3);
        width: 40%;
        border-radius: 10px;
    }

    #inserir_quest form {
        margin-top: 15px;
        gap: 10px;
    }

    #inserir_quest p {
        padding: 5px;
        font-size: 18px;
    }

    #inserir_quest select {
        padding: 5px;
        margin-left: 8px;
        border-radius: 10px;
        border: solid 1px #705f00;
    }

    #inserir_quest input {
        padding: 5px;
        width: 250px;
        margin-left: 8px;
        border-radius: 10px;
        border: solid 1px #705f00;
    }

    #BotaoCadastrar {
        background-color: #FFD700;
        border: solid 1px #705f00;
        padding: 10px;
        height: 40px;
        border-radius: 10px;
        cursor: pointer;
        margin-top: 15px;
        display: block;
        font-size: 15px;
    }

    #BotaoJogo {
        background-color: #FFD700;
        border: solid 1px #705f00;
        color: #111;
        text-decoration: none;
        text-align: center;
        padding: 10px 40px 10px 40px;
        margin: 50px;
        border-radius: 10px;
        font-size: 15px;
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