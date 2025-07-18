-----

# README - Jogo "Show do Milhão"

Este projeto consiste no desenvolvimento de uma aplicação web inspirada no popular programa de perguntas e respostas "Show do Milhão". O objetivo é criar uma experiência interativa onde os usuários podem testar seus conhecimentos em diversas categorias e níveis de dificuldade.

## Sobre o Projeto

Este trabalho foi desenvolvido como parte da **Disciplina: Programação Web**, sob a orientação do **Professor Diogo Trevisan**, da Universidade Estadual de Mato Grosso do Sul (UEMS).

**Alunas:**

  * Amanda Salvino da Costa (RGM: 49900)
  * Irvna Maria Costa Soares (RGM: 49115)

## Funcionalidades

A aplicação possui as seguintes funcionalidades principais:

### 1\. Cadastro de Perguntas e Respostas

Uma página que permite o cadastro de novas perguntas no banco de dados. Cada pergunta deve conter:

  * **Pergunta:** O texto da questão.
  * **Resposta Correta:** A alternativa correta para a pergunta.
  * **Outras Opções (3 campos):** Três alternativas incorretas.
  * **Dificuldade:** Classificação da pergunta em **Fácil**, **Média** ou **Difícil**.
  * **Categoria:** Permite agrupar perguntas por tema, 22 temas foram préviamente selecionados. A lista a baixo possui os tipos de categorias permitidas:
      Geografia
      Ciência
      Biologia
      Entretenimento
      Conheciment os Gerais
      Economia
      Esportes
      Música
      Cultura
      Matemática
      Português
      Arte
      História
      Literatura
      Política
      Jogos
      Tecnologia
      Filosofia
      Física
      Química
      Astronomia
      Computação
  

### 2\. Jogabilidade "Show do Milhão"

    * **Início do Jogo:*** Ao acessar a aplicação, o usuário pode clicar em "Começar o Jogo" para iniciar a partida (não é necessário login).
    * **Sorteio de Perguntas:*** As perguntas são sorteadas do banco de dados de forma aleatória conforme a dificuldade. A progressão segue:
    **Perguntas 1 a 5** → nível Fácil
    **Perguntas 6 a 10** → nível Médio
    **Perguntas 11 a 15** → nível Difícil
    * **Pontuação:***
    **Acerto:** Se o jogador acertar, ele ganha pontos crescentes conforme o nível da pergunta e avança para a próxima.
    **Erro:** Se o jogador errar, perde metade da pontuação acumulada e o jogo é encerrado.
    * **Objetivo do Jogo:*** Acertar as 15 perguntas e atingir a maior pontuação possível, como no programa original.
    * **Persistência de Dados:*** Os dados da partida (questões já sorteadas, pontuação e progresso) são mantidos em variáveis de sessão para garantir o controle da rodada.

### 3\. Ajudas (Desafio para Nota Máxima)

Para atingir a nota máxima, foram implementadas (ou há previsão para implementar) as seguintes ajudas, inspiradas no jogo original:

  * **Cartas:** Elimina de 0 a 3 respostas erradas, aumentando as chances do jogador.
  * **Pulos:** Permite não responder uma pergunta e sortear uma nova, sem penalidade.
  * **Jogo por Categoria:** Possibilidade de selecionar uma categoria específica de perguntas para jogar.

-----

## Arquivos do Projeto

Os principais arquivos que compõem a aplicação são:

  * **`insere_questao.php`**: Formulário PHP para inserir novas questões no banco de dados.
  * **`novo_jogo.php`**: Inicia uma nova partida do jogo.
  * **`processa_resposta.php`**: Lida com a submissão das respostas do jogador, verifica a correção e atualiza a pontuação.
  * **`sorteia_questao.php`**: Responsável por sortear a próxima pergunta de acordo com o nível de dificuldade e o progresso do jogador.
  * **`./imagens/`**: Pasta contendo os recursos visuais da aplicação.
  * **`style.css`**: Folha de estilos CSS para a apresentação visual da aplicação.

-----