<?php
    include("../ConectaBanco.php");

    if( isset($_POST['questoes_show_do_milhao'])){
        $pergunta = $_POST['pergunta'];
        $alternativa_a = $_POST['alternativa_a'];
        $alternativa_b = $_POST['alternativa_b'];
        $alternativa_c = $_POST['alternativa_c'];
        $alternativa_d = $_POST['alternativa_d'];
        $correta      = $_POST['correta'];
        $dificuldade  = $_POST['dificuldade'];
        $categoria    = $_POST['categoria'];

        //verifica se todos os campos foram preenchidos
        if (empty($pergunta) || empty($alternativa_a) || empty($alternativa_b) || empty($alternativa_c) || empty($alternativa_d) || empty($correta) || empty($dificuldade) || empty($categoria)) {
            //die("Todos os campos devem ser preenchidos.");
            include "../mensagens/campos_devem_preenchidos.php";
            exit;
        }

        $sql = "INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES('$pergunta','$alternativa_a','$alternativa_b','$alternativa_c','$alternativa_d','$correta','$dificuldade','$categoria')";
        
            
        if(!$conexao->query($sql)){
            die("Houve um erro: " .mysqli_error($bd->con));
        }else{
            //echo "Cadastro de questão realizado com sucesso! <a href='novo_jogo.php'>Ir para o Jogo</a></br>";
            include "../mensagens/cadastro_sucesso.php";
            echo "<script>document.getElementById('form_inserir_quest').reset();</script>";
        }               
    }
?>

<head>
    <link rel="icon" href="img/2.png" type="imagex/x-icon">
    <title>Show do Milhão</title>
    <link rel="stylesheet" href="../css/style_inserir.css">
</head>
    <?php
        include "../index_cabecalho.php";
    ?>
    <div class="wrapper">
        <div id="inserir_quest">
            <h1>Insira uma nova pergunta no Banco de Dados</h1>
            <br>
            <form action="./questao/insere_questao.php" method="post" id="form_inserir_quest">
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
                            <option value="">Selecione a Categoria: *</option> 
                            <option value="geografia">Geografia</option> 
                            <option value="ciencia">Ciência</option> 
                            <option value="biologia">Biologia</option> 
                            <option value="entretenimento">Entretenimento</option> 
                            <option value="conhecimentos-gerais">Conhecimentos Gerais</option> 
                            <option value="economia">Economia</option> 
                            <option value="esportes">Esportes</option> 
                            <option value="musica">Música</option> 
                            <option value="cultura">Cultura</option> 
                            <option value="matematica">Matemática</option> 
                            <option value="portugues">Português</option> 
                            <option value="arte">Arte</option> 
                            <option value="historia">História</option> 
                            <option value="literatura">Literatura</option> 
                            <option value="politica">Política</option> 
                            <option value="jogos">Jogos</option> 
                            <option value="tecnologia">Tecnologia</option> 
                            <option value="filosofia">Filosofia</option> 
                            <option value="fisica">Física</option> 
                            <option value="quimica">Química</option> 
                            <option value="astronomia">Astronomia</option> 
                            <option value="computacao">Computação</option> 
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