# README - Jogo "Show do Milhão"

Este projeto consiste no desenvolvimento de uma aplicação web inspirada no popular programa de perguntas e respostas **"Show do Milhão"**.  
O objetivo é criar uma experiência interativa onde os usuários podem testar seus conhecimentos em diversas categorias e níveis de dificuldade.

---

## Sobre o Projeto

Este trabalho foi desenvolvido como parte da **Disciplina: Programação Web**, sob a orientação do **Professor Diogo Trevisan**, da Universidade Estadual de Mato Grosso do Sul (UEMS).

**Alunas:**
- Amanda Salvino da Costa (RGM: 49900)  
- Irvna Maria Costa Soares (RGM: 49115)

---

## Funcionalidades

### 1. Cadastro de Perguntas e Respostas
O projeto possui uma interface de administração que permite cadastrar novas perguntas, informando:
- **Pergunta**
- **Resposta correta**
- **Três alternativas incorretas**
- **Nível de dificuldade** (Fácil, Médio, Difícil ou Topa Tudo)
- **Categoria** (20 categorias predefinidas como Geografia, Ciência, Arte, História, etc.)

### 2. Modo de Jogo "Show do Milhão"
- **Início do jogo**: acesso rápido e sem necessidade de login.
- **Jogar por categoria**: é possível jogar cem uma categoria especifica.
- **Sorteio das questões**: perguntas são sorteadas aleatoriamente de acordo com a dificuldade:
  - Questões 1 a 5 → **Fácil**
  - Questões 6 a 10 → **Médio**
  - Questões 11 a 15 → **Difícil**
  - Questão 16 (opcional) → **Topa Tudo ou Nada**
- **Pontuação**: baseada no número da questão, definido no arquivo questoes_valores.
- **Ajuda ao jogador**:  
  - **Cartas**: elimina alternativas incorretas, 0 a 3 alternativas, sorteadas aleatóriamente (máximo de uso 1x).  
  - **Pulos**: permite pular perguntas sem penalidade (máximo de uso 3x).  
- **Persistência de sessão**: mantém progresso, perguntas já respondidas e pontuação.

### 3. Ranking e Fim de Jogo
- Exibição do resultado final.
---



## Banco de Dados (BD.sql)

O arquivo **BD.sql** contém as instruções para criação do banco e inserção das questões iniciais.

### Questões Inseridas:
- **Fácil:** 
- **Médio:**  
- **Difícil:**  
- **Topa Tudo:** 

## Tecnologias Utilizadas
- **PHP**
- **MySQL**
- **HTML5 / CSS3**
- **JavaScript (auxiliar)**
- **XAMPP (ambiente de desenvolvimento)**


