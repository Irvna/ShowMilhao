/*  Disciplina: Programação Web
    Atividade 1
    Alunas(rgm): Amanda Salvino da Costa (49900) e Irvna Maria Costa Soares (49115)
    Professor: Diogo Trevisan
*/

-- Banco de Dados para o Show do Milhão
-- 300 questões (100 fáceis, 100 médias, 100 difíceis)

-- Criação da tabela de questões com os atributos necessários
CREATE TABLE questoes_show_do_milhao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pergunta VARCHAR(255) NOT NULL,
    alternativa_a VARCHAR(100) NOT NULL,
    alternativa_b VARCHAR(100) NOT NULL,
    alternativa_c VARCHAR(100) NOT NULL,
    alternativa_d VARCHAR(100) NOT NULL,
    correta CHAR(1) NOT NULL,
    dificuldade VARCHAR(10) NOT NULL,
    categoria VARCHAR(50) NOT NULL
);

-- Questões Fáceis de Arte
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem pintou a obra "Guernica"?', 'Pablo Picasso', 'Leonardo da Vinci', 'Michelangelo', 'Van Gogh', 'A', 'fácil', 'Arte'),
('Qual cor é obtida misturando azul e amarelo?', 'Verde', 'Roxo', 'Laranja', 'Marrom', 'A', 'fácil', 'Arte'),
('Qual instrumento é conhecido como “rei dos instrumentos”?', 'Piano', 'Violão', 'Bateria', 'Flauta', 'A', 'fácil', 'Arte'),
('Qual movimento artístico é associado a Salvador Dalí?', 'Surrealismo', 'Impressionismo', 'Cubismo', 'Expressionismo', 'A', 'fácil', 'Arte'),
('Qual artista é famoso por pintar girassóis?', 'Vincent van Gogh', 'Claude Monet', 'Edvard Munch', 'Henri Matisse', 'A', 'fácil', 'Arte');

-- Questões Fáceis de Ciência
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual planeta é conhecido como o Planeta Vermelho?', 'Marte', 'Júpiter', 'Saturno', 'Vênus', 'A', 'fácil', 'Ciência'),
('Qual estado da matéria tem forma e volume definidos?', 'Sólido', 'Líquido', 'Gasoso', 'Plasma', 'A', 'fácil', 'Ciência'),
('O que a fotossíntese produz?', 'Oxigênio', 'Dióxido de carbono', 'Nitrogênio', 'Hélio', 'A', 'fácil', 'Ciência'),
('Qual é o símbolo químico da água?', 'H2O', 'CO2', 'O2', 'NaCl', 'A', 'fácil', 'Ciência'),
('Qual instrumento é usado para observar estrelas?', 'Telescópio', 'Microscópio', 'Estetoscópio', 'Barômetro', 'A', 'fácil', 'Ciência');

-- Questões Fáceis de História
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem foi o primeiro presidente do Brasil?', 'Getúlio Vargas', 'Juscelino Kubitschek', 'Deodoro da Fonseca', 'Jair Bolsonaro', 'C', 'fácil', 'História'),
('Em que ano o Brasil foi descoberto?', '1500', '1600', '1700', '1800', 'A', 'fácil', 'História'),
('Qual foi a primeira civilização conhecida?', 'Egípcia', 'Romana', 'Grega', 'Mesopotâmica', 'D', 'fácil', 'História'),
('Quem foi o líder da Revolução Francesa?', 'Napoleão Bonaparte', 'Robespierre', 'Luis XVI', 'Joana d’Arc', 'B', 'fácil', 'História'),
('Em que ano terminou a Segunda Guerra Mundial?', '1945', '1939', '1918', '1960', 'A', 'fácil', 'História');

-- Questões Fáceis de Literatura
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem escreveu "Dom Casmurro"?', 'Machado de Assis', 'José de Alencar', 'Carlos Drummond', 'Manuel Bandeira', 'A', 'fácil', 'Literatura'),
('Qual personagem é criado por Monteiro Lobato?', 'Emília', 'Cuca', 'Saci', 'Curupira', 'A', 'fácil', 'Literatura'),
('Qual autor escreveu "O Pequeno Príncipe"?', 'Antoine de Saint-Exupéry', 'Júlio Verne', 'Victor Hugo', 'Charles Dickens', 'A', 'fácil', 'Literatura'),
('Quem é o autor de "Romeu e Julieta"?', 'William Shakespeare', 'Machado de Assis', 'Cecília Meireles', 'Fernando Pessoa', 'A', 'fácil', 'Literatura'),
('Qual é a profissão de Gregor Samsa em "A Metamorfose" de Kafka?', 'Vendedor', 'Professor', 'Advogado', 'Jornalista', 'A', 'fácil', 'Literatura');

-- Questões Fáceis de Política
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quantos poderes existem na República?', '2', '3', '4', '5', 'B', 'fácil', 'Política'),
('Quem é o chefe do Executivo no Brasil?', 'Presidente', 'Senador', 'Governador', 'Prefeito', 'A', 'fácil', 'Política'),
('O que significa a sigla ONU?', 'Organização das Nações Unidas', 'Ordem Nacional Unida', 'Organização Nacional Única', 'Ordem das Nações Unidas', 'A', 'fácil', 'Política'),
('Quantos anos dura o mandato presidencial no Brasil?', '4 anos', '5 anos', '6 anos', '3 anos', 'A', 'fácil', 'Política'),
('Qual o nome do atual sistema político brasileiro?', 'Monarquia', 'República', 'Ditadura', 'Império', 'B', 'fácil', 'Política');

-- Questões Fáceis de Geografia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o maior país do mundo em extensão?', 'Brasil', 'China', 'Rússia', 'Estados Unidos', 'C', 'fácil', 'Geografia'),
('Qual é o maior oceano do planeta?', 'Atlântico', 'Índico', 'Pacífico', 'Ártico', 'C', 'fácil', 'Geografia'),
('Qual é a capital do Brasil?', 'São Paulo', 'Rio de Janeiro', 'Brasília', 'Salvador', 'C', 'fácil', 'Geografia'),
('Qual continente é conhecido como “Velho Mundo”?', 'América', 'África', 'Europa', 'Oceania', 'C', 'fácil', 'Geografia'),
('Qual país é famoso pela Torre Eiffel?', 'Itália', 'Espanha', 'França', 'Alemanha', 'C', 'fácil', 'Geografia');

-- Questões Fáceis de Música
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual instrumento é tocado com baquetas?', 'Violão', 'Bateria', 'Piano', 'Flauta', 'B', 'fácil', 'Música'),
('Quem é conhecido como "Rei do Pop"?', 'Elvis Presley', 'Michael Jackson', 'Freddie Mercury', 'Prince', 'B', 'fácil', 'Música'),
('Qual destas é uma nota musical?', 'Do', 'Si', 'Fa', 'Todas as anteriores', 'D', 'fácil', 'Música'),
('Qual gênero musical é típico do Brasil?', 'Samba', 'Country', 'Jazz', 'Blues', 'A', 'fácil', 'Música'),
('Quantas cordas tem um violão tradicional?', '4', '5', '6', '7', 'C', 'fácil', 'Música');

-- Questões Fáceis de Biologia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o órgão responsável pela respiração?', 'Coração', 'Fígado', 'Pulmão', 'Rim', 'C', 'fácil', 'Biologia'),
('O que as plantas produzem durante a fotossíntese?', 'Oxigênio', 'Dióxido de carbono', 'Água', 'Nitrogênio', 'A', 'fácil', 'Biologia'),
('Qual é o maior órgão do corpo humano?', 'Cérebro', 'Fígado', 'Pele', 'Coração', 'C', 'fácil', 'Biologia'),
('Quantos dentes tem um adulto normalmente?', '20', '28', '32', '36', 'C', 'fácil', 'Biologia'),
('Qual destes é um animal vertebrado?', 'Cobra', 'Aranha', 'Formiga', 'Pulga', 'A', 'fácil', 'Biologia');

-- Questões Fáceis de Jogos
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quantas peças tem um jogo de xadrez?', '16', '24', '32', '40', 'C', 'fácil', 'Jogos'),
('Qual é o objetivo do jogo “Dominó”?', 'Formar sequências', 'Formar pares', 'Formar trincas', 'Formar grupos', 'A', 'fácil', 'Jogos'),
('Em qual jogo se usa dados?', 'Xadrez', 'Dominó', 'Banco Imobiliário', 'Dama', 'C', 'fácil', 'Jogos'),
('Quantos jogadores há em um time de futebol?', '7', '9', '11', '13', 'C', 'fácil', 'Jogos'),
('Qual destes jogos é jogado com cartas?', 'Dama', 'Pôquer', 'Xadrez', 'Dominó', 'B', 'fácil', 'Jogos');

-- Questões Fáceis de Tecnologia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual dessas é uma linguagem de programação?', 'HTML', 'Python', 'Microsoft', 'Google', 'B', 'fácil', 'Tecnologia'),
('O que significa “CPU”?', 'Central Processing Unit', 'Computer Personal Unit', 'Central Programming Unit', 'Computer Processing Unit', 'A', 'fácil', 'Tecnologia'),
('Qual dispositivo é usado para armazenar dados?', 'Monitor', 'Teclado', 'HD', 'Impressora', 'C', 'fácil', 'Tecnologia'),
('O que é um “software”?', 'Equipamento físico', 'Programa de computador', 'Sistema operacional', 'Rede de internet', 'B', 'fácil', 'Tecnologia'),
('Qual empresa criou o sistema operacional Windows?', 'Apple', 'Google', 'Microsoft', 'IBM', 'C', 'fácil', 'Tecnologia');

-- Questões Fáceis de Matemática
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quanto é 2 + 2?', '3', '4', '5', '6', 'B', 'fácil', 'Matemática'),
('Qual é o resultado de 10 dividido por 2?', '2', '3', '4', '5', 'D', 'fácil', 'Matemática'),
('Quantos lados tem um triângulo?', '2', '3', '4', '5', 'B', 'fácil', 'Matemática'),
('O que representa o número zero?', 'Nada', 'Início', 'Valor nulo', 'Todas as anteriores', 'D', 'fácil', 'Matemática'),
('Qual é a forma de um círculo?', 'Quadrado', 'Triângulo', 'Oval', 'Redondo', 'D', 'fácil', 'Matemática');

-- Questões Fáceis de Cultura
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o idioma oficial do Brasil?', 'Espanhol', 'Inglês', 'Português', 'Francês', 'C', 'fácil', 'Cultura'),
('Em qual país se originou o sushi?', 'China', 'Japão', 'Coreia do Sul', 'Tailândia', 'B', 'fácil', 'Cultura'),
('Qual dessas é uma festa tradicional brasileira?', 'Carnaval', 'Thanksgiving', 'Halloween', 'Dia de Ação de Graças', 'A', 'fácil', 'Cultura'),
('Qual é a bebida típica da Alemanha?', 'Sake', 'Vinho', 'Cerveja', 'Tequila', 'C', 'fácil', 'Cultura'),
('Qual dessas danças é típica da Argentina?', 'Samba', 'Tango', 'Salsa', 'Flamenco', 'B', 'fácil', 'Cultura');

-- Questões Fáceis de Astronomia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o planeta mais próximo do Sol?', 'Terra', 'Mercúrio', 'Vênus', 'Marte', 'B', 'fácil', 'Astronomia'),
('Qual é o maior planeta do sistema solar?', 'Saturno', 'Júpiter', 'Netuno', 'Marte', 'B', 'fácil', 'Astronomia'),
('Qual é a estrela mais próxima da Terra?', 'Sol', 'Sirius', 'Alfa Centauri', 'Vega', 'A', 'fácil', 'Astronomia'),
('Qual planeta é conhecido como planeta vermelho?', 'Júpiter', 'Marte', 'Saturno', 'Terra', 'B', 'fácil', 'Astronomia'),
('Quantos planetas tem o sistema solar?', '7', '8', '9', '10', 'B', 'fácil', 'Astronomia');

-- Questões Fáceis de Física
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('O que mede um termômetro?', 'Pressão', 'Temperatura', 'Velocidade', 'Massa', 'B', 'fácil', 'Física'),
('Qual é a unidade de força no SI?', 'Newton', 'Joule', 'Watt', 'Pascal', 'A', 'fácil', 'Física'),
('O que é eletricidade?', 'Fluxo de elétrons', 'Fluxo de prótons', 'Fluxo de nêutrons', 'Fluxo de átomos', 'A', 'fácil', 'Física'),
('Qual destas é uma forma de energia?', 'Luz', 'Som', 'Calor', 'Todas as anteriores', 'D', 'fácil', 'Física'),
('O que é gravidade?', 'Força de repulsão', 'Força de atração', 'Velocidade', 'Massa', 'B', 'fácil', 'Física');

-- Questões Fáceis de Química
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o símbolo químico da água?', 'H2O', 'O2', 'CO2', 'HO', 'A', 'fácil', 'Química'),
('Qual é o elemento químico mais abundante no universo?', 'Oxigênio', 'Hidrogênio', 'Carbono', 'Nitrogênio', 'B', 'fácil', 'Química'),
('Qual gás respiramos para viver?', 'Oxigênio', 'Nitrogênio', 'Dióxido de carbono', 'Hélio', 'A', 'fácil', 'Química'),
('Qual é o pH da água pura?', '7', '0', '14', '10', 'A', 'fácil', 'Química'),
('O que significa Na na tabela periódica?', 'Nitrogênio', 'Nióbio', 'Sódio', 'Neônio', 'C', 'fácil', 'Química');

-- Questões Fáceis de Literatura
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem escreveu "Dom Casmurro"?', 'José de Alencar', 'Machado de Assis', 'Carlos Drummond de Andrade', 'Graciliano Ramos', 'B', 'fácil', 'Literatura'),
('Qual é a nacionalidade de Gabriel García Márquez?', 'Colombiana', 'Mexicana', 'Argentina', 'Peruana', 'A', 'fácil', 'Literatura'),
('Qual destes é um poeta brasileiro?', 'Fernando Pessoa', 'Carlos Drummond de Andrade', 'Pablo Neruda', 'Mario Vargas Llosa', 'B', 'fácil', 'Literatura'),
('Qual obra é conhecida como um clássico da literatura infantil?', 'O Pequeno Príncipe', 'Dom Quixote', 'O Senhor dos Anéis', '1984', 'A', 'fácil', 'Literatura'),
('Quem escreveu "Romeu e Julieta"?', 'William Shakespeare', 'Charles Dickens', 'Jane Austen', 'Mark Twain', 'A', 'fácil', 'Literatura');

-- Questões Fáceis de Filosofia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem é considerado o pai da filosofia ocidental?', 'Sócrates', 'Platão', 'Aristóteles', 'Descartes', 'A', 'fácil', 'Filosofia'),
('Qual conceito filosófico está ligado a “penso, logo existo”?', 'Existencialismo', 'Racionalismo', 'Empirismo', 'Ceticismo', 'B', 'fácil', 'Filosofia'),
('Quem escreveu “A República”?', 'Aristóteles', 'Platão', 'Sócrates', 'Descartes', 'B', 'fácil', 'Filosofia'),
('Qual filósofo foi discípulo de Sócrates?', 'Descartes', 'Platão', 'Nietzsche', 'Kant', 'B', 'fácil', 'Filosofia'),
('O que é ética?', 'Estudo da moral', 'Estudo da ciência', 'Estudo da arte', 'Estudo da história', 'A', 'fácil', 'Filosofia');

-- Questões Fáceis de Esportes
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quantos jogadores há em um time de futebol?', '9', '10', '11', '12', 'C', 'fácil', 'Esportes'),
('Qual país ganhou a Copa do Mundo de 2018?', 'Alemanha', 'França', 'Brasil', 'Argentina', 'B', 'fácil', 'Esportes'),
('Em qual esporte se usa uma raquete e uma peteca?', 'Tênis', 'Badminton', 'Tênis de Mesa', 'Squash', 'B', 'fácil', 'Esportes'),
('Qual desses esportes é jogado na água?', 'Basquete', 'Natação', 'Futebol', 'Handebol', 'B', 'fácil', 'Esportes'),
('Quem é conhecido como “Pelé”?', 'Ator', 'Jogador de futebol', 'Cantor', 'Cientista', 'B', 'fácil', 'Esportes');

-- Questões Fáceis de Conhecimentos Gerais
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quantos dias tem um ano?', '360', '365', '366', '400', 'B', 'fácil', 'Conhecimentos Gerais'),
('Qual é a cor do céu em um dia claro?', 'Azul', 'Verde', 'Vermelho', 'Amarelo', 'A', 'fácil', 'Conhecimentos Gerais'),
('Quantos continentes existem?', '5', '6', '7', '8', 'C', 'fácil', 'Conhecimentos Gerais'),
('Qual animal é conhecido como "rei da selva"?', 'Leão', 'Elefante', 'Tigre', 'Urso', 'A', 'fácil', 'Conhecimentos Gerais'),
('Qual é a capital da França?', 'Londres', 'Berlim', 'Paris', 'Roma', 'C', 'fácil', 'Conhecimentos Gerais');

-- -------------------------------------------------------------------------------------------------------

-- Questões Médias de Arte
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual movimento artístico é caracterizado pelo uso de formas geométricas e cores vibrantes?', 'Cubismo', 'Barroco', 'Romantismo', 'Realismo', 'A', 'média', 'Arte'),
('Quem pintou "A Persistência da Memória"?', 'Salvador Dalí', 'Pablo Picasso', 'Claude Monet', 'Vincent van Gogh', 'A', 'média', 'Arte'),
('Qual artista é conhecido pelo movimento impressionista?', 'Claude Monet', 'Michelangelo', 'Rembrandt', 'Picasso', 'A', 'média', 'Arte'),
('Qual técnica artística utiliza pequenas manchas de tinta para formar imagens?', 'Pontilhismo', 'Fresco', 'Gravura', 'Marouflage', 'A', 'média', 'Arte'),
('Em qual país surgiu o movimento Renascimento?', 'Itália', 'França', 'Espanha', 'Alemanha', 'A', 'média', 'Arte');

-- Questões Médias de Ciência
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é a unidade básica da vida?', 'Célula', 'Molécula', 'Átomo', 'Tecido', 'A', 'média', 'Ciência'),
('O que determina a cor da chama na combustão?', 'Temperatura', 'Combustível', 'Oxigênio', 'Pressão', 'A', 'média', 'Ciência'),
('Qual a função principal dos ribossomos?', 'Produção de proteínas', 'Armazenamento de energia', 'Digestão celular', 'Divisão celular', 'A', 'média', 'Ciência'),
('Qual a teoria que explica a origem do universo?', 'Big Bang', 'Evolução', 'Gravitação Universal', 'Relatividade', 'A', 'média', 'Ciência'),
('Qual a partícula subatômica sem carga elétrica?', 'Nêutron', 'Próton', 'Elétron', 'Fóton', 'A', 'média', 'Ciência');

-- Questões Médias de História
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Em que ano começou a Primeira Guerra Mundial?', '1914', '1918', '1939', '1945', 'A', 'média', 'História'),
('Quem foi o imperador do Brasil durante o Segundo Reinado?', 'Dom Pedro II', 'Dom Pedro I', 'Getúlio Vargas', 'Juscelino Kubitschek', 'A', 'média', 'História'),
('Qual tratado pôs fim à Guerra dos Cem Anos?', 'Tratado de Troyes', 'Tratado de Versalhes', 'Paz de Westfália', 'Tratado de Tordesilhas', 'A', 'média', 'História'),
('Qual civilização construiu as pirâmides de Gizé?', 'Egípcia', 'Mesopotâmica', 'Maya', 'Inca', 'A', 'média', 'História'),
('Quem liderou a independência da Índia?', 'Mahatma Gandhi', 'Nelson Mandela', 'Simón Bolívar', 'Che Guevara', 'A', 'média', 'História');

-- Questões Médias de Literatura
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem é o autor do livro "Cem Anos de Solidão"?', 'Gabriel García Márquez', 'Mario Vargas Llosa', 'Pablo Neruda', 'Jorge Luis Borges', 'A', 'média', 'Literatura'),
('Qual o gênero literário do livro "Dom Quixote"?', 'Romance', 'Poesia', 'Teatro', 'Ensaio', 'A', 'média', 'Literatura'),
('Em qual obra aparece o personagem Sherlock Holmes?', 'Um Estudo em Vermelho', 'O Morro dos Ventos Uivantes', 'Orgulho e Preconceito', 'A Metamorfose', 'A', 'média', 'Literatura'),
('Quem escreveu "A Divina Comédia"?', 'Dante Alighieri', 'William Shakespeare', 'Homero', 'Goethe', 'A', 'média', 'Literatura'),
('Qual é o tema central de "O Grande Gatsby"?', 'O sonho americano', 'A Revolução Francesa', 'A guerra civil', 'O colonialismo', 'A', 'média', 'Literatura');

-- Questões Médias de Política
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quantos membros tem o Conselho de Segurança da ONU?', '10', '15', '20', '25', 'B', 'média', 'Política'),
('Qual é o sistema político dos Estados Unidos?', 'Monarquia', 'República Federal', 'Ditadura', 'Parlamento', 'B', 'média', 'Política'),
('Quem é o chefe de governo no sistema parlamentarista?', 'Presidente', 'Primeiro-Ministro', 'Senador', 'Governador', 'B', 'média', 'Política'),
('Qual documento americano foi assinado em 1776?', 'Declaração de Independência', 'Constituição', 'Bill of Rights', 'Emenda 13', 'A', 'média', 'Política'),
('Qual a função do Poder Legislativo?', 'Fazer leis', 'Executar leis', 'Julgar leis', 'Fiscalizar leis', 'A', 'média', 'Política');

-- Questões Médias de Geografia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o maior deserto quente do mundo?', 'Saara', 'Gobi', 'Kalahari', 'Atacama', 'A', 'média', 'Geografia'),
('Qual é o rio mais extenso do mundo?', 'Nilo', 'Amazonas', 'Yangtzé', 'Mississipi', 'B', 'média', 'Geografia'),
('Qual país tem a maior população do mundo?', 'Índia', 'Estados Unidos', 'China', 'Indonésia', 'C', 'média', 'Geografia'),
('Qual é o ponto mais alto da Terra?', 'Monte Everest', 'K2', 'Mont Blanc', 'Denali', 'A', 'média', 'Geografia'),
('Qual oceano banha a costa leste dos Estados Unidos?', 'Atlântico', 'Pacífico', 'Índico', 'Ártico', 'A', 'média', 'Geografia');

-- Questões Médias de Música
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem é conhecido como o “Rei do Rock”?', 'Elvis Presley', 'Michael Jackson', 'Freddie Mercury', 'Chuck Berry', 'A', 'média', 'Música'),
('Qual instrumento tem 88 teclas?', 'Piano', 'Órgão', 'Violino', 'Guitarra', 'A', 'média', 'Música'),
('Qual estilo musical é característico do jazz?', 'Improvisação', 'Samba', 'Pop', 'Reggae', 'A', 'média', 'Música'),
('Quem compôs a Nona Sinfonia?', 'Beethoven', 'Mozart', 'Chopin', 'Bach', 'A', 'média', 'Música'),
('Qual gênero musical tem raízes na Jamaica?', 'Reggae', 'Rock', 'Blues', 'Folk', 'A', 'média', 'Música');

-- Questões Médias de Biologia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual o principal componente do DNA?', 'Nucleotídeos', 'Aminoácidos', 'Lipídios', 'Carboidratos', 'A', 'média', 'Biologia'),
('Qual órgão é responsável pela produção de insulina?', 'Pâncreas', 'Fígado', 'Rim', 'Estômago', 'A', 'média', 'Biologia'),
('Qual a função dos glóbulos vermelhos?', 'Transporte de oxigênio', 'Combate a infecções', 'Produção de hormônios', 'Armazenamento de nutrientes', 'A', 'média', 'Biologia'),
('Qual o nome do processo pelo qual as plantas produzem energia?', 'Fotossíntese', 'Respiração', 'Fermentação', 'Transpiração', 'A', 'média', 'Biologia'),
('Qual tecido conecta os músculos aos ossos?', 'Tendão', 'Ligamento', 'Cartilagem', 'Epitélio', 'A', 'média', 'Biologia');

-- Questões Médias de Jogos
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o objetivo do jogo “Banco Imobiliário”?', 'Comprar propriedades', 'Capturar o rei', 'Formar pares', 'Resolver enigmas', 'A', 'média', 'Jogos'),
('Em xadrez, qual peça pode se mover em qualquer direção quantas casas quiser?', 'Rainha', 'Torre', 'Bispo', 'Cavalo', 'A', 'média', 'Jogos'),
('Qual o nome do jogo clássico onde se derruba blocos coloridos?', 'Tetris', 'Pac-Man', 'Mario Bros', 'Zelda', 'A', 'média', 'Jogos'),
('Quantos pontos vale um touchdown no futebol americano?', '6', '3', '7', '5', 'A', 'média', 'Jogos'),
('Qual jogo é conhecido por ter um personagem chamado “Link”?', 'The Legend of Zelda', 'Super Mario', 'Final Fantasy', 'Metroid', 'A', 'média', 'Jogos');

-- Questões Médias de Tecnologia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('O que significa “RAM”?', 'Random Access Memory', 'Readily Available Memory', 'Run Access Mode', 'Random Automated Memory', 'A', 'média', 'Tecnologia'),
('Qual protocolo é usado para transferência de arquivos na internet?', 'FTP', 'HTTP', 'SMTP', 'DNS', 'A', 'média', 'Tecnologia'),
('O que é um sistema operacional?', 'Software que gerencia hardware', 'Programa de edição de texto', 'Aplicativo de redes sociais', 'Hardware do computador', 'A', 'média', 'Tecnologia'),
('Qual é o principal componente de um processador?', 'Unidade Central de Processamento', 'Memória RAM', 'Placa de vídeo', 'Fonte de alimentação', 'A', 'média', 'Tecnologia'),
('O que faz um firewall?', 'Protege contra acessos não autorizados', 'Aumenta a velocidade da internet', 'Armazena dados', 'Gerencia aplicativos', 'A', 'média', 'Tecnologia');

-- Questões Médias de Matemática
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o valor de π (pi) aproximado?', '3,14', '2,71', '1,61', '1,41', 'A', 'média', 'Matemática'),
('Quantos lados tem um pentágono?', '5', '6', '7', '8', 'A', 'média', 'Matemática'),
('Qual é o resultado de 12 × 12?', '144', '124', '154', '134', 'A', 'média', 'Matemática'),
('O que é um número primo?', 'Número divisível apenas por 1 e ele mesmo', 'Número par', 'Número negativo', 'Número decimal', 'A', 'média', 'Matemática'),
('Qual é a fórmula da área do círculo?', 'π × raio²', '2 × π × raio', 'π × diâmetro', 'raio × altura', 'A', 'média', 'Matemática');

-- Questões Médias de Cultura
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o país de origem da dança flamenco?', 'Espanha', 'Itália', 'Portugal', 'Brasil', 'A', 'média', 'Cultura'),
('Qual festa tradicional celebra o Ano Novo Chinês?', 'Festival da Primavera', 'Carnaval', 'Diwali', 'Hanukkah', 'A', 'média', 'Cultura'),
('Qual idioma tem mais falantes nativos no mundo?', 'Mandarim', 'Inglês', 'Espanhol', 'Hindi', 'A', 'média', 'Cultura'),
('Qual é o estilo arquitetônico da Catedral de Notre-Dame?', 'Gótico', 'Barroco', 'Renascimento', 'Romântico', 'A', 'média', 'Cultura'),
('Em qual continente fica a cultura maia?', 'América Central', 'África', 'Ásia', 'Europa', 'A', 'média', 'Cultura');

-- Questões Médias de Astronomia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual planeta tem mais luas no sistema solar?', 'Júpiter', 'Saturno', 'Marte', 'Netuno', 'A', 'média', 'Astronomia'),
('Qual a temperatura aproximada da superfície do Sol?', '5500°C', '1500°C', '8000°C', '3000°C', 'A', 'média', 'Astronomia'),
('Qual a distância média da Terra à Lua?', '384.400 km', '150.000 km', '1.000.000 km', '500.000 km', 'A', 'média', 'Astronomia'),
('O que é uma supernova?', 'Explosão de uma estrela', 'Formação de um planeta', 'Colisão de asteroides', 'Efeito de maré', 'A', 'média', 'Astronomia'),
('Quem propôs a teoria heliocêntrica?', 'Copérnico', 'Galileu', 'Kepler', 'Newton', 'A', 'média', 'Astronomia');

-- Questões Médias de Física
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem formulou a Lei da Gravitação Universal?', 'Newton', 'Einstein', 'Galileu', 'Tesla', 'A', 'média', 'Física'),
('O que é a velocidade da luz no vácuo?', '300.000 km/s', '150.000 km/s', '100.000 km/s', '1.000 km/s', 'A', 'média', 'Física'),
('O que é energia cinética?', 'Energia do movimento', 'Energia armazenada', 'Energia térmica', 'Energia potencial', 'A', 'média', 'Física'),
('Qual a unidade de medida de carga elétrica?', 'Coulomb', 'Watt', 'Newton', 'Volt', 'A', 'média', 'Física'),
('O que representa a segunda lei de Newton?', 'F = m × a', 'E = mc²', 'P = m × v', 'T = F × d', 'A', 'média', 'Física');

-- Questões Médias de Química
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o número atômico do carbono?', '6', '12', '14', '8', 'A', 'média', 'Química'),
('Qual tipo de ligação química ocorre entre íons?', 'Iônica', 'Covalente', 'Metálica', 'Van der Waals', 'A', 'média', 'Química'),
('O que é um ácido segundo a teoria de Arrhenius?', 'Doa prótons', 'Recebe elétrons', 'Doa elétrons', 'Recebe prótons', 'A', 'média', 'Química'),
('Qual é a fórmula química do ácido sulfúrico?', 'H2SO4', 'HCl', 'NaOH', 'CO2', 'A', 'média', 'Química'),
('O que é catalisador?', 'Substância que acelera uma reação', 'Substância que retarda uma reação', 'Produto da reação', 'Reagente da reação', 'A', 'média', 'Química');

-- Questões Médias de Computação
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('O que significa “CPU”?', 'Central Processing Unit', 'Computer Personal Unit', 'Central Program Unit', 'Computer Processing Unit', 'A', 'média', 'Computação'),
('Qual estrutura de dados funciona como FIFO?', 'Fila', 'Pilha', 'Lista', 'Árvore', 'A', 'média', 'Computação'),
('O que é um algoritmo?', 'Conjunto de instruções', 'Programa de computador', 'Linguagem de programação', 'Erro de sistema', 'A', 'média', 'Computação'),
('Qual linguagem de programação é usada para desenvolvimento web?', 'JavaScript', 'C++', 'Fortran', 'COBOL', 'A', 'média', 'Computação'),
('O que é uma variável?', 'Espaço para armazenar dados', 'Erro de compilação', 'Função matemática', 'Processo de execução', 'A', 'média', 'Computação');

-- Questões Médias de Esportes
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quantos jogadores existem em um time de basquete?', '5', '6', '7', '8', 'A', 'média', 'Esportes'),
('Quem ganhou a Copa do Mundo FIFA de 2014?', 'Brasil', 'Alemanha', 'Argentina', 'Espanha', 'B', 'média', 'Esportes'),
('Qual esporte é conhecido como “o rei dos esportes”?', 'Futebol', 'Basquete', 'Tênis', 'Natação', 'A', 'média', 'Esportes'),
('Qual é o tempo oficial de uma partida de futebol?', '90 minutos', '60 minutos', '120 minutos', '45 minutos', 'A', 'média', 'Esportes'),
('Quem detém o recorde mundial dos 100 metros rasos?', 'Usain Bolt', 'Carl Lewis', 'Justin Gatlin', 'Tyson Gay', 'A', 'média', 'Esportes');

-- Questões Médias de Conhecimentos Gerais
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é a capital da Austrália?', 'Sydney', 'Melbourne', 'Canberra', 'Brisbane', 'C', 'média', 'Conhecimentos Gerais'),
('Qual é o maior país da África?', 'Nigéria', 'Egito', 'Argélia', 'Sudão', 'C', 'média', 'Conhecimentos Gerais'),
('Quem inventou a lâmpada elétrica?', 'Nikola Tesla', 'Thomas Edison', 'Alexander Graham Bell', 'Benjamin Franklin', 'B', 'média', 'Conhecimentos Gerais'),
('Qual é o idioma oficial da ONU?', 'Inglês', 'Francês', 'Inglês e Francês', 'Espanhol', 'C', 'média', 'Conhecimentos Gerais'),
('Qual é a principal fonte de energia do planeta?', 'Petróleo', 'Carvão', 'Sol', 'Vento', 'C', 'média', 'Conhecimentos Gerais');

-- Questões Médias de Filosofia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem é considerado o pai da filosofia ocidental?', 'Sócrates', 'Platão', 'Aristóteles', 'Parmênides', 'A', 'média', 'Filosofia'),
('Qual filósofo escreveu “A República”?', 'Sócrates', 'Platão', 'Aristóteles', 'Epicuro', 'B', 'média', 'Filosofia'),
('Qual era a principal preocupação dos sofistas na Grécia Antiga?', 'Retórica', 'Matemática', 'Ciência', 'Arte', 'A', 'média', 'Filosofia'),
('Segundo Aristóteles, qual é o objetivo final da vida humana?', 'Prazer', 'Riqueza', 'Virtude', 'Eudaimonia', 'D', 'média', 'Filosofia'),
('Quem escreveu “Assim Falou Zaratustra”?', 'Nietzsche', 'Kant', 'Hegel', 'Schopenhauer', 'A', 'média', 'Filosofia');

-- -------------------------------------------------------------------------------------------------------

-- Questões Difíceis de Arte
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual pintor é autor da obra "O Jardim das Delícias Terrenas"?', 'Hieronymus Bosch', 'Pieter Bruegel', 'Caravaggio', 'Jan van Eyck', 'A', 'difícil', 'Arte'),
('Quem desenvolveu a técnica do fresco renascentista na Capela Sistina?', 'Michelangelo', 'Leonardo da Vinci', 'Rafael', 'Donatello', 'A', 'difícil', 'Arte'),
('Qual movimento artístico é associado a Jackson Pollock?', 'Expressionismo Abstrato', 'Surrealismo', 'Cubismo', 'Impressionismo', 'A', 'difícil', 'Arte'),
('Que artista é autor de "Les Demoiselles d\'''Avignon"?', 'Pablo Picasso', 'Henri Matisse', 'Georges Braque', 'Paul Cézanne', 'A', 'difícil', 'Arte'),
('Em que país nasceu o movimento Bauhaus?', 'Alemanha', 'França', 'Itália', 'Reino Unido', 'A', 'difícil', 'Arte');

-- Questões Difíceis de Ciência
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem propôs originalmente a ideia do Big Bang (modelo do universo em expansão)?', 'Georges Lemaître', 'Albert Einstein', 'Edwin Hubble', 'Stephen Hawking', 'A', 'difícil', 'Ciência'),
('Qual partícula foi experimentalmente identificada no LHC em 2012?', 'Bóson de Higgs', 'Gráviton', 'Bóson W', 'Quark Top', 'A', 'difícil', 'Ciência'),
('Qual constante física representa a menor ação quântica (constante de Planck)?', '6,626×10⁻³⁴ J·s', '3,00×10⁸ m/s', '9,81 m/s²', '1,60×10⁻¹⁹ C', 'A', 'difícil', 'Ciência'),
('Quem formulou as equações de Maxwell que descrevem o eletromagnetismo?', 'James Clerk Maxwell', 'Michael Faraday', 'André-Marie Ampère', 'Heinrich Hertz', 'A', 'difícil', 'Ciência'),
('Qual técnica permitiu decifrar a estrutura do DNA por difração de raios X?', 'Difração de raios X', 'Microscopia eletrônica', 'Espectrometria de massas', 'Cromatografia', 'A', 'difícil', 'Ciência');

-- Questões Difíceis de História
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Em que ano ocorreu a Queda de Constantinopla?', '1453', '1492', '1415', '1431', 'A', 'difícil', 'História'),
('Qual tratado consolidou o fim das Guerras Napoleônicas e redesenhou a Europa (1815)?', 'Congresso de Viena', 'Tratado de Versalhes', 'Paz de Westfália', 'Tratado de Utrecht', 'A', 'difícil', 'História'),
('Quem foi o líder da independência do Haiti?', 'Toussaint Louverture', 'Simón Bolívar', 'Jean-Jacques Dessalines', 'Henri Christophe', 'A', 'difícil', 'História'),
('Qual imperador romano promoveu a Pax Romana iniciada no século I a.C.?', 'Augusto', 'Nero', 'Trajano', 'César', 'A', 'difícil', 'História'),
('Em que ano teve início a Revolução Francesa (tomada da Bastilha)?', '1789', '1776', '1799', '1804', 'A', 'difícil', 'História');

-- Questões Difíceis de Literatura
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem escreveu "Ulisses", romance modernista publicado em 1922?', 'James Joyce', 'T. S. Eliot', 'Virginia Woolf', 'Marcel Proust', 'A', 'difícil', 'Literatura'),
('Qual escritor português é autor de "Os Lusíadas"?', 'Luís de Camões', 'Fernando Pessoa', 'Eça de Queirós', 'Antero de Quental', 'A', 'difícil', 'Literatura'),
('Quem escreveu "O Processo" (Der Process)?', 'Franz Kafka', 'Thomas Mann', 'Herman Hesse', 'Bertolt Brecht', 'A', 'difícil', 'Literatura'),
('Em que língua foi originalmente escrito "Cem Anos de Solidão"?', 'Espanhol', 'Português', 'Inglês', 'Francês', 'A', 'difícil', 'Literatura'),
('Qual autor é associado ao realismo social russo e escreveu "Crime e Castigo"?', 'Fiódor Dostoiévski', 'Leo Tolstói', 'Anton Tchekhov', 'Nikolai Gogol', 'A', 'difícil', 'Literatura');

-- Questões Difíceis de Política
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quantos membros permanentes existem no Conselho de Segurança da ONU?', '5', '7', '10', '15', 'A', 'difícil', 'Política'),
('Quem formulou a obra "O Príncipe", manual de realpolitik no Renascimento?', 'Nicolau Maquiavel', 'Thomas Hobbes', 'John Locke', 'Jean-Jacques Rousseau', 'A', 'difícil', 'Política'),
('Qual sistema de governo tem chefe de Estado hereditário e chefe de governo distinto?', 'Monarquia constitucional', 'República presidencialista', 'Ditadura militar', 'República parlamentarista', 'A', 'difícil', 'Política'),
('Em que ano foi promulgada a atual Constituição Federal do Brasil?', '1988', '1985', '1990', '1992', 'A', 'difícil', 'Política'),
('Qual é a função primordial do Poder Judiciário?', 'Interpretar e aplicar a lei', 'Criar leis', 'Executar políticas públicas', 'Gerir finanças públicas', 'A', 'difícil', 'Política');

-- Questões Difíceis de Geografia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é a maior bacia hidrográfica do mundo em volume de água?', 'Amazonas', 'Nilo', 'Yangtzé', 'Mississippi', 'A', 'difícil', 'Geografia'),
('Qual é o ponto mais alto da Terra acima do nível do mar?', 'Monte Everest', 'K2', 'Kangchenjunga', 'Lhotse', 'A', 'difícil', 'Geografia'),
('Qual país possui maior número de fusos horários (incluindo territórios)?', 'França', 'Rússia', 'Estados Unidos', 'China', 'A', 'difícil', 'Geografia'),
('Qual deserto é considerado o maior deserto quente contínuo do mundo?', 'Saara', 'Gobi', 'Atacama', 'Kalahari', 'A', 'difícil', 'Geografia'),
('Qual é o maior arquipélago em extensão territorial e número de ilhas?', 'Indonésia', 'Filipinas', 'Japão', 'Canadá', 'A', 'difícil', 'Geografia');

-- Questões Difíceis de Música
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem compôs a "Quinta Sinfonia"?', 'Ludwig van Beethoven', 'Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Franz Schubert', 'A', 'difícil', 'Música'),
('Qual compositor é autor da ópera "La Traviata"?', 'Giuseppe Verdi', 'Giacomo Puccini', 'Wolfgang Amadeus Mozart', 'Richard Wagner', 'A', 'difícil', 'Música'),
('Que instrumento é característico da música barroca e frequentemente usado como continuo?', 'Cravo', 'Clarinete', 'Saxofone', 'Trompete', 'A', 'difícil', 'Música'),
('Quem é conhecido como o "Pai do Jazz"?', 'Louis Armstrong', 'Duke Ellington', 'Charlie Parker', 'Miles Davis', 'A', 'difícil', 'Música'),
('Qual escala é típica do jazz e do blues, com notas "blue notes"?', 'Escala pentatônica menor', 'Escala diatônica maior', 'Escala cromática', 'Escala hexatônica', 'A', 'difícil', 'Música');

-- Questões Difíceis de Biologia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual processo celular reduz o número de cromossomos à metade, produzindo gametas?', 'Meiose', 'Mitose', 'Fissão binária', 'Endomitose', 'A', 'difícil', 'Biologia'),
('Qual organela vegetal é responsável pela fotossíntese?', 'Cloroplasto', 'Mitocôndria', 'Lisossomo', 'Peroxissoma', 'A', 'difícil', 'Biologia'),
('Qual molécula carrega a informação genética codificada em bases nitrogenadas?', 'DNA', 'RNA', 'Proteína', 'Lípido', 'A', 'difícil', 'Biologia'),
('Qual é o maior filo do reino Animal em número de espécies descritas?', 'Arthropoda', 'Mollusca', 'Chordata', 'Annelida', 'A', 'difícil', 'Biologia'),
('Que tipo de simbiose beneficia ambas as espécies envolvidas?', 'Mutualismo', 'Comensalismo', 'Parasitismo', 'Competição', 'A', 'difícil', 'Biologia');

-- Questões Difíceis de Conhecimentos Gerais
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual cidade é conhecida como a "Cidade Luz"?', 'Paris', 'Londres', 'Nova York', 'Roma', 'A', 'difícil', 'Conhecimentos Gerais'),
('Quem foi o primeiro homem a pisar na Lua?', 'Neil Armstrong', 'Buzz Aldrin', 'Michael Collins', 'Yuri Gagarin', 'A', 'difícil', 'Conhecimentos Gerais'),
('Qual é o maior órgão do corpo humano?', 'Pele', 'Fígado', 'Cérebro', 'Coração', 'A', 'difícil', 'Conhecimentos Gerais'),
('Qual é a capital do Canadá?', 'Toronto', 'Vancouver', 'Ottawa', 'Montreal', 'C', 'difícil', 'Conhecimentos Gerais'),
('Qual invenção é atribuída a Johannes Gutenberg no século XV?', 'Imprensa de tipos móveis', 'Bússola', 'Pólvora', 'Relógio mecânico', 'A', 'difícil', 'Conhecimentos Gerais');

-- Questões Difíceis de Jogos
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o objetivo tradicional do jogo de Go?', 'Controlar mais território', 'Capturar peças', 'Fazer sequências', 'Acumular pontos', 'A', 'difícil', 'Jogos'),
('Quantas peças iniciais tem cada jogador no xadrez padrão?', '16', '12', '20', '8', 'A', 'difícil', 'Jogos'),
('Qual é o tabuleiro usado no jogo de Damas internacional?', '10x10', '8x8', '12x12', '6x6', 'A', 'difícil', 'Jogos'),
('Quem venceu mais títulos mundiais de xadrez clássicos até 2020 (graças ao reinado moderno)?', 'Magnus Carlsen', 'Garry Kasparov', 'Anatoly Karpov', 'Vladimir Kramnik', 'A', 'difícil', 'Jogos'),
('Qual jogo eletrônico é conhecido por popularizar o gênero battle royale?', 'PlayerUnknown\'''s Battlegrounds (PUBG)', 'Fortnite', 'Call of Duty', 'Apex Legends', 'A', 'difícil', 'Jogos');

-- Questões Difíceis de Tecnologia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual algoritmo é usado para busca em grafos que encontra o caminho mais curto com heurística?', 'A*', 'Dijkstra', 'Bellman-Ford', 'Prim', 'A', 'difícil', 'Tecnologia'),
('O que significa "HTTP" na web?', 'HyperText Transfer Protocol', 'Hyperlink Transfer Tool Protocol', 'High Transfer Text Protocol', 'Hyper Transfer Text Process', 'A', 'difícil', 'Tecnologia'),
('Qual empresa desenvolveu o kernel Linux originalmente?', 'Linus Torvalds (comunidade)', 'Microsoft', 'Apple', 'IBM', 'A', 'difícil', 'Tecnologia'),
('O que é virtualização em computação?', 'Execução de múltiplos sistemas em uma mesma máquina física', 'Codificação de vídeos', 'Criptografia de dados', 'Transferência de arquivos', 'A', 'difícil', 'Tecnologia'),
('Qual arquitetura é comumente usada para sites escaláveis: monolítica ou microserviços?', 'Microserviços', 'Monolítica', 'Peer-to-peer', 'Cliente-servidor', 'A', 'difícil', 'Tecnologia');

-- Questões Difíceis de Matemática
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é a conjectura famosa não resolvida sobre distribuição dos números primos?', 'Hipótese de Riemann', 'Último Teorema de Fermat', 'Conjectura de Goldbach', 'Teorema de Fermat', 'A', 'difícil', 'Matemática'),
('Qual é o valor aproximado da constante de Euler (e)?', '2,718', '3,141', '1,618', '0,577', 'A', 'difícil', 'Matemática'),
('Quem provou o Último Teorema de Fermat em 1994?', 'Andrew Wiles', 'Paul Erdős', 'Terence Tao', 'Grigori Perelman', 'A', 'difícil', 'Matemática'),
('Qual ramo da matemática estuda espaços e transformações diferenciáveis?', 'Geometria Diferencial', 'Álgebra Linear', 'Teoria dos Números', 'Combinatória', 'A', 'difícil', 'Matemática'),
('Qual é o determinante de uma matriz identidade n×n?', '1', '0', 'n', '-1', 'A', 'difícil', 'Matemática');

-- Questões Difíceis de Entretenimento
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem dirigiu a trilogia original "O Poderoso Chefão"?', 'Francis Ford Coppola', 'Martin Scorsese', 'Steven Spielberg', 'Brian De Palma', 'A', 'difícil', 'Entretenimento'),
('Qual filme ganhou o Oscar de Melhor Filme em 1994?', 'Forrest Gump', 'Pulp Fiction', 'O Rei Leão', 'Quatro Casamentos e um Funeral', 'A', 'difícil', 'Entretenimento'),
('Quem compôs a trilha sonora de "Star Wars"?', 'John Williams', 'Hans Zimmer', 'Danny Elfman', 'Howard Shore', 'A', 'difícil', 'Entretenimento'),
('Qual série popular foi criada por David Benioff e D. B. Weiss?', 'Game of Thrones', 'The Witcher', 'Westworld', 'Vikings', 'A', 'difícil', 'Entretenimento'),
('Qual filme foi o primeiro a cruzar US$1 bilhão em bilheteria mundial?', 'Titanic', 'Avatar', 'Jurassic Park', 'O Senhor dos Anéis: O Retorno do Rei', 'A', 'difícil', 'Entretenimento');

-- Questões Difíceis de Física
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual equação relaciona energia e massa de forma famosa?', 'E = mc²', 'F = ma', 'pV = nRT', 'E = hv', 'A', 'difícil', 'Física'),
('Quem formulou a teoria da relatividade geral?', 'Albert Einstein', 'Isaac Newton', 'Niels Bohr', 'Max Planck', 'A', 'difícil', 'Física'),
('Qual é a unidade SI de carga elétrica?', 'Coulomb', 'Ampère', 'Volt', 'Ohm', 'A', 'difícil', 'Física'),
('O que descreve a mecânica quântica em nível fundamental?', 'Função de onda e operador Hamiltoniano', 'Leis de Newton', 'Equações de Maxwell', 'Teoria da Evolução', 'A', 'difícil', 'Física'),
('Qual fenômeno explica a propagação da luz como onda e partícula?', 'Dualidade onda-partícula', 'Efeito Doppler', 'Refração', 'Difração', 'A', 'difícil', 'Física');

-- Questões Difíceis de Filosofia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quem escreveu "Crítica da Razão Pura"?', 'Immanuel Kant', 'David Hume', 'G. W. F. Hegel', 'Arthur Schopenhauer', 'A', 'difícil', 'Filosofia'),
('Qual corrente filosófica enfatiza a existência precedendo a essência?', 'Existencialismo', 'Racionalismo', 'Empirismo', 'Estoicismo', 'A', 'difícil', 'Filosofia'),
('Quem é autor de "Assim Falou Zaratustra"?', 'Friedrich Nietzsche', 'Karl Marx', 'Jean-Paul Sartre', 'Simone de Beauvoir', 'A', 'difícil', 'Filosofia'),
('Qual filósofo desenvolveu a teoria das ideias (forms)?', 'Platão', 'Aristóteles', 'Sócrates', 'Epicuro', 'A', 'difícil', 'Filosofia'),
('O que defendem os empiristas clássicos?', 'Conhecimento oriundo da experiência', 'Conhecimento inato', 'Conhecimento divino', 'Conhecimento racionalista', 'A', 'difícil', 'Filosofia');

-- Questões Difíceis de Química
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o número atômico do carbono?', '6', '12', '14', '8', 'A', 'difícil', 'Química'),
('Qual tipo de ligação envolve compartilhamento de elétrons entre átomos?', 'Covalente', 'Iônica', 'Metálica', 'Van der Waals', 'A', 'difícil', 'Química'),
('Qual é a fórmula do ácido sulfúrico?', 'H2SO4', 'HCl', 'HNO3', 'H2CO3', 'A', 'difícil', 'Química'),
('Quem propôs a tabela periódica moderna com base na massa atômica e propriedades?', 'Dmitri Mendeleev', 'Henry Moseley', 'John Dalton', 'Antoine Lavoisier', 'A', 'difícil', 'Química'),
('Qual processo químico é utilizado para separar misturas por pontos de ebulição?', 'Destilação', 'Cromatografia', 'Filtração', 'Decantação', 'A', 'difícil', 'Química');

-- Questões Difíceis de Cultura
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual festival japonês celebra flores de cerejeira (sakura)?', 'Hanami', 'Obon', 'Setsubun', 'Tanabata', 'A', 'difícil', 'Cultura'),
('Em que país se originou a ópera? (forma clássica do teatro musical europeu)', 'Itália', 'Alemanha', 'França', 'Inglaterra', 'A', 'difícil', 'Cultura'),
('Qual movimento cultural brasileiro valorizou as tradições nacionais nos anos 1920?', 'Modernismo', 'Romantismo', 'Barroco', 'Realismo', 'A', 'difícil', 'Cultura'),
('Que idioma é oficial na província belga da Valônia?', 'Francês', 'Holandês', 'Alemão', 'Inglês', 'A', 'difícil', 'Cultura'),
('Qual é a dança tradicional associada ao flamenco?', 'Sevilhana', 'Tango', 'Samba', 'Fado', 'A', 'difícil', 'Cultura');

-- Questões Difíceis de Astronomia
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o ponto mais profundo conhecido nos oceanos da Terra (associado a estudos comparativos com a astrofísica)?', 'Fossa das Marianas', 'Fossa de Tonga', 'Fossa de Java', 'Fossa de Kermadec', 'A', 'difícil', 'Astronomia'),
('Qual planeta do sistema solar possui o maior campo magnético?', 'Júpiter', 'Saturno', 'Terra', 'Netuno', 'A', 'difícil', 'Astronomia'),
('Quem propôs o modelo heliocêntrico moderno?', 'Nicolau Copérnico', 'Ptolomeu', 'Tycho Brahe', 'Johannes Kepler', 'A', 'difícil', 'Astronomia'),
('Qual unidade é usada para medir distâncias entre galáxias?', 'Ano-luz', 'Quilômetro', 'Metro', 'Milha', 'A', 'difícil', 'Astronomia'),
('O que é uma supernova?', 'Explosão terminal de uma estrela massiva', 'Nebulosa planetária', 'Buraco negro em formação', 'Planeta em colapso', 'A', 'difícil', 'Astronomia');

-- Questões Difíceis de Computação
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual paradigma de programação enfatiza objetos com estado e comportamento?', 'Programação orientada a objetos', 'Programação funcional', 'Programação lógica', 'Programação imperativa', 'A', 'difícil', 'Computação'),
('Qual estrutura de dados opera LIFO (Last In, First Out)?', 'Pilha', 'Fila', 'Árvore', 'Grafo', 'A', 'difícil', 'Computação'),
('Qual linguagem foi criada por Dennis Ritchie e influenciou várias outras?', 'C', 'Java', 'Python', 'Ruby', 'A', 'difícil', 'Computação'),
('O que é complexidade de tempo O(n log n) típica de qual algoritmo de ordenação?', 'Merge sort / Quick sort (médio)', 'Bubble sort', 'Insertion sort', 'Selection sort', 'A', 'difícil', 'Computação'),
('Qual protocolo é usado para envio de email na internet (transferência entre servidores)?', 'SMTP', 'IMAP', 'POP3', 'HTTP', 'A', 'difícil', 'Computação');

-- Questões Difíceis de Esportes
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Quantos jogadores compõem um time de futebol em campo?', '11', '10', '12', '9', 'A', 'difícil', 'Esportes'),
('Quem detém o maior número de medalhas olímpicas na história (até 2021)?', 'Michael Phelps', 'Larisa Latynina', 'Mark Spitz', 'Usain Bolt', 'A', 'difícil', 'Esportes'),
('Qual país sediou os Jogos Olímpicos de 2016?', 'Brasil', 'China', 'Reino Unido', 'Rússia', 'A', 'difícil', 'Esportes'),
('Quantos sets vence uma partida de tênis masculina em Grand Slam no masculino?', '5', '3', '4', '2', 'A', 'difícil', 'Esportes'),
('Qual atleta é recordista mundial dos 100 m rasos (tempo reconhecido)?', 'Usain Bolt', 'Carl Lewis', 'Yohan Blake', 'Justin Gatlin', 'A', 'difícil', 'Esportes');


-- -------------------------------------------------------------------------------------------------------

-- Questões Topa Tudo para Todos os Temas
INSERT INTO questoes_show_do_milhao (pergunta, alternativa_a, alternativa_b, alternativa_c, alternativa_d, correta, dificuldade, categoria) VALUES
('Qual é o movimento artístico caracterizado pela distorção da realidade e imagens oníricas?', 'Impressionismo', 'Cubismo', 'Surrealismo', 'Expressionismo', 'C', 'topa_tudo', 'Arte'),
('Qual é o princípio fundamental da termodinâmica que afirma que a energia não pode ser criada nem destruída?', 'Conservação da energia', 'Entropia', 'Força de atrito', 'Gravidade', 'A', 'topa_tudo', 'Ciência'),
('Qual obra literária é considerada um marco do Modernismo brasileiro?', 'Grande Sertão: Veredas', 'Macunaíma', 'Memórias Póstumas de Brás Cubas', 'O Cortiço', 'B', 'topa_tudo', 'Literatura'),
('Qual é o papel do Congresso Nacional no sistema político brasileiro?', 'Executar as leis', 'Fiscalizar o Executivo e legislar', 'Julgar crimes comuns', 'Administrar estados', 'B', 'topa_tudo', 'Política'),
('Qual país possui a maior biodiversidade do planeta?', 'Brasil', 'Indonésia', 'Colômbia', 'Madagascar', 'A', 'topa_tudo', 'Geografia'),
('Qual compositor é conhecido como "Pai da Música Clássica"?', 'Mozart', 'Beethoven', 'Bach', 'Haydn', 'D', 'topa_tudo', 'Música'),
('Qual é o principal órgão do sistema nervoso central?', 'Coração', 'Pulmão', 'Cérebro', 'Fígado', 'C', 'topa_tudo', 'Biologia'),
('Qual jogo de tabuleiro clássico envolve estratégia para capturar o rei adversário?', 'Dama', 'Xadrez', 'Dominó', 'Go', 'B', 'topa_tudo', 'Jogos'),
('Qual é o principal componente de um computador responsável pelo processamento?', 'Memória RAM', 'Disco rígido', 'CPU', 'Placa-mãe', 'C', 'topa_tudo', 'Tecnologia'),
('Qual é o resultado da integral de uma função constante?', 'Zero', 'Função linear', 'Constante vezes a variável', 'Função exponencial', 'C', 'topa_tudo', 'Matemática'),
('Qual é o termo usado para designar o conjunto de tradições, crenças e hábitos de um povo?', 'Idioma', 'Cultura', 'História', 'Religião', 'B', 'topa_tudo', 'Cultura'),
('Quem foi o descobridor do Brasil?', 'Pedro Álvares Cabral', 'Cristóvão Colombo', 'Vasco da Gama', 'Fernão de Magalhães', 'A', 'topa_tudo', 'História'),
('Qual é o planeta mais próximo do Sol?', 'Vênus', 'Mercúrio', 'Terra', 'Marte', 'B', 'topa_tudo', 'Astronomia'),
('Qual é a unidade de medida da força no Sistema Internacional?', 'Joule', 'Newton', 'Pascal', 'Watt', 'B', 'topa_tudo', 'Física'),
('Qual é o elemento químico representado pelo símbolo "Fe"?', 'Ferro', 'Flúor', 'Fósforo', 'Fermio', 'A', 'topa_tudo', 'Química'),
('Quem é considerado o pai da filosofia ocidental?', 'Platão', 'Aristóteles', 'Sócrates', 'Descartes', 'C', 'topa_tudo', 'Filosofia'),
('Quantos jogadores compõem um time de futebol em campo?', '10', '11', '12', '9', 'B', 'topa_tudo', 'Esportes'),
('Quantos continentes existem no planeta Terra?', '5', '6', '7', '8', 'C', 'topa_tudo', 'Conhecimentos Gerais');